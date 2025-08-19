-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local NameFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local Version = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Selector = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ServerListButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ServerTolsButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local PlayerInfo = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local Version_2 = Instance.new("TextLabel")
local Frames = Instance.new("Folder")
local ServerList = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local SelectorName = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Frame2 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Frame1 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Name_2 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local Name_3 = Instance.new("TextLabel")
local ImageButton_2 = Instance.new("ImageButton")
local Frame_4 = Instance.new("Frame")
local SelectorName2 = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local GameName = Instance.new("TextLabel")
local ServerList_2 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local _1Frame = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Frame_5 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local Frame_6 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local Version_3 = Instance.new("TextLabel")
local Name_4 = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Server1 = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local Version_4 = Instance.new("TextLabel")
local PetList = Instance.new("TextLabel")
local Name_5 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local Server2 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local Name_6 = Instance.new("TextLabel")
local PetList_2 = Instance.new("TextLabel")
local UICorner_18 = Instance.new("UICorner")
local Version_5 = Instance.new("TextLabel")
local Server3 = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Name_7 = Instance.new("TextLabel")
local PetList_3 = Instance.new("TextLabel")
local UICorner_20 = Instance.new("UICorner")
local Version_6 = Instance.new("TextLabel")
local Server4 = Instance.new("Frame")
local TextButton_4 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local Name_8 = Instance.new("TextLabel")
local PetList_4 = Instance.new("TextLabel")
local UICorner_22 = Instance.new("UICorner")
local Version_7 = Instance.new("TextLabel")
local Server5 = Instance.new("Frame")
local TextButton_5 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local Name_9 = Instance.new("TextLabel")
local PetList_5 = Instance.new("TextLabel")
local UICorner_24 = Instance.new("UICorner")
local Version_8 = Instance.new("TextLabel")
local Server6 = Instance.new("Frame")
local TextButton_6 = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local Name_10 = Instance.new("TextLabel")
local PetList_6 = Instance.new("TextLabel")
local UICorner_26 = Instance.new("UICorner")
local Version_9 = Instance.new("TextLabel")
local Server7 = Instance.new("Frame")
local TextButton_7 = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local Name_11 = Instance.new("TextLabel")
local PetList_7 = Instance.new("TextLabel")
local UICorner_28 = Instance.new("UICorner")
local Version_10 = Instance.new("TextLabel")
local Server8 = Instance.new("Frame")
local TextButton_8 = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local Name_12 = Instance.new("TextLabel")
local PetList_8 = Instance.new("TextLabel")
local UICorner_30 = Instance.new("UICorner")
local Version_11 = Instance.new("TextLabel")
local Server9 = Instance.new("Frame")
local TextButton_9 = Instance.new("TextButton")
local UICorner_31 = Instance.new("UICorner")
local Name_13 = Instance.new("TextLabel")
local PetList_9 = Instance.new("TextLabel")
local UICorner_32 = Instance.new("UICorner")
local Version_12 = Instance.new("TextLabel")
local Server10 = Instance.new("Frame")
local TextButton_10 = Instance.new("TextButton")
local UICorner_33 = Instance.new("UICorner")
local Name_14 = Instance.new("TextLabel")
local PetList_10 = Instance.new("TextLabel")
local UICorner_34 = Instance.new("UICorner")
local Version_13 = Instance.new("TextLabel")
local ImageButton_3 = Instance.new("ImageButton")
local UICorner_35 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.194414601, 0, 0.242271245, 0)
MainFrame.Size = UDim2.new(0, 600, 0, 400)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = MainFrame

NameFrame.Name = "NameFrame"
NameFrame.Parent = MainFrame
NameFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NameFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameFrame.BorderSizePixel = 0
NameFrame.Size = UDim2.new(0, 600, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = NameFrame

Frame.Parent = NameFrame
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1.0333333, 0)
Frame.Size = UDim2.new(0, 600, 0, -6)

Version.Name = "Version"
Version.Parent = NameFrame
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.173333332, 0, 0, 0)
Version.Size = UDim2.new(0, 52, 0, 31)
Version.Font = Enum.Font.SourceSansBold
Version.Text = "[FREE]"
Version.TextColor3 = Color3.fromRGB(141, 141, 141)
Version.TextSize = 18.000

TextLabel.Parent = NameFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0333333351, 0)
TextLabel.Size = UDim2.new(0, 122, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "ChudyHub"
TextLabel.TextColor3 = Color3.fromRGB(184, 43, 64)
TextLabel.TextSize = 19.000

Selector.Name = "Selector"
Selector.Parent = MainFrame
Selector.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Selector.BorderColor3 = Color3.fromRGB(0, 0, 0)
Selector.BorderSizePixel = 0
Selector.Position = UDim2.new(0.0133333337, 0, 0.100000001, 0)
Selector.Size = UDim2.new(0, 166, 0, 307)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Selector

ServerListButton.Name = "ServerListButton"
ServerListButton.Parent = Selector
ServerListButton.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
ServerListButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerListButton.BorderSizePixel = 0
ServerListButton.Position = UDim2.new(0.0480000004, 0, 0.0930000022, 0)
ServerListButton.Size = UDim2.new(0, 150, 0, 22)
ServerListButton.Font = Enum.Font.SourceSansBold
ServerListButton.Text = "   Server List"
ServerListButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerListButton.TextSize = 18.000
ServerListButton.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = ServerListButton

ServerTolsButton.Name = "ServerTolsButton"
ServerTolsButton.Parent = Selector
ServerTolsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerTolsButton.BackgroundTransparency = 1.000
ServerTolsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerTolsButton.BorderSizePixel = 0
ServerTolsButton.Position = UDim2.new(0.0480000153, 0, 0.166333318, 0)
ServerTolsButton.Size = UDim2.new(0, 150, 0, 22)
ServerTolsButton.Font = Enum.Font.SourceSansBold
ServerTolsButton.Text = "   Server Tools"
ServerTolsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerTolsButton.TextSize = 18.000
ServerTolsButton.TextXAlignment = Enum.TextXAlignment.Left

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = ServerTolsButton

PlayerInfo.Name = "PlayerInfo"
PlayerInfo.Parent = MainFrame
PlayerInfo.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlayerInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerInfo.BorderSizePixel = 0
PlayerInfo.Position = UDim2.new(0.0133333337, 0, 0.887499988, 0)
PlayerInfo.Size = UDim2.new(0, 166, 0, 35)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = PlayerInfo

ImageButton.Parent = PlayerInfo
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0421686731, 0, 0.0571428575, 0)
ImageButton.Size = UDim2.new(0, 30, 0, 30)
ImageButton.Image = "rbxassetid://10310593956"

