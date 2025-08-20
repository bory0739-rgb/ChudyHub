




local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "GameLoader"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0, 20, 0.5, -95)
frame.BackgroundColor3 = Color3.fromRGB(85, 0, 127)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Name = "GuiFrame"
frame.Parent = gui

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 25)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Steal a Brainrot Gui"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Font = Enum.Font.SourceSansBold
title.Parent = frame

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- ===== GLOBAL CONFIGURATION =====
local ESP_SETTINGS = {
    Enabled = true,  -- Start disabled
    ToggleKey = Enum.KeyCode.N,
    
    -- Hitbox settings
    HeadSize = 3,
    HitboxTransparency = 0.5,
    HitboxColor = BrickColor.new("Bright red"),
    HitboxMaterial = "Glass",
    
    -- NameTag settings
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    MaxDistance = 1000,
    ShowDistance = true,
    YOffset = 2.5
}

local originalProperties = {}
local hitboxVisuals = {}

local function updateHitboxes()
    if not ESP_SETTINGS.Enabled then return end
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            pcall(function()
                local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
                if rootPart then
                    -- Store original properties if not already stored
                    if not originalProperties[player] then
                        originalProperties[player] = {
                            Size = rootPart.Size,
                            Transparency = rootPart.Transparency,
                            BrickColor = rootPart.BrickColor,
                            Material = rootPart.Material
                        }
                    end
                    
                    -- Apply hitbox properties
                    rootPart.Size = Vector3.new(ESP_SETTINGS.HeadSize, ESP_SETTINGS.HeadSize, ESP_SETTINGS.HeadSize)
                    rootPart.Transparency = ESP_SETTINGS.HitboxTransparency
                    rootPart.BrickColor = ESP_SETTINGS.HitboxColor
                    rootPart.Material = ESP_SETTINGS.HitboxMaterial
                    rootPart.CanCollide = false
                    
                    -- Add visual if not already present
                    if not hitboxVisuals[player] then
                        local box = Instance.new("BoxHandleAdornment")
                        box.Name = "HitboxVisual"
                        box.Adornee = rootPart
                        box.AlwaysOnTop = true
                        box.Size = rootPart.Size
                        box.Transparency = ESP_SETTINGS.HitboxTransparency
                        box.Color3 = ESP_SETTINGS.HitboxColor.Color
                        box.ZIndex = 10
                        box.Parent = rootPart
                        hitboxVisuals[player] = box
                    end
                end
            end)
        end
    end
end

local function restoreOriginalProperties()
    for player, properties in pairs(originalProperties) do
        if player and player.Character then
            local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                for prop, value in pairs(properties) do
                    pcall(function()
                        if prop == "Size" then
                            rootPart.Size = value
                        elseif prop == "Transparency" then
                            rootPart.Transparency = value
                        elseif prop == "BrickColor" then
                            rootPart.BrickColor = value
                        elseif prop == "Material" then
                            rootPart.Material = value
                        end
                    end)
                end
            end
        end
    end
    
    -- Clean up visuals
    for player, visual in pairs(hitboxVisuals) do
        if visual then
            visual:Destroy()
        end
    end
    hitboxVisuals = {}
end

-- ===== NAMETAG SYSTEM =====
local nameTags = {}

local function createDrawingText()
    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true
    text.OutlineColor = Color3.new(0, 0, 0)
    text.Color = ESP_SETTINGS.TextColor
    text.Size = ESP_SETTINGS.TextSize
    return text
end

local function updateNameTag(player)
    if not ESP_SETTINGS.Enabled or not nameTags[player] then 
        if nameTags[player] then
            nameTags[player].Text.Visible = false
        end
        return 
    end
    
    local data = nameTags[player]
    if not data.Character or not data.Character.Parent then
        data.Text.Visible = false
        return
    end

    local head = data.Character:FindFirstChild("Head")
    if not head then
        data.Text.Visible = false
        return
    end

    -- Calculate position and visibility
    local headPos = head.Position + Vector3.new(0, ESP_SETTINGS.YOffset, 0)
    local screenPos, onScreen = Camera:WorldToViewportPoint(headPos)
    local distance = (Camera.CFrame.Position - headPos).Magnitude
    local inRange = distance <= ESP_SETTINGS.MaxDistance

    data.Text.Visible = onScreen and inRange and ESP_SETTINGS.Enabled

    if data.Text.Visible then
        -- Update text content
        local displayText = player.Name
        if ESP_SETTINGS.ShowDistance then
            displayText = string.format("%s [%d]", player.Name, math.floor(distance))
        end
        data.Text.Text = displayText
        
        -- Update position
        data.Text.Position = Vector2.new(screenPos.X, screenPos.Y)
    end
end

local function trackPlayer(player)
    if player == LocalPlayer or nameTags[player] then return end

    local text = createDrawingText()
    local data = {
        Text = text,
        Connection = nil,
        Character = nil
    }
    nameTags[player] = data

    local function onCharacterAdded(character)
        if data.Connection then
            data.Connection:Disconnect()
        end
        
        data.Character = character
        data.Connection = RunService.RenderStepped:Connect(function()
            updateNameTag(player)
        end)
        
        -- Immediate first update
        updateNameTag(player)
    end

    local function cleanup()
        if data.Connection then
            data.Connection:Disconnect()
            data.Connection = nil
        end
        if text then
            text:Remove()
        end
        nameTags[player] = nil
    end

    -- Set up event listeners
    player.CharacterAdded:Connect(onCharacterAdded)
    player.CharacterRemoving:Connect(cleanup)
    player.AncestryChanged:Connect(function(_, parent)
        if parent == nil then cleanup() end
    end)

    -- Handle existing character
    if player.Character then
        onCharacterAdded(player.Character)
    end
