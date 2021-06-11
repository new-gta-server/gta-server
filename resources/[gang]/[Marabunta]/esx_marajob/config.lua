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
      { x = 1435.95, y = -1490.42, z = 65.62},
    },

    Vehicles = {
      {
        Spawner    = { x = 1423.61, y = -1501.57, z = 59.97 },
        SpawnPoint = { x = 1421.16, y = -1509.35, z = 59.59 },
        Heading    = 159.62,
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
      { x = 1421.16, y = -1509.35, z = 59.59 },
      
    },
    

    BossActions = {
      { x = 1442.06, y = -1496.08, z = 62.7 },
    },

  },

}
