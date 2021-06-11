Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.GangStations = {

  Gang = {

    AuthorizedWeapons = {
      --{ name = 'WEAPON_COMBATPISTOL',     price = 30000 },
      --{ name = 'WEAPON_ASSAULTSMG',       price = 1125000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 1500000 },
      --{ name = 'WEAPON_SAWNOFFSHOTGUN',      price = 60000 },
	    --{ name = 'WEAPON_FLARE'		,        price = 50 },
      --{ name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
      --{ name = 'WEAPON_APPISTOL',         price = 70000 },
      --{ name = 'WEAPON_CARBINERIFLE',     price = 100000 },
      --{ name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    },

	  AuthorizedVehicles = {
		  { name = 'xls2',  label = 'Xls' },
      { name = 'ztype',    label = 'z-type' },
      { name = 'guardian',   label = 'Guardian' },
      { name = 'Baller4',   label = 'Baller Custom' },
      
	  },

    Cloakrooms = {
      --{ x = 144.57633972168, y = -2203.7377929688, z = 3.6880254745483},
    },

    Armories = {
      { x = -133.26, y = -1608.64, z = 34.10},
    },

    Vehicles = {
      {
        Spawner    = { x = -149.08, y = -1662.44, z = 31.78 },
        SpawnPoint = { x = -155.69, y = -1657.34, z = 31.79 },
        Heading    = 322.23,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 11322323.30500793457, y = -3109.3337402344, z = 5.0060696601868 },
        SpawnPoint = { x = 33112.94457244873, y = -3102.5942382813, z = 5.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
    { x = -155.69, y = -1657.34, z = 31.79 },
      
    },

    BossActions = {
      { x = -150.28, y = -1588.87, z = 34.10 },
    },

  },

}