end

local function cleanupNameTags()
    for player, data in pairs(nameTags) do
        if data.Connection then
            data.Connection:Disconnect()
        end
        if data.Text then
            data.Text:Remove()
        end
    end
    nameTags = {}
end

local function toggleESP()
    ESP_SETTINGS.Enabled = not ESP_SETTINGS.Enabled

if ESP_SETTINGS.Enabled then
        -- Enable systems
        for _, player in ipairs(Players:GetPlayers()) do
            trackPlayer(player)
        end
    else
        -- Disable systems
        restoreOriginalProperties()
        cleanupNameTags()
    end
end

local function initialize()
toggleESP()

for _, player in ipairs(Players:GetPlayers()) do
        trackPlayer(player)
    end
    
    -- Track new players
    Players.PlayerAdded:Connect(trackPlayer)

end




local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -180, 0, 30)
    button.Position = UDim2.new(0, 20, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.Text = "Players ESP (OFF)"
    button.TextColor3 = Color3.fromRGB(240, 240, 240)
    button.TextSize = 18
    button.Font = Enum.Font.SourceSansBold
    button.AutoButtonColor = false
    button.Parent = frame

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0, 10)

local PlayerESP = true

button.MouseButton1Click:Connect(function()

PlayerESP = not PlayerESP -- Toggle the state

  if PlayerESP then
    button.Text = "Player ESP (ON)"
button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
initialize()
  else
  button.Text = "Player ESP (OFF)" -- Update text when toggled off
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
initialize()
  end
end)
















-- end of player esp button stuff

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

-- State variable
local isMoving = false

local function FindDelivery()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return end
    for _, plot in pairs(plots:GetChildren()) do
        local sign = plot:FindFirstChild("PlotSign")
        if sign then
            local yourBase = sign:FindFirstChild("YourBase")
            if yourBase and yourBase.Enabled then
                local hitbox = plot:FindFirstChild("DeliveryHitbox")
                if hitbox then return hitbox end
            end
        end
    end
end

local function setupFlight()
    if hrp:FindFirstChild("FlightAttachment") then
        hrp.FlightAttachment:Destroy()
    end
    if hrp:FindFirstChildOfClass("LinearVelocity") then
        hrp:FindFirstChildOfClass("LinearVelocity"):Destroy()
    end

    local attachment = Instance.new("Attachment")
    attachment.Name = "FlightAttachment"
    attachment.Parent = hrp

    local lv = Instance.new("LinearVelocity")
    lv.Attachment0 = attachment
    lv.RelativeTo = Enum.ActuatorRelativeTo.World
    lv.MaxForce = math.huge
    lv.Name = "FlightVelocity"
    lv.Parent = hrp
    return lv, attachment
end

local function moveToDelivery()
    local targetHitbox = FindDelivery()
    if not targetHitbox then return end

    for _, obj in ipairs(hrp:GetChildren()) do
        if obj:IsA("LinearVelocity") or obj:IsA("Attachment") then
            obj:Destroy()
        end
    end

    local lv, attachment = setupFlight()
    local speed = 65
    
    local reached = false
    local maxTime = 8
    local startTime = tick()

    local connection
    connection = RunService.Heartbeat:Connect(function()
        if not isMoving then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            return
        end

        if not targetHitbox or not targetHitbox:IsDescendantOf(workspace) then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            reached = true
            return
        end

        local targetPos = targetHitbox.Position - Vector3.new(0, 6, 0)
        local direction = (targetPos - hrp.Position)
        local distance = direction.Magnitude

        if distance <= 0.5 then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            reached = true
            return
        end

        if tick() - startTime >= maxTime then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            reached = true
            return
        end

        local unitDir = direction.Unit
        lv.VectorVelocity = Vector3.new(unitDir.X * speed, unitDir.Y * speed, unitDir.Z * speed)
    end)

    while not reached do
        task.wait(0.12)
    end

    if not isMoving then return end

    lv, attachment = setupFlight()
    for i = 1, 12 do
        if not isMoving then break end
        speed = speed * 0.6
        local dir = (targetHitbox.Position - Vector3.new(0, 6, 0) - hrp.Position)
        if dir.Magnitude > 0 then
            dir = dir.Unit
            lv.VectorVelocity = Vector3.new(dir.X * speed, dir.Y * speed, dir.Z * speed)
        else
            lv.VectorVelocity = Vector3.zero
        end
        task.wait(0.05)
    end
    lv:Destroy()

    if not isMoving then return end

    lv, attachment = setupFlight()
    local targetY = targetHitbox.Position.Y - 6 + 2.5
    local reachedY = false
    connection = RunService.Heartbeat:Connect(function()
        if not isMoving then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            reachedY = true
            return
        end

        if hrp.Position.Y <= targetY then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            connection:Disconnect()
            reachedY = true
            return
        end
        lv.VectorVelocity = Vector3.new(0, -speed, 0)
    end)

    while not reachedY do
        task.wait(0.05)
    end

    task.delay(0.5, function()
        if attachment then attachment:Destroy() end
        isMoving = false
    end)