Version_2.Name = "Version"
Version_2.Parent = PlayerInfo
Version_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_2.BackgroundTransparency = 1.000
Version_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_2.BorderSizePixel = 0
Version_2.Position = UDim2.new(0.221405581, 0, 0.0571428575, 0)
Version_2.Size = UDim2.new(0, 52, 0, 31)
Version_2.Font = Enum.Font.SourceSansBold
Version_2.Text = "Setting"
Version_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Version_2.TextSize = 18.000

Frames.Name = "Frames"
Frames.Parent = MainFrame

ServerList.Name = "Server-List"
ServerList.Parent = Frames
ServerList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ServerList.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerList.BorderSizePixel = 0
ServerList.Position = UDim2.new(0.300000012, 0, 0.100000001, 0)
ServerList.Size = UDim2.new(0, 412, 0, 350)

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = ServerList

SelectorName.Name = "SelectorName"
SelectorName.Parent = ServerList
SelectorName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectorName.BackgroundTransparency = 1.000
SelectorName.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectorName.BorderSizePixel = 0
SelectorName.Position = UDim2.new(0.016990291, 0, 0, 0)
SelectorName.Size = UDim2.new(0, 120, 0, 22)
SelectorName.Visible = false
SelectorName.Font = Enum.Font.SourceSansBold
SelectorName.Text = "Server List"
SelectorName.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectorName.TextSize = 21.000
SelectorName.TextXAlignment = Enum.TextXAlignment.Left

Frame_2.Parent = ServerList
Frame_2.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.016990291, 0, 0.0799999982, 0)
Frame_2.Size = UDim2.new(0, 397, 0, 315)

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = Frame_2

Name.Name = "Name"
Name.Parent = Frame_2
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.0201511327, 0, -0.0126984129, 0)
Name.Size = UDim2.new(0, 59, 0, 31)
Name.Font = Enum.Font.SourceSansBold
Name.Text = "Main"
Name.TextColor3 = Color3.fromRGB(184, 43, 64)
Name.TextSize = 18.000
Name.TextXAlignment = Enum.TextXAlignment.Left

Frame2.Name = "Frame2"
Frame2.Parent = Frame_2
Frame2.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.0201511327, 0, 0.0857142881, 0)
Frame2.Size = UDim2.new(0, 381, 0, 3)

UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.59, 0.61), NumberSequenceKeypoint.new(0.95, 1.00), NumberSequenceKeypoint.new(1.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Frame2

Frame1.Name = "Frame1"
Frame1.Parent = Frame_2
Frame1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.0201511327, 0, 0.117460318, 0)
Frame1.Size = UDim2.new(0, 381, 0, 60)

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = Frame1

Name_2.Name = "Name"
Name_2.Parent = Frame1
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1.000
Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0.0175264608, 0, -0.00555572519, 0)
Name_2.Size = UDim2.new(0, 59, 0, 31)
Name_2.Font = Enum.Font.SourceSansBold
Name_2.Text = "Open List"
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextSize = 18.000
Name_2.TextXAlignment = Enum.TextXAlignment.Left

Frame_3.Parent = Frame1
Frame_3.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0175265409, 0, 0.511110425, 0)
Frame_3.Size = UDim2.new(0, 367, 0, 23)

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = Frame_3

Name_3.Name = "Name"
Name_3.Parent = Frame_3
Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_3.BackgroundTransparency = 1.000
Name_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.0420496464, 0, -0.179468572, 0)
Name_3.Size = UDim2.new(0, 59, 0, 31)
Name_3.Font = Enum.Font.SourceSansBold
Name_3.Text = "Button"
Name_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_3.TextSize = 18.000
Name_3.TextXAlignment = Enum.TextXAlignment.Left

ImageButton_2.Parent = Frame_3
ImageButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton_2.BackgroundTransparency = 1.000
ImageButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Size = UDim2.new(0, 367, 0, 23)

Frame_4.Parent = Frame_2
Frame_4.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.931989908, 0, 0.0857142881, 0)
Frame_4.Size = UDim2.new(0, 27, 0, 3)

SelectorName2.Name = "SelectorName2"
SelectorName2.Parent = ServerList
SelectorName2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectorName2.BackgroundTransparency = 1.000
SelectorName2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SelectorName2.BorderSizePixel = 0
SelectorName2.Position = UDim2.new(0.016990291, 0, 0, 0)
SelectorName2.Size = UDim2.new(0, 120, 0, 22)
SelectorName2.Font = Enum.Font.SourceSansBold
SelectorName2.Text = "Server Tools"
SelectorName2.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectorName2.TextSize = 21.000
SelectorName2.TextXAlignment = Enum.TextXAlignment.Left

