local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Library/refs/heads/main/remake.lua"))()
local Window = redzlib:MakeWindow({
    Title = "kid begalitas hub",
    SubTitle = "Farma aura",
    SaveFolder = "brook.json"
})

-- service functions
local function drip()
  loadslotring(game:HttpGet("https://raw.githubusercontent.com/realgengar/Main/refs/heads/main/base.lua"))()                                                   
end

--tabs service
local Tab1 = Window:MakeTab({ Name = "infor", Icon = "infor" })
local Tab2 = Window:MakeTab({ Name = "autofarm", Icon = "home" })
local Tab3 = Window:MakeTab({ Name = "security", Icon = "shield" })

--sections
Tab1:AddSection("infor script")
Tab2:AddSection("settings farm")
Tab3:AddSection("settings security")

                ------///function autofarm///-------
Tab2:AddButton({
    Name = "Executar script drip",
    Callback = function()
           drip()
    end
})


Tab2:AddSlider({
    Name = "walkSpeed",
    Min = 5,
    Max = 500,
    Default = 45,
    Callback = function(value)
        speeddrip = value
    end
})
Tab2:AddToggle({
    Name = "ativa walk",
    Default = false,
    Callback = function(value)
    _G.atidrip = value
       if not value then 
          if LocalPlayer.Character and LocalPlayer.Character.Humanoid then
             LocalPlayer.Character.Humanoid.WalkSpeed = originalWalkSpeed
             end
        end
    end
})

RunService.RenderStepped:Connect(function()
     id _G.atidrip and LocalPlayer.Character and LocalPlayer.Character.Humaoid then
    LocalPlayer.Character.Humanoid.WalkSpeed =  speeddrip
 end        
end)