end

local function stopMovement()
    isMoving = false
    
    -- Stop any active flight attachments
    if hrp:FindFirstChild("FlightAttachment") then
        hrp.FlightAttachment:Destroy()
    end
    
    if hrp:FindFirstChildOfClass("LinearVelocity") then
        hrp:FindFirstChildOfClass("LinearVelocity"):Destroy()
    end
    
    -- Reset velocity
    hrp.Velocity = Vector3.zero
    
    -- Disable any active connections
    if armCheckConnection then
        armCheckConnection:Disconnect()
        armCheckConnection = nil
    end
end

local function getLaserCenter(model)
    if not model:IsA("Model") then return nil end
    local primary = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
    if not primary then return nil end
    return primary.Position
end

local function isSizeClose(partSize, targetSize, tolerance)
    return math.abs(partSize.X - targetSize.X) <= tolerance
        and math.abs(partSize.Y - targetSize.Y) <= tolerance
        and math.abs(partSize.Z - targetSize.Z) <= tolerance
end

local function getTargetForFloor(level, fromThirdFloor)
    local closestTarget, closestDistance = nil, math.huge

    for _, plot in ipairs(workspace:WaitForChild("Plots"):GetChildren()) do
        if level == 1 then
            local laserFolder = plot:FindFirstChild("Laser")
            if laserFolder then
                for _, laser in ipairs(laserFolder:GetChildren()) do
                    if laser:IsA("Model") then
                        local pos = getLaserCenter(laser)
                        if pos and pos.Y <= 8 then
                            local dist = (pos - hrp.Position).Magnitude
                            if dist < closestDistance then
                                closestDistance = dist
                                closestTarget = laser
                            end
                        end
                    end
                end
            end
        elseif level == 2 then
            if not fromThirdFloor then
                local modelFolder = plot:FindFirstChild("Model")
                local foundInitialTarget = false
                if modelFolder then
                    for _, obj in ipairs(modelFolder:GetChildren()) do
                        if obj:IsA("BasePart") and isSizeClose(obj.Size, Vector3.new(5, 1, 1), 0.01) then
                            local dist = (obj.Position - hrp.Position).Magnitude
                            if dist < 5 then
                                if dist < closestDistance then
                                    closestDistance = dist
                                    closestTarget = obj
                                    foundInitialTarget = true
                                end
                            end
                        end
                    end
                end
                if not foundInitialTarget then
                    local decorations = plot:FindFirstChild("Decorations")
                    if decorations then
                        for _, obj in ipairs(decorations:GetChildren()) do
                            if obj:IsA("BasePart") and isSizeClose(obj.Size, Vector3.new(45, 45, 2), 0.01) then
                                local posY = obj.Position.Y
                                if posY >= 8 and posY <= 9.1 then
                                    local dist = (obj.Position - hrp.Position).Magnitude
                                    if dist < closestDistance then
                                        closestDistance = dist
                                        closestTarget = obj
                                    end
                                end
                            end
                        end
                    end
                end
            else
                local decorations = plot:FindFirstChild("Decorations")
                if decorations then
                    for _, obj in ipairs(decorations:GetChildren()) do
                        if obj:IsA("BasePart") and isSizeClose(obj.Size, Vector3.new(17, 10, 2), 0.01) then
                            local dist = (obj.Position - hrp.Position).Magnitude
                            if dist < closestDistance then
                                closestDistance = dist
                                closestTarget = obj
                            end
                        end
                    end
                end
            end
        elseif level == 3 then
            local laserHitboxFolder = plot:FindFirstChild("LaserHitbox")
            if laserHitboxFolder then
                local thirdFloorPart = laserHitboxFolder:FindFirstChild("ThirdFloor")
                if thirdFloorPart then
                    local dist = (thirdFloorPart.Position - hrp.Position).Magnitude
                    if dist < closestDistance then
                        closestDistance = dist
                        closestTarget = thirdFloorPart
                    end
                end
            end
        end
    end
    
    return closestTarget
end

local function getTargetPosition(target)
    if target:IsA("Model") then
        return getLaserCenter(target)
    elseif target:IsA("BasePart") then
        local pos = target.Position
        if isSizeClose(target.Size, Vector3.new(17, 10, 2), 0.01) then
            local zOffset = hrp.Position.X > -410 and 5 or -5
            pos = pos + Vector3.new(0, 0, zOffset)
        end
        return pos
    else
        return nil
    end
end

local function moveUntil(conditionFunc, directionFunc, callback)
    local speed = 67
    local conn
    conn = RunService.Heartbeat:Connect(function()
        if not isMoving then
            hrp.Velocity = Vector3.zero
            conn:Disconnect()
            return
        end

        if conditionFunc() then
            hrp.Velocity = Vector3.zero
            conn:Disconnect()
            if callback then callback() end
        else
            local dir = directionFunc()
            if dir.Magnitude > 0 then
                dir = dir.Unit
                hrp.Velocity = Vector3.new(dir.X * speed, hrp.Velocity.Y, dir.Z * speed)
            else
                hrp.Velocity = Vector3.zero
            end
        end
    end)