Text.Name = "Text"
Text.Parent = ServerList
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.354368925, 0, 0.468571424, 0)
Text.Size = UDim2.new(0, 120, 0, 22)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "soon..."
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 21.000
Text.TextXAlignment = Enum.TextXAlignment.Left

GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameName.BorderSizePixel = 0
GameName.Position = UDim2.new(-0.0183333326, 0, 0.100000001, 0)
GameName.Size = UDim2.new(0, 174, 0, 22)
GameName.Font = Enum.Font.SourceSansBold
GameName.Text = "STEAL A BRAINROT"
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextSize = 18.000

ServerList_2.Name = "ServerList"
ServerList_2.Parent = ScreenGui
ServerList_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ServerList_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerList_2.BorderSizePixel = 0
ServerList_2.Position = UDim2.new(0.272824913, 0, 0.242718443, 0)
ServerList_2.Size = UDim2.new(0, 422, 0, 400)

UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = ServerList_2

_1Frame.Name = "1Frame"
_1Frame.Parent = ServerList_2
_1Frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
_1Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1Frame.BorderSizePixel = 0
_1Frame.Position = UDim2.new(0.0211285781, 0, 0.247500002, 0)
_1Frame.Size = UDim2.new(0, 407, 0, 295)

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = _1Frame

Frame_5.Parent = ServerList_2
Frame_5.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0.0163892414, 0, 0.0169699099, 0)
Frame_5.Size = UDim2.new(0, 50, 0, 30)

UICorner_13.CornerRadius = UDim.new(0, 5)
UICorner_13.Parent = Frame_5

Logo.Name = "Logo"
Logo.Parent = ServerList_2
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.039399676, 0, 0.0133332824, 0)
Logo.Size = UDim2.new(0, 30, 0, 30)
Logo.Image = "rbxassetid://2042663632"

Frame_6.Parent = ServerList_2
Frame_6.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0.153830007, 0, 0.0169699099, 0)
Frame_6.Size = UDim2.new(0, 349, 0, 30)

UICorner_14.CornerRadius = UDim.new(0, 5)
UICorner_14.Parent = Frame_6

Version_3.Name = "Version"
Version_3.Parent = ServerList_2
Version_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_3.BackgroundTransparency = 1.000
Version_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_3.BorderSizePixel = 0
Version_3.Position = UDim2.new(0.271627128, 0, 0.237499997, 0)
Version_3.Size = UDim2.new(0, 190, 0, 31)
Version_3.Font = Enum.Font.SourceSansBold
Version_3.Text = "Avible servers | 0 / 10"
Version_3.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_3.TextSize = 18.000

Name_4.Name = "Name"
Name_4.Parent = ServerList_2
Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_4.BackgroundTransparency = 1.000
Name_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.260015756, 0, 0.0149999997, 0)
Name_4.Size = UDim2.new(0, 225, 0, 31)
Name_4.Font = Enum.Font.SourceSansBold
Name_4.Text = "ChudyHub"
Name_4.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_4.TextSize = 18.000

ScrollingFrame.Parent = ServerList_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0165876783, 0, 0.247500002, 0)
ScrollingFrame.Size = UDim2.new(0, 406, 0, 292)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 3, 0)
ScrollingFrame.ScrollBarThickness = 6

Server1.Name = "Server-1"
Server1.Parent = ScrollingFrame
Server1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server1.BorderSizePixel = 0
Server1.Position = UDim2.new(0.0221311823, 0, 0.0250139423, 0)
Server1.Size = UDim2.new(0, 390, 0, 100)

UICorner_15.CornerRadius = UDim.new(0, 5)
UICorner_15.Parent = Server1

Version_4.Name = "Version"
Version_4.Parent = Server1
Version_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_4.BackgroundTransparency = 1.000
Version_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_4.BorderSizePixel = 0
Version_4.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_4.Size = UDim2.new(0, 38, 0, 23)
Version_4.Font = Enum.Font.SourceSansBold
Version_4.Text = "# 1"
Version_4.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_4.TextSize = 18.000

PetList.Name = "Pet List"
PetList.Parent = Server1
PetList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList.BackgroundTransparency = 1.000
PetList.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList.BorderSizePixel = 0
PetList.Position = UDim2.new(0.193987101, 0, 0.344689637, 0)
PetList.Size = UDim2.new(0, 174, 0, 31)
PetList.Font = Enum.Font.SourceSansBold
PetList.Text = "Lavaca Saturnika - 1.5M"
PetList.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList.TextSize = 18.000

Name_5.Name = "Name"
Name_5.Parent = Server1
Name_5.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Name_5.BackgroundTransparency = 1.000
Name_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_5.BorderSizePixel = 0
Name_5.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_5.Size = UDim2.new(0, 225, 0, 31)
Name_5.Font = Enum.Font.SourceSansBold
Name_5.Text = "Gnill scipts on Top"
Name_5.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_5.TextSize = 18.000

TextButton.Parent = Server1
TextButton.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton.Size = UDim2.new(0, 52, 0, 27)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "Join"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 18.000

UICorner_16.CornerRadius = UDim.new(0, 4)
UICorner_16.Parent = TextButton

Server2.Name = "Server-2"
Server2.Parent = ScrollingFrame
Server2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server2.BorderSizePixel = 0
Server2.Position = UDim2.new(0.0245942362, 0, 0.116495632, 0)
Server2.Size = UDim2.new(0, 390, 0, 100)

TextButton_2.Parent = Server2
TextButton_2.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_2.Size = UDim2.new(0, 52, 0, 27)
TextButton_2.Font = Enum.Font.SourceSansBold
TextButton_2.Text = "Join"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 18.000

