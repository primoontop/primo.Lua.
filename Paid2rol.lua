-- Roblox Troll UI Script
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local SubText = Instance.new("TextLabel")
local Emoji = Instance.new("TextLabel")

-- Properties
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black Background
Frame.Size = UDim2.new(1, 0, 1, 0) -- Full Screen
Frame.Active = true

TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.3, 0)
TextLabel.Size = UDim2.new(1, 0, 0.2, 0)
TextLabel.Font = Enum.Font.Arcade -- Pixel style font
TextLabel.Text = "UMASA KA BA BOI?"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red
TextLabel.TextScaled = true

SubText.Parent = Frame
SubText.BackgroundTransparency = 1
SubText.Position = UDim2.new(0, 0, 0.5, 0)
SubText.Size = UDim2.new(1, 0, 0.1, 0)
SubText.Font = Enum.Font.SourceSansBold
SubText.Text = "HAHAHA MUKA KANG SCRIPT , IT'S A PRANK!"
SubText.TextColor3 = Color3.fromRGB(255, 255, 255) -- White
SubText.TextScaled = true

Emoji.Parent = Frame
Emoji.BackgroundTransparency = 1
Emoji.Position = UDim2.new(0.4, 0, 0.6, 0)
Emoji.Size = UDim2.new(0.2, 0, 0.2, 0)
Emoji.Text = "LF SINGLE MOM NA WALANG ANAK "
Emoji.TextScaled = true

-- Warning: This is just a UI. To remove it, the player needs to reset or leave.
print("Troll UI Loaded!")
