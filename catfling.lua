--stuff
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
print("IY Was Loaded With Code 1")
local players = game:GetService("Players")
print("players Was Loaded With Code 1")
local player = players.LocalPlayer
print("player Was Loaded With Code 1")
local rootPart = player.Character:WaitForChild("HumanoidRootPart")
print("rootPart Was Loaded With Code 1")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
print("Orion Loadstring Was Loaded With Code 1")
--orion

local Window = OrionLib:MakeWindow({Name = "CatFling", HidePremium = false, SaveConfig = true, ConfigFolder = "catflinglol"})
print("Orion Loaded")

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
--notifs
OrionLib:MakeNotification({
	Name = "🚨 CatFling 🚨",
	Content = "Welcome to CatFling",
	Image = "rbxassetid://7634887655",
	Time = 5
})
wait(2)
OrionLib:MakeNotification({
	Name = "🚨 CatFling 🚨",
	Content = "Use flyfling, nosit and freecam to make this work!",
	Image = "rbxassetid://7634887655",
	Time = 5
})
--logic
-- fling logic
local function tp()
    while true do
        local randomPlayer = players:GetPlayers()[math.random(1, #players:GetPlayers())]
        if randomPlayer ~= player and randomPlayer.Character and randomPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPosition = randomPlayer.Character.HumanoidRootPart.Position
            rootPart.CFrame = CFrame.new(targetPosition)
        end
        wait(tpInterval)
    end
end
--buttons
Tab:AddButton({
	Name = "Fling On",
	Callback = function()
        local screenGui = Instance.new("ScreenGui")
local runButton = Instance.new("TextButton")

screenGui.Parent = player:WaitForChild("PlayerGui")

runButton.Size = UDim2.new(0, 100, 0, 50)
runButton.Position = UDim2.new(0.5, -50, 0.5, -25)
runButton.Text = "Start TPing"
runButton.Parent = screenGui

runButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    tp()
end)

OrionLib:MakeNotification({
	Name = "🚨 CatFling 🚨",
	Content = "Click Start TPing to start!",
	Image = "rbxassetid://7634887655",
	Time = 5
})
  	end    
})

Tab:AddButton({
	Name = "Fling Off",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "🚨 CatFling 🚨",
            Content = "Coming Soon. Reset to turn off.",
            Image = "rbxassetid://7634887655",
            Time = 5
        })
  	end    
})

Tab:AddButton({
	Name = "Destroy GUI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

local function ihatelife()
    print("working")
end

OrionLib:Init()
