-- SIMPLE VISUAL TROLL UI (No Sound)
local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Burahin ang lumang version para malinis
if PlayerGui:FindFirstChild("SimpleTroll") then
    PlayerGui.SimpleTroll:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SimpleTroll"
ScreenGui.Parent = PlayerGui
ScreenGui.IgnoreGuiInset = true -- Takop buong screen
ScreenGui.DisplayOrder = 999999

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(1, 0, 1, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Active = true
MainFrame.Parent = ScreenGui

-- UMASA KA BA BOI? Text
local RainbowText = Instance.new("TextLabel")
RainbowText.Size = UDim2.new(1, 0, 0.3, 0)
RainbowText.Position = UDim2.new(0, 0, 0.2, 0)
RainbowText.BackgroundTransparency = 1
RainbowText.Font = Enum.Font.Arcade
RainbowText.Text = "UMASA KA BA BOI?"
RainbowText.TextScaled = true
RainbowText.Parent = MainFrame

-- Subtext
local SubText = Instance.new("TextLabel")
SubText.Size = UDim2.new(1, 0, 0.1, 0)
SubText.Position = UDim2.new(0, 0, 0.5, 0)
SubText.Text = "HAHAHA MUKA KANG SCRIPT, IT'S A PRANK!"
SubText.TextColor3 = Color3.fromRGB(255, 255, 255)
SubText.BackgroundTransparency = 1
SubText.Font = Enum.Font.SourceSansBold
SubText.TextScaled = true
SubText.Parent = MainFrame

-- Emoji/LF Text
local FunnyText = Instance.new("TextLabel")
FunnyText.Size = UDim2.new(1, 0, 0.1, 0)
FunnyText.Position = UDim2.new(0, 0, 0.65, 0)
FunnyText.Text = "LF SINGLE MOM NA WALANG ANAK"
FunnyText.TextColor3 = Color3.fromRGB(255, 255, 0)
FunnyText.BackgroundTransparency = 1
FunnyText.Font = Enum.Font.SourceSansBold
FunnyText.TextScaled = true
FunnyText.Parent = MainFrame

-- ANIMATION LOOP: Rainbow + Shake + Flashing
task.spawn(function()
    local hue = 0
    while true do
        -- Rainbow effect sa main text
        RainbowText.TextColor3 = Color3.fromHSV(hue, 1, 1)
        hue = hue + 0.02
        if hue >= 1 then hue = 0 end
        
        -- Shake effect para sa main text
        RainbowText.Position = UDim2.new(0, math.random(-5, 5), 0.2, math.random(-5, 5))
        
        -- Strobe Effect sa Background (Optional: kung gusto mo ng flash)
        MainFrame.BackgroundColor3 = Color3.fromRGB(math.random(0, 15), 0, 0)
        
        task.wait(0.03)
    end
end)

print("Visual Troll Lo
  aded!")