UICorner_17.CornerRadius = UDim.new(0, 4)
UICorner_17.Parent = TextButton_2

Name_6.Name = "Name"
Name_6.Parent = Server2
Name_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_6.BackgroundTransparency = 1.000
Name_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_6.BorderSizePixel = 0
Name_6.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_6.Size = UDim2.new(0, 225, 0, 31)
Name_6.Font = Enum.Font.SourceSansBold
Name_6.Text = "Gnill scipts on Top"
Name_6.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_6.TextSize = 18.000

PetList_2.Name = "Pet List"
PetList_2.Parent = Server2
PetList_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_2.BackgroundTransparency = 1.000
PetList_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_2.BorderSizePixel = 0
PetList_2.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_2.Size = UDim2.new(0, 174, 0, 31)
PetList_2.Font = Enum.Font.SourceSansBold
PetList_2.Text = "Lavaca Saturnika - 1.5M"
PetList_2.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_2.TextSize = 18.000

UICorner_18.CornerRadius = UDim.new(0, 5)
UICorner_18.Parent = Server2

Version_5.Name = "Version"
Version_5.Parent = Server2
Version_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_5.BackgroundTransparency = 1.000
Version_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_5.BorderSizePixel = 0
Version_5.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_5.Size = UDim2.new(0, 38, 0, 23)
Version_5.Font = Enum.Font.SourceSansBold
Version_5.Text = "# 2"
Version_5.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_5.TextSize = 18.000

Server3.Name = "Server-3"
Server3.Parent = ScrollingFrame
Server3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server3.BorderSizePixel = 0
Server3.Position = UDim2.new(0.0240000002, 0, 0.209999993, 0)
Server3.Size = UDim2.new(0, 390, 0, 100)

TextButton_3.Parent = Server3
TextButton_3.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_3.Size = UDim2.new(0, 52, 0, 27)
TextButton_3.Font = Enum.Font.SourceSansBold
TextButton_3.Text = "Join"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextSize = 18.000

UICorner_19.CornerRadius = UDim.new(0, 4)
UICorner_19.Parent = TextButton_3

Name_7.Name = "Name"
Name_7.Parent = Server3
Name_7.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Name_7.BackgroundTransparency = 1.000
Name_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_7.BorderSizePixel = 0
Name_7.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_7.Size = UDim2.new(0, 225, 0, 31)
Name_7.Font = Enum.Font.SourceSansBold
Name_7.Text = "Gnill scipts on Top"
Name_7.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_7.TextSize = 18.000

PetList_3.Name = "Pet List"
PetList_3.Parent = Server3
PetList_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_3.BackgroundTransparency = 1.000
PetList_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_3.BorderSizePixel = 0
PetList_3.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_3.Size = UDim2.new(0, 174, 0, 31)
PetList_3.Font = Enum.Font.SourceSansBold
PetList_3.Text = "Lavaca Saturnika - 1.5M"
PetList_3.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_3.TextSize = 18.000

UICorner_20.CornerRadius = UDim.new(0, 5)
UICorner_20.Parent = Server3

Version_6.Name = "Version"
Version_6.Parent = Server3
Version_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_6.BackgroundTransparency = 1.000
Version_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_6.BorderSizePixel = 0
Version_6.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_6.Size = UDim2.new(0, 38, 0, 23)
Version_6.Font = Enum.Font.SourceSansBold
Version_6.Text = "# 3"
Version_6.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_6.TextSize = 18.000

Server4.Name = "Server-4"
Server4.Parent = ScrollingFrame
Server4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server4.BorderSizePixel = 0
Server4.Position = UDim2.new(0.0240000002, 0, 0.301999986, 0)
Server4.Size = UDim2.new(0, 390, 0, 100)

TextButton_4.Parent = Server4
TextButton_4.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_4.Size = UDim2.new(0, 52, 0, 27)
TextButton_4.Font = Enum.Font.SourceSansBold
TextButton_4.Text = "Join"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 18.000

UICorner_21.CornerRadius = UDim.new(0, 4)
UICorner_21.Parent = TextButton_4

Name_8.Name = "Name"
Name_8.Parent = Server4
Name_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_8.BackgroundTransparency = 1.000
Name_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_8.BorderSizePixel = 0
Name_8.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_8.Size = UDim2.new(0, 225, 0, 31)
Name_8.Font = Enum.Font.SourceSansBold
Name_8.Text = "Gnill scipts on Top"
Name_8.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_8.TextSize = 18.000

PetList_4.Name = "Pet List"
PetList_4.Parent = Server4
PetList_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_4.BackgroundTransparency = 1.000
PetList_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_4.BorderSizePixel = 0
PetList_4.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_4.Size = UDim2.new(0, 174, 0, 31)
PetList_4.Font = Enum.Font.SourceSansBold
PetList_4.Text = "Lavaca Saturnika - 1.5M"
PetList_4.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_4.TextSize = 18.000

UICorner_22.CornerRadius = UDim.new(0, 5)
UICorner_22.Parent = Server4

Version_7.Name = "Version"
Version_7.Parent = Server4
Version_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_7.BackgroundTransparency = 1.000
Version_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_7.BorderSizePixel = 0
Version_7.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_7.Size = UDim2.new(0, 38, 0, 23)
Version_7.Font = Enum.Font.SourceSansBold
Version_7.Text = "# 4"
Version_7.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_7.TextSize = 18.000

Server5.Name = "Server-5"
Server5.Parent = ScrollingFrame
Server5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server5.BorderSizePixel = 0
Server5.Position = UDim2.new(0.0240000002, 0, 0.395000011, 0)
Server5.Size = UDim2.new(0, 390, 0, 100)