end

local function moveUntilLinear(conditionFunc, directionFunc, callback)
    local lv, attachment = setupFlight()
    local speed = 80
    local currentY = hrp.Position.Y
    local level = currentY <= 8 and 1 or (currentY <= 24 and 2 or 3)
    if level == 2 then
        speed = 50
    end
    local conn
    conn = RunService.Heartbeat:Connect(function()
        if not isMoving then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            attachment:Destroy()
            conn:Disconnect()
            return
        end

        if conditionFunc() then
            lv.VectorVelocity = Vector3.zero
            lv:Destroy()
            attachment:Destroy()
            conn:Disconnect()
            if callback then callback() end
        else
            local dir = directionFunc()
            if dir.Magnitude > 0 then
                dir = dir.Unit
                lv.VectorVelocity = Vector3.new(dir.X * speed, 0, dir.Z * speed)
            else
                lv.VectorVelocity = Vector3.zero
            end
        end
    end)
end

local function moveToTarget(target, level, fromThirdFloor)
    local pos = getTargetPosition(target)
    if not pos then
        isMoving = false
        return
    end

    local tolerance = 0.5
    moveUntil(
        function()
            if level == 1 or (level == 2 and fromThirdFloor) then
                local charPos = hrp.Position
                local dx = math.abs(charPos.X - pos.X)
                local dz = math.abs(charPos.Z - pos.Z)
                return dx < tolerance and dz < tolerance
            elseif level == 2 then
                return (hrp.Position - pos).Magnitude < 6
            else
                return (hrp.Position - pos).Magnitude < 1
            end
        end,
        function()
            return pos - hrp.Position
        end,
        function()
            if level == 2 and not fromThirdFloor then
                local mainTarget = getTargetForFloor(2, true)
                if mainTarget then
                    moveToTarget(mainTarget, 2, true)
                else
                    isMoving = false
                end
            elseif level == 3 then
                local startY = hrp.Position.Y
                local conn
                conn = RunService.Heartbeat:Connect(function()
                    if hrp.Position.Y < startY - 1 then
                        conn:Disconnect()
                        local newTarget = getTargetForFloor(2, true)
                        if newTarget then
                            moveToTarget(newTarget, 2, true)
                        else
                            isMoving = false
                        end
                    end
                end)
            else
                moveUntilLinear(
                    function()
                        local distanceToTarget = math.abs(hrp.Position.X - (-410))
                        return distanceToTarget < 1 or distanceToTarget <= 5
                    end,
                    function()
                        return Vector3.new(hrp.Position.X > -410 and -1 or 1, 0, 0)
                    end,
                    function()
                        moveToDelivery()
                    end
                )
            end
        end
    )
end

local function enableAntiHit()
    local character = player.Character or player.CharacterAdded:Wait()
    local webName = "Web Slinger"
    local remote = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Net"):WaitForChild("RE/UseItem")
    local buyRemote = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Net"):WaitForChild("RF/CoinsShopService/RequestBuy")

    local function getWebTool()
        for _, tool in ipairs(player.Backpack:GetChildren()) do
            if tool:IsA("Tool") and tool.Name == webName then
                return tool
            end
        end
        return nil
    end

    local function ensureWebTool()
        if not getWebTool() then
            buyRemote:InvokeServer(webName)
        end
    end

    local function equipWebSlinger()
        local currentTool = character:FindFirstChildOfClass("Tool")
        if currentTool and currentTool.Name ~= webName then
            currentTool.Parent = player.Backpack
        end
        local tool = getWebTool()
        if tool then
            tool.Parent = character
        end
    end

    local function useWebSlinger()
        local tool = character:FindFirstChild(webName)
        if tool and tool:FindFirstChild("Handle") then
            local args = {
                vector.create(-391.2049865722656, -7.293223857879639, 124.80510711669922),
                character:WaitForChild("UpperTorso")
            }
            remote:FireServer(unpack(args))
        end
    end

   
end

local function useInvisibilityCloak()
    local cloakName = "Invisibility Cloak"
    local buyRemote = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Net"):WaitForChild("RF/CoinsShopService/RequestBuy")

    local function getCloakInBackpack()
        return player.Backpack:FindFirstChild(cloakName)
    end

    local function getCloakEquipped()
        return character:FindFirstChild(cloakName)
    end

    if not getCloakInBackpack() and not getCloakEquipped() then
        buyRemote:InvokeServer(cloakName)
        task.wait(0.5)
    end

    local cloak = getCloakInBackpack()
    if cloak then
        cloak.Parent = character
        task.wait(0.2)
    end

    cloak = getCloakEquipped()
    if cloak then
        for i = 1, 2 do
            cloak:Activate()
            task.wait(0.5)
        end
    end
end

local function checkArmRotation()
    if not character then return end
    local leftArm = character:FindFirstChild("LeftUpperArm")
    if not leftArm then return end
    
    return math.deg(leftArm.Orientation.X) > 60
end

local function startProcess()
    isMoving = true
    useInvisibilityCloak()
    enableAntiHit()

    local currentY = hrp.Position.Y
    local level = currentY <= 8 and 1 or (currentY <= 24 and 2 or 3)
    local target = getTargetForFloor(level, false)
    if target then
        moveToTarget(target, level, false)
    else
        isMoving = false
    end
