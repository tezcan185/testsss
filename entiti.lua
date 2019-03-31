DarkRP.createEntity("Example entity", {
	ent = "money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 5000,
	max = 2,
	cmd = "buyexample",

	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	allowed = {TEAM_GUN, TEAM_MOB},
	customCheck = function(ply) return ply:GetUserGroup() == "donator" end,
	CustomCheckFailMsg = function(ply, entTable) return "You need to be a donator to buy this entity!" end,
	getPrice = function(ply, price) return ply:GetUserGroup() == "donator" and price * 0.9 or price end,
	getMax = function(ply) return ply:GetUserGroup() == "donator" and 10 or 2 end,
        spawn = function(ply, tr, tblEnt) return ents.Create("prop_physics") end, -- function to override spawning mechanics. MUST return an entity!
        category = "Other", -- The name of the category it is in. Note: the category must be created!
        sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
        allowTools = false, -- Whether players (including superadmins!) are allowed to use other tools than just remover. Defaults to false
})
