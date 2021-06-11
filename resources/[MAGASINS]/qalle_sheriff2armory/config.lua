Config = {}

-- Turn this to false if you want everyone to use this.
Config.OnlyPolicemen = true

-- This is how much ammo you should get per weapon you take out.
Config.ReceiveAmmo = 100

-- You don't need to edit these if you don't want to.
Config.Armory = { ["x"] = -440.02, ["y"] = 5991.93, ["z"] = 31.72, ["h"] = 323.7 }
Config.ArmoryPed = { ["x"] = -438.85, ["y"] = 5993.19, ["z"] = 31.72, ["h"] =133.52, ["hash"] = "s_m_y_sheriff_01" }


-- This is the available weapons you can pick out.
Config.ArmoryWeapons = {
	
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_revolver", ["type"] = "pistol" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" },
	{ ["hash"] = "weapon_sniperrifle", ["type"] = "sniper" }

}