end

-- Start the process automatically



local tween = false
local button = Instance.new("TextButton")
    button.Size = UDim2.new(1.1, -180, 0, 30)
    button.Position = UDim2.new(0, 10, 0, 75)
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.Text = "Tween To Base (OFF)"
    button.TextColor3 = Color3.fromRGB(240, 240, 240)
    button.TextSize = 18
    button.Font = Enum.Font.SourceSansBold
    button.AutoButtonColor = false
    button.Parent = frame

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0, 10)

button.MouseButton1Click:Connect(function()

tween = not tween -- Toggle the state

  if tween then
    button.Text = "Tween To Base(ON)"
button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

startProcess()

  else

button.Text = "Stopped Moving"
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wait(2)
  button.Text = "Tween To Base (OFF)" -- Update text when toggled off
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
stopMovement()
  end
end)


local Players           = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService  = game:GetService("UserInputService")
local RunService        = game:GetService("RunService")
local PathfindingService = game:GetService("PathfindingService")

local player     = Players.LocalPlayer
local buyRemote  = ReplicatedStorage.Packages.Net["RF/CoinsShopService/RequestBuy"]

local AnimalsModule = require(ReplicatedStorage.Datas.Animals)
local TraitsModule = require(ReplicatedStorage.Datas.Traits)
local GameModule = require(ReplicatedStorage.Shared.Game)

require(ReplicatedStorage.Controllers:WaitForChild("CharacterController"))

local charController = require(ReplicatedStorage.Controllers:WaitForChild("CharacterController"))
charController.update = function() end

local PlotController
pcall(function()
    PlotController = require(ReplicatedStorage.Controllers:WaitForChild("PlotController", 2))
end)



local checking       = false
local walkSpeed      = 40
local keys           = {}
local charConn       = nil
local infiniteJumpEnabled = false
local bypassMode     = "None"
local pathfindingEnabled = false
local pathfindingCoroutine = nil
local notifiedThresholds = {}




local espEnabled = true
local isPetScanRunning = false
local highestGenAnimal = nil
local currentTargetPlot = nil
local transparencyConnections = {}

local INTERVAL = 0.25
local ALL_ANIMAL_NAMES = {
    ["Noobini Pizzanini"] = true, ["Lirilì Larilà"] = true, ["Tim Cheese"] = true, ["Fluriflura"] = true, ["Svinina Bombardino"] = true, ["Talpa Di Fero"] = true,
    ["Pipi Kiwi"] = true, ["Trippi Troppi"] = true, ["Tung Tung Tung Sahur"] = true, ["Gangster Footera"] = true, ["Boneca Ambalabu"] = true, ["Ta Ta Ta Ta Sahur"] = true,
    ["Tric Trac Baraboom"] = true, ["Bandito Bobritto"] = true, ["Cacto Hipopotamo"] = true, ["Cappuccino Assassino"] = true, ["Brr Brr Patapim"] = true,
    ["Trulimero Trulicina"] = true, ["Bananita Dolphinita"] = true, ["Brri Brri Bicus Dicus Bombicus"] = true, ["Bambini Crostini"] = true, ["Perochello Lemonchello"] = true,
    ["Burbaloni Loliloli"] = true, ["Chimpanzini Bananini"] = true, ["Ballerina Cappuccina"] = true, ["Chef Crabracadabra"] = true, ["Glorbo Fruttodrillo"] = true,
    ["Blueberrinni Octopusini"] = true, ["Lionel Cactuseli"] = true, ["Pandaccini Bananini"] = true, ["Frigo Camelo"] = true, ["Orangutini Ananassini"] = true,
    ["Bombardiro Crocodilo"] = true, ["Bombombini Gusini"] = true, ["Rhino Toasterino"] = true, ["Cavallo Virtuoso"] = true, ["Spioniro Golubiro"] = true,
    ["Zibra Zubra Zibralini"] = true, ["Tigrilini Watermelini"] = true, ["Cocofanto Elefanto"] = true, ["Tralalero Tralala"] = true, ["Odin Din Din Dun"] = true,
    ["Girafa Celestre"] = true, ["Gattatino Nyanino"] = true, ["Trenostruzzo Turbo 3000"] = true, ["Matteo"] = true, ["Tigroligre Frutonni"] = true, ["Orcalero Orcala"] = true,
    ["Statutino Libertino"] = true, ["Gattatino Neonino"] = true, ["La Vacca Saturno Saturnita"] = true, ["Los Tralaleritos"] = true, ["Graipuss Medussi"] = true,
    ["La Grande Combinasion"] = true, ["Chimpanzini Spiderini"] = true, ["Garama and Madundung"] = true, ["Torrtuginni Dragonfrutini"] = true, ["Las Tralaleritas"] = true,
    ["Pot Hotspot"] = true , ["Mythic Lucky Block"] = true , ["Los Ocralitos"] = true, ["Brainrot God Lucky Block"] = true, ["Las Vaquitas Saturnitas"] = true,["Secret Lucky Block"] = true, ["Trippi Troppi Troppa Trippa"] = true, ["Gorillo Watermelondrillo"] = true, ["Los Crocodillitos"] = true, ["Bulbito Bandito Traktorito"] = true, ["Karkerkur Kurkur"] = true, ["Los Hotspotsitos"] = true,
}

