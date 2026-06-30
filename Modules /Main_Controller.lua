local Main_Controller = {}

local SubModules:Folder = script:WaitForChild("Sub-Modules")

Main_Controller.Services = require(SubModules.Services)

Main_Controller.FadeManager = require(SubModules.Fade_Manager)

return Main_Controller