TextButton_5.Parent = Server5
TextButton_5.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_5.Size = UDim2.new(0, 52, 0, 27)
TextButton_5.Font = Enum.Font.SourceSansBold
TextButton_5.Text = "Join"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextSize = 18.000

UICorner_23.CornerRadius = UDim.new(0, 4)
UICorner_23.Parent = TextButton_5

Name_9.Name = "Name"
Name_9.Parent = Server5
Name_9.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Name_9.BackgroundTransparency = 1.000
Name_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_9.BorderSizePixel = 0
Name_9.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_9.Size = UDim2.new(0, 225, 0, 31)
Name_9.Font = Enum.Font.SourceSansBold
Name_9.Text = "Gnill scipts on Top"
Name_9.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_9.TextSize = 18.000

PetList_5.Name = "Pet List"
PetList_5.Parent = Server5
PetList_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_5.BackgroundTransparency = 1.000
PetList_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_5.BorderSizePixel = 0
PetList_5.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_5.Size = UDim2.new(0, 174, 0, 31)
PetList_5.Font = Enum.Font.SourceSansBold
PetList_5.Text = "Lavaca Saturnika - 1.5M"
PetList_5.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_5.TextSize = 18.000

UICorner_24.CornerRadius = UDim.new(0, 5)
UICorner_24.Parent = Server5

Version_8.Name = "Version"
Version_8.Parent = Server5
Version_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_8.BackgroundTransparency = 1.000
Version_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_8.BorderSizePixel = 0
Version_8.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_8.Size = UDim2.new(0, 38, 0, 23)
Version_8.Font = Enum.Font.SourceSansBold
Version_8.Text = "# 5"
Version_8.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_8.TextSize = 18.000

Server6.Name = "Server-6"
Server6.Parent = ScrollingFrame
Server6.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server6.BorderSizePixel = 0
Server6.Position = UDim2.new(0.0240000002, 0, 0.488000005, 0)
Server6.Size = UDim2.new(0, 390, 0, 100)

TextButton_6.Parent = Server6
TextButton_6.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_6.Size = UDim2.new(0, 52, 0, 27)
TextButton_6.Font = Enum.Font.SourceSansBold
TextButton_6.Text = "Join"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextSize = 18.000

UICorner_25.CornerRadius = UDim.new(0, 4)
UICorner_25.Parent = TextButton_6

Name_10.Name = "Name"
Name_10.Parent = Server6
Name_10.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
Name_10.BackgroundTransparency = 1.000
Name_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_10.BorderSizePixel = 0
Name_10.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_10.Size = UDim2.new(0, 225, 0, 31)
Name_10.Font = Enum.Font.SourceSansBold
Name_10.Text = "Gnill scipts on Top"
Name_10.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_10.TextSize = 18.000

PetList_6.Name = "Pet List"
PetList_6.Parent = Server6
PetList_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_6.BackgroundTransparency = 1.000
PetList_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_6.BorderSizePixel = 0
PetList_6.Position = UDim2.new(0.191422999, 0, 0.324689627, 0)
PetList_6.Size = UDim2.new(0, 174, 0, 31)
PetList_6.Font = Enum.Font.SourceSansBold
PetList_6.Text = "Lavaca Saturnika - 1.5M"
PetList_6.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_6.TextSize = 18.000

UICorner_26.CornerRadius = UDim.new(0, 5)
UICorner_26.Parent = Server6

Version_9.Name = "Version"
Version_9.Parent = Server6
Version_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_9.BackgroundTransparency = 1.000
Version_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_9.BorderSizePixel = 0
Version_9.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_9.Size = UDim2.new(0, 38, 0, 23)
Version_9.Font = Enum.Font.SourceSansBold
Version_9.Text = "# 6"
Version_9.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_9.TextSize = 18.000

Server7.Name = "Server-7"
Server7.Parent = ScrollingFrame
Server7.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server7.BorderSizePixel = 0
Server7.Position = UDim2.new(0.0239999704, 0, 0.582814872, 0)
Server7.Size = UDim2.new(0, 390, 0, 100)

TextButton_7.Parent = Server7
TextButton_7.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_7.Size = UDim2.new(0, 52, 0, 27)
TextButton_7.Font = Enum.Font.SourceSansBold
TextButton_7.Text = "Join"
TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.TextSize = 18.000

UICorner_27.CornerRadius = UDim.new(0, 4)
UICorner_27.Parent = TextButton_7

Name_11.Name = "Name"
Name_11.Parent = Server7
Name_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_11.BackgroundTransparency = 1.000
Name_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_11.BorderSizePixel = 0
Name_11.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_11.Size = UDim2.new(0, 225, 0, 31)
Name_11.Font = Enum.Font.SourceSansBold
Name_11.Text = "Gnill scipts on Top"
Name_11.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_11.TextSize = 18.000

PetList_7.Name = "Pet List"
PetList_7.Parent = Server7
PetList_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_7.BackgroundTransparency = 1.000
PetList_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_7.BorderSizePixel = 0
PetList_7.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_7.Size = UDim2.new(0, 174, 0, 31)
PetList_7.Font = Enum.Font.SourceSansBold
PetList_7.Text = "Lavaca Saturnika - 1.5M"
PetList_7.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_7.TextSize = 18.000

UICorner_28.CornerRadius = UDim.new(0, 5)
UICorner_28.Parent = Server7

Version_10.Name = "Version"
Version_10.Parent = Server7
Version_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_10.BackgroundTransparency = 1.000
Version_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_10.BorderSizePixel = 0
Version_10.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_10.Size = UDim2.new(0, 38, 0, 23)
Version_10.Font = Enum.Font.SourceSansBold
Version_10.Text = "# 7"
Version_10.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_10.TextSize = 18.000

