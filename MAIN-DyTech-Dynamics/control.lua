require "defines"
require "config"
require "database/research"
require "database/research-system"
require "scripts/automatic-research-system"
require "scripts/auto-researcher"
require "scripts/manual-research-system"
require "scripts/rs-functions"
require "scripts/functions"
require "scripts/gui"
require "scripts/guinames"
require "scripts/test-functions"

--[[Debug Functions]]--
debug_master = true -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
debug_GUI = false -- debugger for GUI
function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end

function PlayerPrint(message)
	if glob.Messages then
		for _,player in pairs(game.players) do
			player.print(message)
		end
	end
end

game.oninit(function()
	if not glob.ResearchSystem then glob.ResearchSystem = {} end
fs.Startup()
end)

game.onsave(function()

end)

game.onload(function()
	if not glob.ResearchSystem then glob.ResearchSystem = {} end
	if not glob.ResearchSystem.Unlocked then glob.ResearchSystem.Unlocked = {} end
end)

game.onevent(defines.events.ontick, function(event)
	if Research_System and glob.ResearchSystem.RSAutomatic then	
		ARS.AutomaticRS(event)
	end
	if game.tick%300==1 then
		GUI.CreateButton()
	end
end)

game.onevent(defines.events.onresearchstarted, function(event)
if Research_System then	
	if not glob.ResearchSystem.science then glob.ResearchSystem.science=0 end
	debug("Research Started ("..tostring(event.research)..")")
	if not glob.Technology[event.research].Started then
		local ingredients = game.forces.player.technologies[event.research].researchunitcount
		glob.ResearchSystem.science=glob.ResearchSystem.science+(ingredients/10)
		debug("Research found in global table and increased: ("..tostring(ingredients/10)..") Total now: "..tostring(glob.ResearchSystem.science))
		glob.Technology[event.research].Started = true
	end
else 	
	glob.Technology[event.research].Started = true
end
end)

game.onevent(defines.events.onresearchfinished, function(event)
if Auto_Researcher then
	AutoResearch.AutoMode()
end
if Research_System then	
	if not glob.ResearchSystem.science then glob.ResearchSystem.science=0 end
	debug("Research Finished ("..tostring(event.research)..")")
	if not glob.Technology[event.research].Finished then
		local ingredients = game.forces.player.technologies[event.research].researchunitcount
		glob.ResearchSystem.science=glob.ResearchSystem.science+((ingredients/10)*9)
		debug("Research found in global table and increased: ("..tostring((ingredients/10)*9)..") Total now: "..tostring(glob.ResearchSystem.science))
		glob.Technology[event.research].Finished = true
	end
else 	
	glob.Technology[event.research].Finished = true
end
end)

game.onevent(defines.events.onguiclick, function(event)
local playerIndex = event.playerindex
local player = game.players[playerIndex]
	if event.element.name == "DynamicsButton" then
		GUI.closeGUI("all", playerIndex)
		GUI.showDynamicsMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.CloseButton) then
		GUI.closeGUI("all", playerIndex)
		RSF.ClearToUnlock()
	elseif event.element.name:find(guiNames.MRSBackButton1) then
		GUI.closeGUI("ResearchUnlock", playerIndex)
	elseif event.element.name:find(guiNames.MRSBackButton2) then
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.MRSUnlockButton) then
		RSF.RSUnlock(glob.ResearchSystem.ToUnlock)
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif RSDatabase.ItemUnlock[event.element.name] then
		glob.ResearchSystem.ToUnlock = event.element.name
		GUI.closeGUI("ResearchUnlock", playerIndex)
		MRS.showUnlockGUIBase(playerIndex, glob.ResearchSystem.ToUnlock)
	elseif event.element.name:find(guiNames.ResearchButton) then
		if glob.ResearchSystem.RSManual then
			GUI.closeGUI("all", playerIndex)
			MRS.showResearchMainGUI(playerIndex)
		else
			PlayerPrint({"rs-manual-disabled"})
		end
	elseif event.element.name == "DebugAddPoints" then
		glob.ResearchSystem.science = glob.ResearchSystem.science + 100000
		GUI.closeGUI("all", playerIndex)
		MRS.showResearchMainGUI(playerIndex)
	elseif event.element.name:find(guiNames.Tier1Base) then
		MRS.showUnlockTableGUI(playerIndex, 1)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier2Base) then
		MRS.showUnlockTableGUI(playerIndex, 2)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier3Base) then
		MRS.showUnlockTableGUI(playerIndex, 3)
		GUI.closeGUI("ResearchMain", playerIndex)
	elseif event.element.name:find(guiNames.Tier4Base) then
		MRS.showUnlockTableGUI(playerIndex, 4)
		GUI.closeGUI("ResearchMain", playerIndex)
	end
end)

remote.addinterface("DyTech-Dynamics",
{  
	TestResearch = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				TestFunctions.TestResearch(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			TestFunctions.TestResearch(pIndex)
		end
	end,
	
	RSRemote = function(name)
		if Research_System then
			RSF.RSUnlock(name)
		else
			PlayerPrint({"rs-disabled"})
		end
	end,
	
	DataDumpDatabase = function()
		glob.DatabaseNames = {} 
		glob.DatabaseNumbers = {}
		for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		local data = RSDatabase.ItemUnlock[RecipeName]
			table.insert(glob.DatabaseNames,RecipeName)
			table.insert(glob.DatabaseNumbers,data.Points)
		end
		game.makefile("DataDump/Database-Base-Names.xls", serpent.block(glob.DatabaseNames))
		game.makefile("DataDump/Database-Base-Numbers.xls", serpent.block(glob.DatabaseNumbers))
	end,
	
	DataDump = function()
		game.makefile("DataDump/ResearchSystem.txt", serpent.block(glob.ResearchSystem))
		game.makefile("DataDump/Technology.txt", serpent.block(glob.Technology))
	end,
	
	SwitchRS = function()
		if glob.ResearchSystem.RSAutomatic==true then
			glob.ResearchSystem.RSAutomatic = false
			glob.ResearchSystem.RSManual = true
			PlayerPrint({"rs-manual"})
		else
			glob.ResearchSystem.RSAutomatic = true
			glob.ResearchSystem.RSManual = false
			PlayerPrint({"rs-automatic"})
		end
	end,
	
	ToggleMessages = function()
		if glob.Messages==true then
			PlayerPrint({"msg-off"})
			glob.Messages = false
		else
			glob.Messages = true
			PlayerPrint({"msg-on"})
		end
	end
})