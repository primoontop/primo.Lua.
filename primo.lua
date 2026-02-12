--[[ 
    GUI LOADED WITH KEY SYSTEM & AUTO-SAVE
    CREDITS: MADE BY PRIMO 
]]--

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local HttpService = game:GetService("HttpService")

-- [ SETTINGS ]
local MyWebhookURL = "https://discord.com/api/webhooks/1471444039269093492/TXAlu-WePcGR6NAVDQbk0vCg9EtHTSqF9eMiaKPT5nyTqqbFonvBN6cUTL3KpwJCZr3k"
local CorrectKey = "PRIMO_ON_TOP" 
local FileName = "PrimoKey_Save.txt" -- Pangalan ng file na mase-save

-- [ DISCORD LOGGING FUNCTION ]
local function SendToDiscord(status, enteredKey)
    local player = game.Players.LocalPlayer
    local data = {
        ["embeds"] = {{
            ["title"] = " Primo Script Execution",
            ["color"] = (status == "SUCCESS" or status == "AUTO-LOGIN") and 65280 or 16711680,
            ["fields"] = {
                {["name"] = "Player Name", ["value"] = player.Name, ["inline"] = true},
                {["name"] = "Status", ["value"] = status, ["inline"] = true},
                {["name"] = "Key Used", ["value"] = enteredKey, ["inline"] = false},
                {["name"] = "Game", ["value"] = tostring(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name), ["inline"] = false}
            },
            ["footer"] = {["text"] = "made by primo"}
        }}
    }
    
    local request = request or http_request or (syn and syn.request)
    if request then
        request({
            Url = MyWebhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    end
end

-- [ FUNCTION PARA MAG-LOAD NG MAIN SCRIPT ]
local function LoadMainScript()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/primoontop/primo.Lua./refs/heads/main/obfuscated_script-1770888289609.lua.txt"))()
end

-- [ AUTO-SAVE CHECK ]
if isfile(FileName) then
    if readfile(FileName) == CorrectKey then
        SendToDiscord("AUTO-LOGIN", "Saved Key Used")
        OrionLib:MakeNotification({
            Name = "Auto-Login",
            Text = "Welcome back! Key verified from storage.",
            Time = 5
        })
        LoadMainScript()
        return -- Ititigil na ang execution ng UI sa baba dahil naka-login na
    end
end

-- [ KEY SYSTEM UI ]
local Window = OrionLib:MakeWindow({
    Name = "Primo Hub | Key System", 
    HidePremium = false, 
    SaveConfig = true, 
    IntroText = "made by primo"
})

local Tab = Window:MakeTab({
    Name = "Verification",
    Icon = "rbxassetid://4483362458",
    PremiumOnly = false
})

Tab:AddLabel("Made by Primo - Key required for first time use.")

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        if Value == CorrectKey then
            -- I-save ang key sa computer ng user
            writefile(FileName, Value)
            
            OrionLib:MakeNotification({
                Name = "Access Granted",
                Text = "Key Saved! Loading script...",
                Time = 5
            })
            
            SendToDiscord("SUCCESS", Value)
            LoadMainScript()
            
            wait(2)
            OrionLib:Destroy()
        else
            OrionLib:MakeNotification({
                Name = "Access Denied",
                Text = "Wrong Key! Please try again.",
                Time = 5
            })
            SendToDiscord("FAILED ATTEMPT", Value)
        end
    end	  
})

Tab:AddButton({
    Name = "Get Key Link",
    Callback = function()
        setclipboard("https://link-ng-key-mo-dito.com") 
        OrionLib:MakeNotification({Name = "System", Text = "Link copied!", Time = 3})
    end    
})

OrionLib:Init()
