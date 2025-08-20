--// Steal a Brainrot - Tween to Base + UI estilo Zenith Hub
--// Colin, o maluco dos scripts

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local humRoot = char:WaitForChild("HumanoidRootPart")

-- Função safada que pega a primeira Part de um Model
local function getPartFromModel(model)
    if model:IsA("BasePart") then return model end
    if model.PrimaryPart then return model.PrimaryPart end
    for _, obj in pairs(model:GetDescendants()) do
        if obj:IsA("BasePart") then
            return obj
        end
    end
    return nil
end

-- Pega a tua plot e procura uma base lá dentro
local function findMyBase()
    for _, plot in pairs(workspace.Plots:GetChildren()) do
        if plot:FindFirstChild("Owner") and plot.Owner.Value == LocalPlayer then
            -- Achou tua plot, agora cata a porra da Base
            for _, podium in pairs(plot.AnimalPodiums:GetChildren()) do
                if podium:FindFirstChild("Base") then
                    return getPartFromModel(podium.Base)
                end
            end
        end
    end
    return nil
end

local basePart = findMyBase()

if not basePart then
    warn("Caralho, não achei tua base! Deve tá escondida em outra porra de pasta.")
    return
end

-- Tweenzinho maroto até a base
local goal = { CFrame = basePart.CFrame + Vector3.new(0, 5, 0) }
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local tween = TweenService:Create(humRoot, tweenInfo, goal)

-- UI estilo Zenith Hub
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 250, 0, 150)
Frame.Position = UDim2.new(0.5, -125, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 12)

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, -20, 0, 40)
Button.Position = UDim2.new(0, 10, 0, 50)
Button.Text = "⚡ Teleportar pra Base ⚡"
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 18

local corner2 = Instance.new("UICorner", Button)
corner2.CornerRadius = UDim.new(0, 8)

Button.MouseButton1Click:Connect(function()
    tween:Play()
end)

tween.Completed:Connect(function()
    print("Cheguei na base que nem foguete, porraaa 🚀🔥")
end)
