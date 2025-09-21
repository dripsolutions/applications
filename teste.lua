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
 Tab2:AddDropdown({
    Name = "Method farm",
    Options = {"drip", "drip", "drip"},
    Default = "Methods",
    Callback = function(value)
        print("tool select:", value)
    end
})

Tab2:AddButton({
    Name = "Executar method",
    Description = "clique apos seleciona",
    Callback = function()
           drip()
    end
})








