Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.0, y = 1.0, z = 1.0 }
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
      { x = 354.77, y = -2026.88, z = 24.70},
    },

   Vehicles = {
      {
        Spawner    = { x = 313.53, y = -2040.69, z = 19.94 },
        SpawnPoint = { x = 321.99, y = -2029.2, z = 19.78 },
        Heading    = 50.32,
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
      { x = 321.99, y = -2029.2, z = 19.78 },
      
    },

    BossActions = {
      { x = 361.22, y = -2041.49, z = 24.70 },
    },

  },

}