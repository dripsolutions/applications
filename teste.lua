---------------------//// basic lua  ////-----------------------------


local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Library/refs/heads/main/remake.lua"))()
local Window = redzlib:MakeWindow({
    Title = "srrrrrrrrrrrrrrrrrrrrrrrr < Scripts >",
    SubTitle = "by all",
    SaveFolder = "brook.json"
})

-- service functions
local function BROOKHAVEN()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Brookhaven/refs/heads/main/Source.Lua"))()
    
end
local function SpeedLegends()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/SpeedLegends-/refs/heads/main/Source.lua"))()
    
end
local function MemeSea()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/MemeSea/refs/heads/main/Source.lua"))()
    
end
local function BreakIn2()
  loadstring(game:HttpGet(https://raw.githubusercontent.com/realgengar/BreakIn2/refs/heads/main/Source.lua"))()
    
end
local function night()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/night/refs/heads/main/florest.lua"))()
    
end
--tabs service
local Tab1 = Window:MakeTab({ Name = "infor", Icon = "infor" })
local Tab2 = Window:MakeTab({ Name = "autofarm", Icon = "home" })
local Tab3 = Window:MakeTab({ Name = "security", Icon = "shield" })

--sections
Tab1:AddSection("infor script")
Tab2:AddSection("settings farm")
Tab3:AddSection("settings security")

                ------///function EXECUTE///-------
Tab:AddSection("execution hubs")
Tab2:AddButton({
    Name = "99 NUGHTS IN FLOREST",
    Callback = function()
           BROOHAVEN()
    end
}) 
Tab2:AddButton({
    Name = "Speed Legends",
    Callback = function()
          SpeedLegends()
    end
}) 
Tab2:AddButton({
    Name = "MEME SEA",
    Callback = function()
         MemeSea()
    end
}) 
Tab2:AddButton({
    Name = "BREAK IN 2",
    Callback = function()
            BreakIn2()
    end
}) 
Tab2:AddButton({
    Name = "BROOKHAVEN RP",
    Callback = function()
           BROOKHAVEN()
    end
}) 
        
                ------///function PLAYER///-------
Tab:AddSection("Local player humanoid")
local dripSPEED = LocalPlayer.Character and LocalPlayer.Character.Humanoid.WalkSpeed or 20-
local speeddrip = 20
Tab2:AddSlider({
    Name = "WALK-SPEED < SLIDE >",
    Min = 5,
    Max = 500,
    Default = 45,
    Callback = function(drip)
        speeddrip = drip
    end
})
Tab2:AddToggle({
    Name = "SPEED WALK < DRIP > ",
    Default = false,
    Callback = function(drip)
    _G.atidrip = drip
       if not value then 
          if LocalPlayer.Character and LocalPlayer.Character.Humanoid then
             LocalPlayer.Character.Humanoid.WalkSpeed = dripSPEED
             end
        end
    end
})

RunService.RenderStepped:Connect(function()
     if _G.atidrip and LocalPlayer.Character and LocalPlayer.Character.Humaoid then
    LocalPlayer.Character.Humanoid.WalkSpeed = speeddrip
 end        
end)
                ------///function CONFIG///-------

Tab2:AddButton({
    Name = "RESET POSITION",
    Callback = function()
     local player = game.Players.LocalPlayer
         local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if root then
            root.CFrame = CFrame.new(0, 10, 0)
        end
    end
})
