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
