Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.GangStations = {

  Gang = {

    AuthorizedWeapons = {
     -- { name = 'WEAPON_COMBATPISTOL',     price = 30000 },
      --{ name = 'WEAPON_ASSAULTSMG',       price = 1125000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 1500000 },
      --{ name = 'WEAPON_SAWNOFFSHOTGUN',      price = 60000 },
      --{ name = 'WEAPON_FLARE'   ,        price = 50 },
      --{ name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
      --{ name = 'WEAPON_APPISTOL',         price = 70000 },
     -- { name = 'WEAPON_CARBINERIFLE',     price = 100000 },
      --{ name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    },

    AuthorizedVehicles = {
      { name = 'buccaneer2',  label = 'Véhicule Frime' },
      { name = 'bmx',    label = 'Vélo' },
      { name = 'blazer',   label = 'Quad' },
    },

    Cloakrooms = {
      --{ x = 144.57633972168, y = -2203.7377929688, z = 3.6880254745483},
    },

    Armories = {
      { x = 2437.09, y = 4967.65, z = 41.35},
    },

    Vehicles = {
      {
        Spawner    = { x = 2416.31, y = 4993.82, z = 45.22 },
        SpawnPoint = { x = 2406.17, y = 4983.78, z = 45.08 },
        Heading    = 356.78,
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
      { x = 2406.17, y = 4983.78, z = 45.08 },
      
    },
    

    BossActions = {
      { x = 2435.96, y = 4964.7, z = 45.81 },
    },

  },

}