local function getPlotFromPosition(pos)
    if typeof(pos) ~= "Vector3" then
        if pos:IsA("Model") then
            local root = pos:FindFirstChild("RootPart") or pos:FindFirstChildWhichIsA("BasePart")
            if not root then return nil end
            pos = root.Position
        elseif pos:IsA("BasePart") then
            pos = pos.Position
        else
            return nil
        end
    end

    local plotsFolder = workspace:FindFirstChild("Plots")
    if not plotsFolder then return nil end

    local closestPlot = nil
    local shortestDist = math.huge

    for _, plot in ipairs(plotsFolder:GetChildren()) do
        local podiums = plot:FindFirstChild("AnimalPodiums")
        if podiums then
            for _, podium in ipairs(podiums:GetChildren()) do
                local base = podium:FindFirstChild("Base")
                local spawn = base and base:FindFirstChild("Spawn")
                if spawn and spawn:IsA("BasePart") then
                    local dist = (spawn.Position - pos).Magnitude
                    if dist < shortestDist then
                        shortestDist = dist
                        closestPlot = plot
                    end
                end
            end
        end
    end
    return closestPlot
end

local function getMyPlot()
    local ok, result = pcall(function() return PlotController:GetMyPlot() end)
    if not ok or not result then return nil end
    local plotModel = result and result.PlotModel
    return typeof(plotModel) == "Instance" and plotModel or nil
end

local function isInEnemyPlot(model)
    local myPlot = getMyPlot()
    if not myPlot then return true end
    return not myPlot:IsAncestorOf(model)
end

local function isBasePet(m)
    return m:IsA("Model") and ALL_ANIMAL_NAMES[m.Name]
end

local function clearPetESP()
    for _, m in ipairs(workspace:GetChildren()) do
        if m:FindFirstChild("PetESP") then m.PetESP:Destroy() end
        if m:FindFirstChild("PetESP_Label") then m.PetESP_Label:Destroy() end
    end
end


local function formatNumber(n)
    return tostring(n):reverse():gsub('%d%d%d', '%1,'):reverse():gsub('^,', '')
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local AnimalsModule  = require(ReplicatedStorage.Datas.Animals)
local TraitsModule   = require(ReplicatedStorage.Datas.Traits)
local MutationsModule = require(ReplicatedStorage.Datas.Mutations)

local function getTraitMultiplier(model)
	local traitSource = model:FindFirstChild("Instance") or model
	local traitJson = traitSource:GetAttribute("Traits")
	if not traitJson then return 1 end

	local success, traitList = pcall(function()
		return HttpService:JSONDecode(traitJson)
	end)
	if not success or typeof(traitList) ~= "table" then return 1 end

	local mult = 1
	for _, traitName in ipairs(traitList) do
		local trait = TraitsModule[traitName]
		if trait and trait.MultiplierModifier then
			mult *= trait.MultiplierModifier
		end
	end
	return mult
end

local function getMutationMultiplier(model)
	local mutation = model:GetAttribute("Mutation")
	if not mutation then return 1 end

	local data = MutationsModule[mutation]
	if data and data.MultiplierModifier then
		return data.MultiplierModifier
	end
	return 1
end

local function getFinalGeneration(model)
	local animalData = AnimalsModule[model.Name]
	if not animalData then return 0 end

	local baseGen = animalData.Generation or 0
	local traitMult = getTraitMultiplier(model)
	local mutationMult = getMutationMultiplier(model)
	local total = baseGen * traitMult * mutationMult

	return math.round(total), baseGen, traitMult, mutationMult
end


local function attachPetESP(m, g)
    local root = m:FindFirstChild("RootPart") or m:FindFirstChildWhichIsA("BasePart")
    if not root then return end

    local hl = Instance.new('Highlight')
    hl.Name = "PetESP"
    hl.Adornee = m
    hl.OutlineColor = Color3.new(0, 0, 0)
    hl.FillTransparency = 0.25
    hl.OutlineTransparency = 0
    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    hl.Parent = m
    hl.FillColor = Color3.fromRGB(255, 255, 237)
    hl.OutlineColor = Color3.fromRGB(0 ,0 ,0)

    local gui = Instance.new('BillboardGui')
    gui.Name = "PetESP_Label"
    gui.Adornee = root
    gui.AlwaysOnTop = true
    gui.Size = UDim2.new(0, 400, 0, 80)
    gui.StudsOffset = Vector3.new(0, 6.5, 0)
    gui.Parent = m

    local n = Instance.new('TextLabel')
    n.Size = UDim2.new(1, 0, 0.5, 0)
    n.Position = UDim2.new(0.5, 0, 0.35, 0)
    n.AnchorPoint = Vector2.new(0.5, 0.5)
    n.BackgroundTransparency = 1
    n.Font = Enum.Font.GothamBlack
    n.TextSize = 14
    n.Text = m.Name:upper()
    n.TextXAlignment = Enum.TextXAlignment.Center
    n.Parent = gui

    local ns = Instance.new('UIStroke')
    ns.Thickness = 4.5
    ns.Color = Color3.new(0, 0, 0)
    ns.Parent = n

    local nso = Instance.new('UIStroke')
    nso.Thickness = 5.5
    nso.Color = Color3.new(1, 1, 1)
    nso.Parent = n

    local gL = Instance.new('TextLabel')
    gL.Size = UDim2.new(1, 0, 0.5, 0)
    gL.Position = UDim2.new(0.5, 0, 0.60, 0)
    gL.AnchorPoint = Vector2.new(0.5, 0.5)
    gL.BackgroundTransparency = 1
    gL.Font = Enum.Font.GothamBlack
    gL.TextSize = 14
    gL.Text = '$' .. formatNumber(g) .. '/s'
    gL.TextXAlignment = Enum.TextXAlignment.Center
    gL.Parent = gui

    local gs = Instance.new('UIStroke')
    gs.Thickness = 6
    gs.Color = Color3.new(0, 0, 0)
    gs.Parent = gL

    local gso = Instance.new('UIStroke')
    gso.Thickness = 7
    gso.Color = Color3.new(1, 1, 1)
    gso.Parent = gL

    n.TextColor3 = Color3.fromRGB(255 ,0 ,0)
    gL.TextColor3 = Color3.fromRGB(255 ,0 ,0)
