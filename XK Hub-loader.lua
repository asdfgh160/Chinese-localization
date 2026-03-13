local repo = 'https://raw.githubusercontent.com/DevSloPo/obsidian_UI/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local playerName = game:GetService("Players").LocalPlayer.Name

Library:Notify({
    Title = "XoneScriptK Hub",
    Description = "Welcome, " .. playerName .. "! Loading XK Hub loader. Join our Discord for updates and news.",
    Time = 6
})

local startTime = tick()      
loadstring(game:HttpGet("https://raw.githubusercontent.com/asdfgh160/Chinese-localization/refs/heads/main/XK-Loader.lua"))()
local endTime = tick()
local loadTime = string.format("%.2f", endTime - startTime)

Library:Notify({
    Title = "XoneScriptK Hub",
    Description = "Loader completed! Time taken: " .. loadTime .. " seconds",
    Time = 6
})

local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://4989569018"
Sound.Parent = game:GetService("SoundService")
Sound.Volume = 5
Sound:Play()
Sound.Ended:Wait()
Sound:Destroy()
