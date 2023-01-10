if game.PlaceId == 10583817431
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Meme Hub l TIG l", HidePremium = false, SaveConfig = true, ConfigFolder = "Memermanner", IntroText = "Trollge Incident game"})

-- Values
getgenv().Enabled = false
getgenv().Enabled2 = false

-- locals
local LocalPlayer = game.Players.LocalPlayer
local Backpack = LocalPlayer.Backpack
local Character = LocalPlayer.Character
local Humanoid = Character:WaitForChild("Humanoid")
local OilTool = Backpack:WaitForChild("Oil Cup")
local BloodTool = Backpack:WaitForChild("Blood Cup")
local Players = game.Players.LocalPlayer


OrionLib:MakeNotification({
	Name = "Successfully Executed!",
	Content = "Executed without errors!",
	Image = "rbxassetid://4483345998",
	Time = 1
})

OrionLib:MakeNotification({
	Name = "Hello.",
	Content = "You are logged in as "..Players.Name.."!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- TABS

local MTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- TOGGLES

MTabTab:AddToggle({
	Name = "Auto Collect Cups",
	Default = false,
	Callback = function(Value)
		getgenv().Enabled = Value
        AutoGet()
	end    
})

MTabTab:AddToggle({
	Name = "Auto Unequip Tools",
	Default = false,
	Callback = function(Value)
		getgenv().Enabled2 = Value
        AUE()
	end    
})

-- Buttons

MiTab:AddButton({
	Name = "Keyboard for mobile",
	Callback = function()
      		KB()
  	end    
})

MiTab:AddButton({
	Name = "Infiniteyield",
	Callback = function()
      		IY()
  	end    
})

CTab:AddLabel("made by silence wench")




-- FUNCTIONS
function AutoGet()
    local playerhead = game.Players.LocalPlayer.Character.Head
    while task.wait() do
        if not getgenv().Enabled then break; end
        for i, v in pairs(game:GetService("Workspace").CupsFolder:GetDescendants) do
            if v.ClassName == "TouchInterest" and v.Parent then
                firetouchinterest(playerhead, v.Parent, 0)
            end
        end
    end
end

function GetOnce()
    local playerhead = game.Players.LocalPlayer.Character.Head
    if not getgenv().Enabled then break; end
    for i, v in pairs(game:GetService("Workspace").CupsFolder:GetDescendants) do
        if v.ClassName == "TouchInterest" and v.Parent then
            firetouchinterest(playerhead, v.Parent, 0)
        end
    end
end

function IY()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end 

function KB()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end

function AUE()
    while Enabled2 == true do
        Humanoid:Unequip()
    end
end

end
OrionLib:Init()