end

local function stopPlotMonitoring()
    for _, conn in ipairs(transparencyConnections) do conn:Disconnect() end
    table.clear(transparencyConnections)
    table.clear(notifiedThresholds)
    currentTargetPlot = nil
end

local function setupPlotMonitoring(plotModel)
    stopPlotMonitoring()
    currentTargetPlot = plotModel
    if not plotModel then return end

    local timeLabel
    pcall(function()
        timeLabel = plotModel:WaitForChild("Purchases", 2):WaitForChild("PlotBlock", 2):WaitForChild("Main", 2):WaitForChild("BillboardGui", 2):WaitForChild("RemainingTime", 2)
    end)

    if timeLabel then
        local lastText = ""
        local conn = RunService.Heartbeat:Connect(function()
            if not timeLabel or not timeLabel.Parent then return end
            local current = timeLabel.Text
            if current ~= lastText then
                lastText = current
                local num = tonumber(current:match("(%d+)"))
                if num then
                    for t = 200, 10, -10 do
                        if num <= t and not notifiedThresholds[t] then
                            notifiedThresholds[t] = true
                            break
                        end
                    end
                end
            end
        end)
        table.insert(transparencyConnections, conn)
    end
end

local function pathfindLoop()
    while pathfindingEnabled and task.wait(1) do
        local char = player.Character
        local humanoid = char and char:FindFirstChildOfClass("Humanoid")
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if not (humanoid and hrp and highestGenAnimal) then continue end

        local targetRoot = highestGenAnimal:FindFirstChild("RootPart") or highestGenAnimal:FindFirstChildWhichIsA("BasePart")
        if not targetRoot then continue end

        local path = PathfindingService:CreatePath()
        local destination = targetRoot.Position - (targetRoot.CFrame.LookVector * 8)
        
        local success, err = pcall(function() path:ComputeAsync(hrp.Position, destination) end)
        if not success or path.Status ~= Enum.PathStatus.Success then continue end

        local waypoints = path:GetWaypoints()
        for _, waypoint in ipairs(waypoints) do
            if not pathfindingEnabled then break end
            humanoid:MoveTo(waypoint.Position)
            humanoid.MoveToFinished:Wait(2)
        end
    end
end

local function runPetScanLoop()
    if isPetScanRunning then return end
    isPetScanRunning = true

    while espEnabled or pathfindingEnabled do
        local highest, bestGen = nil, -1
        for _, m in ipairs(workspace:GetChildren()) do
            if isBasePet(m) and isInEnemyPlot(m) then
                local g = getFinalGeneration(m)
                if g > bestGen then
	                bestGen = g
	                highest = m
                end
            end
        end
        highestGenAnimal = highest

        if highest then
            local plot = getPlotFromPosition(highest)
            if plot and plot ~= currentTargetPlot then
                setupPlotMonitoring(plot)
            end
        end

        if espEnabled then
            clearPetESP()
            if highest then
                attachPetESP(highest, bestGen)
            end
        else
            clearPetESP()
        end
        task.wait(INTERVAL)
    end
    
    clearPetESP()
    stopPlotMonitoring()
    highestGenAnimal = nil
    isPetScanRunning = false
end
    

RunService.RenderStepped:Connect(function(dt)
    if pathfindingEnabled then return end
    if not checking then return end
    
    local char = player.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    local hum  = char and char:FindFirstChildOfClass("Humanoid")
    if not (char and hrp and hum and hum.Health > 0) then return end

    local vec = Vector3.zero
    if keys[Enum.KeyCode.W] then vec += Vector3.new(0, 0, -1) end
    if keys[Enum.KeyCode.S] then vec += Vector3.new(0, 0,  1) end
    if keys[Enum.KeyCode.A] then vec += Vector3.new(-1, 0, 0) end
    if keys[Enum.KeyCode.D] then vec += Vector3.new( 1, 0, 0) end
    if vec.Magnitude == 0 then return end

    local dir  = workspace.CurrentCamera.CFrame:VectorToWorldSpace(vec).Unit
    local pos  = hrp.Position + dir * walkSpeed * dt
    hrp.CFrame = CFrame.lookAt(pos, pos + Vector3.new(dir.X, 0, dir.Z).Unit)
end)