Server8.Name = "Server-8"
Server8.Parent = ScrollingFrame
Server8.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server8.BorderSizePixel = 0
Server8.Position = UDim2.new(0.0240000002, 0, 0.676999986, 0)
Server8.Size = UDim2.new(0, 390, 0, 100)

TextButton_8.Parent = Server8
TextButton_8.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.BorderSizePixel = 0
TextButton_8.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_8.Size = UDim2.new(0, 52, 0, 27)
TextButton_8.Font = Enum.Font.SourceSansBold
TextButton_8.Text = "Join"
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.TextSize = 18.000

UICorner_29.CornerRadius = UDim.new(0, 4)
UICorner_29.Parent = TextButton_8

Name_12.Name = "Name"
Name_12.Parent = Server8
Name_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_12.BackgroundTransparency = 1.000
Name_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_12.BorderSizePixel = 0
Name_12.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_12.Size = UDim2.new(0, 225, 0, 31)
Name_12.Font = Enum.Font.SourceSansBold
Name_12.Text = "Gnill scipts on Top"
Name_12.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_12.TextSize = 18.000

PetList_8.Name = "Pet List"
PetList_8.Parent = Server8
PetList_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_8.BackgroundTransparency = 1.000
PetList_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_8.BorderSizePixel = 0
PetList_8.Position = UDim2.new(0.191422999, 0, 0.324689627, 0)
PetList_8.Size = UDim2.new(0, 174, 0, 31)
PetList_8.Font = Enum.Font.SourceSansBold
PetList_8.Text = "Lavaca Saturnika - 1.5M"
PetList_8.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_8.TextSize = 18.000

UICorner_30.CornerRadius = UDim.new(0, 5)
UICorner_30.Parent = Server8

Version_11.Name = "Version"
Version_11.Parent = Server8
Version_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_11.BackgroundTransparency = 1.000
Version_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_11.BorderSizePixel = 0
Version_11.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_11.Size = UDim2.new(0, 38, 0, 23)
Version_11.Font = Enum.Font.SourceSansBold
Version_11.Text = "# 8"
Version_11.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_11.TextSize = 18.000

Server9.Name = "Server-9"
Server9.Parent = ScrollingFrame
Server9.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server9.BorderSizePixel = 0
Server9.Position = UDim2.new(0.0239999704, 0, 0.771917701, 0)
Server9.Size = UDim2.new(0, 390, 0, 100)

TextButton_9.Parent = Server9
TextButton_9.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.BorderSizePixel = 0
TextButton_9.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_9.Size = UDim2.new(0, 52, 0, 27)
TextButton_9.Font = Enum.Font.SourceSansBold
TextButton_9.Text = "Join"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextSize = 18.000

UICorner_31.CornerRadius = UDim.new(0, 4)
UICorner_31.Parent = TextButton_9

Name_13.Name = "Name"
Name_13.Parent = Server9
Name_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_13.BackgroundTransparency = 1.000
Name_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_13.BorderSizePixel = 0
Name_13.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_13.Size = UDim2.new(0, 225, 0, 31)
Name_13.Font = Enum.Font.SourceSansBold
Name_13.Text = "Gnill scipts on Top"
Name_13.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_13.TextSize = 18.000

PetList_9.Name = "Pet List"
PetList_9.Parent = Server9
PetList_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_9.BackgroundTransparency = 1.000
PetList_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_9.BorderSizePixel = 0
PetList_9.Position = UDim2.new(0.191422999, 0, 0.344689637, 0)
PetList_9.Size = UDim2.new(0, 174, 0, 31)
PetList_9.Font = Enum.Font.SourceSansBold
PetList_9.Text = "Lavaca Saturnika - 1.5M"
PetList_9.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_9.TextSize = 18.000

UICorner_32.CornerRadius = UDim.new(0, 5)
UICorner_32.Parent = Server9

Version_12.Name = "Version"
Version_12.Parent = Server9
Version_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_12.BackgroundTransparency = 1.000
Version_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_12.BorderSizePixel = 0
Version_12.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_12.Size = UDim2.new(0, 38, 0, 23)
Version_12.Font = Enum.Font.SourceSansBold
Version_12.Text = "# 9"
Version_12.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_12.TextSize = 18.000

Server10.Name = "Server-10"
Server10.Parent = ScrollingFrame
Server10.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Server10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server10.BorderSizePixel = 0
Server10.Position = UDim2.new(0.0239999704, 0, 0.866690874, 0)
Server10.Size = UDim2.new(0, 390, 0, 100)

TextButton_10.Parent = Server10
TextButton_10.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
TextButton_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.BorderSizePixel = 0
TextButton_10.Position = UDim2.new(0.835380018, 0, 0.66236937, 0)
TextButton_10.Size = UDim2.new(0, 52, 0, 27)
TextButton_10.Font = Enum.Font.SourceSansBold
TextButton_10.Text = "Join"
TextButton_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_10.TextSize = 18.000

UICorner_33.CornerRadius = UDim.new(0, 4)
UICorner_33.Parent = TextButton_10

Name_14.Name = "Name"
Name_14.Parent = Server10
Name_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_14.BackgroundTransparency = 1.000
Name_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_14.BorderSizePixel = 0
Name_14.Position = UDim2.new(-0.109866567, 0, -0.029150391, 0)
Name_14.Size = UDim2.new(0, 225, 0, 31)
Name_14.Font = Enum.Font.SourceSansBold
Name_14.Text = "Gnill scipts on Top"
Name_14.TextColor3 = Color3.fromRGB(184, 43, 64)
Name_14.TextSize = 18.000

