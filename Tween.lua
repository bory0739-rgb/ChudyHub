local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()

local function tweenToBase(object, basePosition, duration)
    if not object then return end
    local tweenInfo = TweenInfo.new(duration or 2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goal = { CFrame = CFrame.new(basePosition) }
    local tween = TweenService:Create(object, tweenInfo, goal)
    tween:Play()
end

-- Tworzenie prostego przycisku w GUI
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Tween to Base"
button.Parent = screenGui

-- Akcja przy kliknięciu przycisku
button.MouseButton1Click:Connect(function()
    local base = workspace:FindFirstChild("Base")
    if base then
        local character = player.Character or player.CharacterAdded:Wait()
        if character.PrimaryPart == nil then
            character.PrimaryPart = character:FindFirstChild("HumanoidRootPart")
        end
        tweenToBase(character.PrimaryPart, base.Position, 3)
    end
end)