local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -180, 0, 30)
    button.Position = UDim2.new(0, 20, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.Text = "Highest Brainrot ESP (OFF)"
    button.TextColor3 = Color3.fromRGB(240, 240, 240)
    button.TextSize = 18
    button.Font = Enum.Font.SourceSansBold
    button.AutoButtonColor = false
    button.Parent = frame

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0, 10)

local BrainrotESP = true

button.MouseButton1Click:Connect(function()

BrainrotESP = not BrainrotESP -- Toggle the state

  if BrainrotESP then
    button.Text = "Highest Brainrot ESP (ON)"
button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
espEnabled = not espEnabled
            if espEnabled then
task.spawn(runPetScanLoop)
  else
  button.Text = "Highest Brainrot ESP (OFF)" -- Update text when toggled off
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
clearPetESP()
  end
end)





-- start of base timer esp toggle

local isBaseESP = false
local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -180, 0, 30)
    button.Position = UDim2.new(0, 150, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.Text = "Base ESP (OFF)"
    button.TextColor3 = Color3.fromRGB(240, 240, 240)
    button.TextSize = 18
    button.Font = Enum.Font.SourceSansBold
    button.AutoButtonColor = false
    button.Parent = frame

    local buttonCorner = Instance.new("UICorner", button)
    buttonCorner.CornerRadius = UDim.new(0, 10)













local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

-- Toggle state
local enabled = false
local baseTracking = {} -- {[base] = {mainLabel, otherLabels}}

local function getBaseFromLabel(label)
    local purchases = label:FindFirstAncestor("Purchases")
    return purchases and purchases.Parent
end

-- Function to process a timer label
local function processTimerLabel(label)
    if not label:IsA("BillboardGui") then return end
    
    local base = getBaseFromLabel(label)
    if not base then return end
    
    -- If this is the first label for this base, make it the main one
    if not baseTracking[base] then
        baseTracking[base] = {
            mainLabel = label,
            otherLabels = {},
            originalProperties = {
                AlwaysOnTop = label.AlwaysOnTop,
                MaxDistance = label.MaxDistance,
                Size = label.Size,
               
            }
        }
        
        -- Apply current state to main label
        if enabled then
            label.AlwaysOnTop = true
            label.MaxDistance = 300
            label.Size = UDim2.new(50, 50, 50, 50)
           
        end
    else
        -- Hide additional labels for this base
        table.insert(baseTracking[base].otherLabels, label)
       
    end
end

-- Function to restore original properties
local function restoreBase(base)
    local data = baseTracking[base]
    if not data then return end
    
    -- Restore main label
    local label = data.mainLabel
    label.AlwaysOnTop = data.originalProperties.AlwaysOnTop
    label.MaxDistance = data.originalProperties.MaxDistance
    label.Size = data.originalProperties.Size
   
    
    -- Show other labels
    for _, otherLabel in ipairs(data.otherLabels) do
        if otherLabel and otherLabel.Parent then
           
        end
    end
end

local function toggleTimers()
    enabled = not enabled
   button.Text = enabled and "Base Timer (ON)" or "Base Timer (OFF)"
button.BackgroundColor3 = enabled and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
   
    
    for base, data in pairs(baseTracking) do
        if enabled then
            -- Enhance main label
            local label = data.mainLabel
            label.AlwaysOnTop = true
            label.MaxDistance = 300
            label.Size = UDim2.new(50, 50, 50, 50)
           
            
            -- Hide other labels
            for _, otherLabel in ipairs(data.otherLabels) do
                if otherLabel and otherLabel.Parent then
                   
                end
            end
        else
            restoreBase(base)
        end
    end
end

local function scanForTimers()
    local plotsFolder = workspace:FindFirstChild("Plots")
    if not plotsFolder then return end
    
    for _, label in ipairs(plotsFolder:GetDescendants()) do
        if label.Name == "BillboardGui" and label:IsA("BillboardGui") then
            if label.Parent and label.Parent.Name == "Main" and
               label.Parent.Parent and label.Parent.Parent.Name == "PlotBlock" and
               label.Parent.Parent.Parent and label.Parent.Parent.Parent.Name == "Purchases" then
                processTimerLabel(label)
            end
        end
    end
end

-- Watch for new timers
local function watchForNewTimers()
    workspace.DescendantAdded:Connect(function(descendant)
        if descendant.Name == "BillboardGui" and descendant:IsA("BillboardGui") then
            task.wait(0.2) -- Wait for hierarchy to stabilize
            if descendant:IsDescendantOf(workspace.Plots) then
                if descendant.Parent and descendant.Parent.Name == "Main" and
                   descendant.Parent.Parent and descendant.Parent.Parent.Name == "PlotBlock" and
                   descendant.Parent.Parent.Parent and descendant.Parent.Parent.Parent.Name == "Purchases" then
                    processTimerLabel(descendant)
                end
            end
        end
    end)
end

-- Cleanup function
local function cleanup()
    -- Restore all bases to original state
    enabled = false
    for base in pairs(baseTracking) do
        restoreBase(base)
    end
    screenGui:Destroy()
end

button.MouseButton1Click:Connect(toggleTimers)

 scanForTimers()
watchForNewTimers()

return cleanup