PetList_10.Name = "Pet List"
PetList_10.Parent = Server10
PetList_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PetList_10.BackgroundTransparency = 1.000
PetList_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
PetList_10.BorderSizePixel = 0
PetList_10.Position = UDim2.new(0.191422999, 0, 0.324689627, 0)
PetList_10.Size = UDim2.new(0, 174, 0, 31)
PetList_10.Font = Enum.Font.SourceSansBold
PetList_10.Text = "Lavaca Saturnika - 1.5M"
PetList_10.TextColor3 = Color3.fromRGB(141, 141, 141)
PetList_10.TextSize = 18.000

UICorner_34.CornerRadius = UDim.new(0, 5)
UICorner_34.Parent = Server10

Version_13.Name = "Version"
Version_13.Parent = Server10
Version_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_13.BackgroundTransparency = 1.000
Version_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version_13.BorderSizePixel = 0
Version_13.Position = UDim2.new(0.871029735, 0, 0.0495263673, 0)
Version_13.Size = UDim2.new(0, 38, 0, 23)
Version_13.Font = Enum.Font.SourceSansBold
Version_13.Text = "# 10"
Version_13.TextColor3 = Color3.fromRGB(141, 141, 141)
Version_13.TextSize = 18.000

ImageButton_3.Parent = ServerList_2
ImageButton_3.BackgroundColor3 = Color3.fromRGB(184, 43, 64)
ImageButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton_3.BorderSizePixel = 0
ImageButton_3.Position = UDim2.new(0.0211285781, 0, 0.157908633, 0)
ImageButton_3.Size = UDim2.new(0, 30, 0, 30)

UICorner_35.CornerRadius = UDim.new(0, 5)
UICorner_35.Parent = ImageButton_3

-- Scripts:

local function NYQJDUI_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local TweenService = game:GetService("TweenService")
	
	local MainFrame = playerGui:WaitForChild("ScreenGui"):WaitForChild("MainFrame")
	if not MainFrame then
		return
	end
	
	local Selector = MainFrame:WaitForChild("Selector")
	if not Selector then
		return
	end
	
	local ServerListButton = Selector:WaitForChild("ServerListButton")
	local ServerTolsButton = Selector:WaitForChild("ServerTolsButton")
	
	local Frames = MainFrame.Frames
	local ServerList = Frames:WaitForChild("Server-List")
	
	-- Элементы первой таблицы
	local Frame111 = ServerList.Frame
	local SelectorName = ServerList.SelectorName
	
	-- Элементы второй таблицы
	local SelectorName2 = ServerList.SelectorName2
	local Text = ServerList.Text
	
	-- Настройки анимации
	local tweenInfo = TweenInfo.new(
		0.3, -- Длительность анимации (в секундах)
		Enum.EasingStyle.Quad, -- Стиль плавности (можно изменить на Linear, Sine, Back и др.)
		Enum.EasingDirection.InOut -- Направление (In, Out, InOut)
	)
	
	-- Функция для анимации кнопки (активация)
	local function activateButton(button)
		local tween = TweenService:Create(
			button,
			tweenInfo,
			{
				BackgroundTransparency = 0, -- Полностью непрозрачный
				BackgroundColor3 = Color3.fromRGB(184, 43, 64) -- Темно-серый (можно изменить)
			}
		)
		tween:Play()
	end
	
	-- Функция для анимации кнопки (деактивация)
	local function deactivateButton(button)
		local tween = TweenService:Create(
			button,
			tweenInfo,
			{
				BackgroundTransparency = 1 -- Полностью прозрачный
			}
		)
		tween:Play()
	end
	
	-- Функция для показа первой таблицы
	local function showTable1()
		-- Анимация кнопок
		activateButton(ServerListButton)
		deactivateButton(ServerTolsButton)
	
		-- Показ/скрытие элементов
		Frame111.Visible = true
		SelectorName.Visible = true
		SelectorName2.Visible = false
		Text.Visible = false
	end
	
	-- Функция для показа второй таблицы
	local function showTable2()
		-- Анимация кнопок
		activateButton(ServerTolsButton)
		deactivateButton(ServerListButton)
	
		-- Показ/скрытие элементов
		Frame111.Visible = false
		SelectorName.Visible = false
		SelectorName2.Visible = true
		Text.Visible = true
	end
	
	-- Начальное состояние (первая таблица активна)
	showTable1()
	
	-- Обработчики кликов
	ServerListButton.MouseButton1Click:Connect(showTable1)
	ServerTolsButton.MouseButton1Click:Connect(showTable2)
end
coroutine.wrap(NYQJDUI_fake_script)()
local function KAQU_fake_script() -- ImageButton_2.LocalScript 
	local script = Instance.new('LocalScript', ImageButton_2)

	local button = script.Parent
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	
	-- Wait for the GUI to exist
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local mainFrame = screenGui:WaitForChild("ServerList")
	
	-- Initial GUI state (visible)
	mainFrame.Visible = false
	
	-- Function to toggle GUI visibility
	local function toggleGUI()
		mainFrame.Visible = not mainFrame.Visible
	end
	
	-- Connect the button click event
	button.MouseButton1Click:Connect(toggleGUI)
