X = {}

local IBUtil = require(GetScriptDirectory() .. "/ItemBuildUtility");
local npcBot = GetBot();
local talents = IBUtil.FillTalenTable(npcBot);
local skills  = IBUtil.FillSkillTable(npcBot, IBUtil.GetSlotPattern(1));

X["items"] = { 
	"item_magic_wand",
	"item_power_treads_int",
	"item_hurricane_pike",
	"item_glimmer_cape",
	"item_ultimate_scepter",
	"item_bloodthorn",
	"item_sheepstick",
	"item_ultimate_scepter_2",
	"item_shivas_guard"
};			

X["builds"] = {
	{3,1,1,3,1,4,1,3,3,2,4,2,2,2,4},
	{3,1,1,2,1,4,1,3,3,3,4,2,2,2,4}
}

X["skills"] = IBUtil.GetBuildPattern(
	  "normal", 
	  IBUtil.GetRandomBuild(X['builds']), skills, 
	  {1,4,6,7}, talents
);

return X