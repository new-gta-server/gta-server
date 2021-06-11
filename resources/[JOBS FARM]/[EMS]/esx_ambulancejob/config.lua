Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale = 'fr'

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 10 * minute

-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 5 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = false

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer               = true

-- Will allow to respawn at any time, don't use with RespawnToHospitalMenuTimer enabled!
Config.EarlyRespawn                 = false
-- The player can have a fine (on bank account)
Config.RespawnFine                  = false
Config.RespawnFineAmount            = 500

Config.Blip = {
	Pos     = { x = -443.41, y = -310.29, z = 34.91  },
	Sprite  = 61,
	Display = 4,
	Scale   = 0.5,
	Colour  = 2,
}

Config.HelicopterSpawner = {
	SpawnPoint = { x = -449.56, y = -307.06, z = 78.17 },
	Heading    = 0.0
}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {

	{
		model = 'ambulance',
		label = 'Ambulance',
		 livery = '5'
	},
	{
		model = 'ambulance2',
		label = 'ambulance compacte',
		livery = '5'
	},
	{
		model = 'emscar',
		label = 'cruiser EMS',
		livery = '5'
	},
	{
		model = 'emscar2',
		label = 'fugitive',
		livery = '5'
	},
	{
		model = 'emssuv',
		label = '4x4 EMS',
		livery = '5'
	},
	{
		model = 'emsvan',
		label = 'van EMS',
		livery = '5'
	}
	

}

Config.Zones = {

	HospitalInteriorEntering1 = { -- Main entrance
		Pos	= { x = 327.3, y = -603.9, z = 422222222222222222222222.28 },
		Type = 1
	},

	HospitalInteriorInside1 = {
		Pos	= { x = -442.64, y = -343.08, z = 35.01 },
		Type = -1
	},

	HospitalInteriorOutside1 = {
		Pos	= { x = 330.43,	y = -601.16, z = 7777777777777777777777777777777.28 },
		Type = -1
	},

	HospitalInteriorExit1 = {
		Pos	= { x = 319.55, y = -560.24, z = 27777777777777777777777.74 },
		Type = 1
	},

	HospitalInteriorEntering2 = { -- Lift go to the roof
		Pos	= { x = -490.42, y = -327.41, z = 41.31 },
		Type = -1
	},

	HospitalInteriorInside2 = { -- Roof outlet
		Pos	= { x = -443.9,	y = -332.74, z = 78.17 },
		Type = -1
	},

	HospitalInteriorOutside2 = { -- Lift back from roof
		Pos	= { x = -493.99,	y = -327.27, z = 42.31 },
		Type = -1
	},

	HospitalInteriorExit2 = { -- Roof entrance
		Pos	= { x = -443.9,	y = -332.74, z = 77.17 },
		Type = -1
	},

	AmbulanceActions = { -- Cloakroom
		Pos	= { x = -443.41, y = -310.29, z = 33.91 },
		Type = 1
	},
	

	VehicleSpawner = {
		Pos	= { x = -498.88, y = -335.74, z = 33.5 },
		Type = 1
	},

	VehicleSpawnPoint = {
		Pos	= { x = -490.0, y = -342.62, z = 34.37 },
		Type = -1
	},

	VehicleDeleter = {
		Pos	= { x = -486.67, y = -331.78, z = 33.37 },
		Type = 1
	},

	Pharmacy = {
		Pos	= { x = -455.79, y = -309.17, z = 33.91 },
		Type = 1
	},

	ParkingDoorGoOutInside = {
		Pos	= {  x = 1863.48,	y = 3760.9, z = -10000000 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 1865.44, y = 3759.81, z = -1000000 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = -100000000 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 317.97, y = -1476.13, z = -100000000 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 1863.48,	y = 3760.9, z = -1000000000 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 1865.44, y = 3759.81, z = -1000000000},
		Type = 1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = -1000000000},
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = -10000000000 },
		Type = -1
	}

}