end
coroutine.wrap(KAQU_fake_script)()
local function YIRIHGI_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0, true); -- drag speed
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(YIRIHGI_fake_script)()
local function VHPLPCR_fake_script() -- ServerList_2.LocalScript 
	local script = Instance.new('LocalScript', ServerList_2)

	local UserInputService = game:GetService("UserInputService")
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		local newPosition = UDim2.new(
			startPos.X.Scale, 
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
		gui.Position = newPosition -- Directly assign the new position instead of tweening
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(VHPLPCR_fake_script)()
local function LDZN_fake_script() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript', ScrollingFrame)

	local scriptParent = script.Parent
	
	-- Собираем все серверы в таблицу
	local servers = {
		{
			frame = scriptParent["Server-1"],
			button = scriptParent["Server-1"].TextButton
		},
		{
			frame = scriptParent["Server-2"],
			button = scriptParent["Server-2"].TextButton
		},
		{
			frame = scriptParent["Server-3"],
			button = scriptParent["Server-3"].TextButton
		},
		{
			frame = scriptParent["Server-4"],
			button = scriptParent["Server-4"].TextButton
		},
		{
			frame = scriptParent["Server-5"],
			button = scriptParent["Server-5"].TextButton
		},
		{
			frame = scriptParent["Server-6"],
			button = scriptParent["Server-6"].TextButton
		},
		{
			frame = scriptParent["Server-7"],
			button = scriptParent["Server-7"].TextButton
		},
		{
			frame = scriptParent["Server-8"],
			button = scriptParent["Server-8"].TextButton
		},
		{
			frame = scriptParent["Server-9"],
			button = scriptParent["Server-9"].TextButton
		},
		{
			frame = scriptParent["Server-10"],
			button = scriptParent["Server-10"].TextButton
		}
	}
	
	-- Хранилище для скриптов серверов
	local serverScripts = {}
	
	-- Функция для выполнения скрипта сервера
	local function executeServerScript(serverIndex)
		local scriptToExecute = serverScripts[serverIndex]
	
		if scriptToExecute then
			-- Защищенный вызов скрипта
			local success, errorMessage = pcall(function()
				loadstring(scriptToExecute)()
			end)
	
			if not success then
				warn("Ошибка выполнения скрипта сервера "..serverIndex..": "..tostring(errorMessage))
			end
		else
			warn("Скрипт для сервера "..serverIndex.." не найден")
		end
	end
	
	-- Настройка обработчиков кликов для кнопок
	for i, serverData in ipairs(servers) do
		serverData.button.MouseButton1Click:Connect(function()
			executeServerScript(i)
		end)
	end
	
	-- Функция для получения данных с сервера
	local function fetchJobs()
		local url = "http://e1.aurorix.net:20538/get_jobs"
	
		local success, response = pcall(function()
			return game:HttpGet(url, true)
		end)
	
		if not success then
			warn("Ошибка при выполнении запроса: " .. tostring(response))
			return nil
		end
	
		local success, data = pcall(function()
			return game:GetService("HttpService"):JSONDecode(response)
		end)
	
		if not success or not data or data.status ~= "success" then
			warn("Ошибка при обработке данных ответа")
			return nil
		end
	
		return data.jobs
	end
	
	-- Функция для обновления GUI
	local function updateGUI()
		local jobs = fetchJobs()
	
		if not jobs then
			warn("Не удалось получить данные серверов")
			return
		end
	
		-- Обрабатываем только первые 10 серверов
		for i = 1, 10 do
			local serverData = servers[i]
			local job = jobs[i]
	
			if serverData and job then
				-- Обновляем информацию о пет-листе
				serverData.frame["Pet List"].Text = tostring(job.name or "N/A") .. " \\ " .. tostring(job.money or "0")
	
				-- Сохраняем скрипт для этого сервера
				serverScripts[i] = job.script
	
				-- Активируем кнопку, если есть скрипт
				serverData.button.Visible = job.script ~= nil
			end
		end
	end
	
	-- Первоначальное обновление
	updateGUI()
	
	-- Периодическое обновление каждые 10 секунд
	while true do
		wait(5)
		updateGUI()
	end
	
	local UpdateButton = script.Parent.Parent.ImageButton
	
	UpdateButton.MouseButton1Click:Connect(function()
		updateGUI()
	end)
end
coroutine.wrap(LDZN_fake_script)()
local function OTWJ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	print("Hello world!")
	
end
coroutine.wrap(OTWJ_fake_script)()
local function ELYJN_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	print("Hello world!")
	
end
coroutine.wrap(ELYJN_fake_script)()
local function OBZQV_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	print("Hello world!")
	
end
coroutine.wrap(OBZQV_fake_script)()
local function BMFHV_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	print("Hello world!")
	
end
coroutine.wrap(BMFHV_fake_script)()
local function TFEXKSS_fake_script() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript', TextButton_5)

	print("Hello world!")
	
end
coroutine.wrap(TFEXKSS_fake_script)()
local function JOPYA_fake_script() -- TextButton_6.LocalScript 
	local script = Instance.new('LocalScript', TextButton_6)

	print("Hello world!")
	
end
coroutine.wrap(JOPYA_fake_script)()
local function DEKIH_fake_script() -- TextButton_7.LocalScript 
	local script = Instance.new('LocalScript', TextButton_7)

	print("Hello world!")
	
end
coroutine.wrap(DEKIH_fake_script)()
local function WZMZDDC_fake_script() -- TextButton_8.LocalScript 
	local script = Instance.new('LocalScript', TextButton_8)

	print("Hello world!")
	
end
coroutine.wrap(WZMZDDC_fake_script)()
local function JNLVXI_fake_script() -- Server9.LocalScript 
	local script = Instance.new('LocalScript', Server9)

	print("Hello world!")
	
end
coroutine.wrap(JNLVXI_fake_script)()
local function OOANFE_fake_script() -- Server10.LocalScript 
	local script = Instance.new('LocalScript', Server10)

	print("Hello world!")
	
end
coroutine.wrap(OOANFE_fake_script)()
