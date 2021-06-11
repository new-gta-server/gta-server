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
      --{ name = 'WEAPON_FLARE',     price = 50 },
     
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
      { x = 108.35, y = -1982.08, z = 19.99},
    },

    Vehicles = {
      {
        Spawner    = { x = 83.9, y = -1973.79, z = 19.93 },
        SpawnPoint = { x = 89.56, y = -1966.66, z = 20.75 },
        Heading    = 323.24,
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
     { x = 89.56, y = -1966.66, z = 19.75 },
      
    },
    

    BossActions = {
      { x = 119.98, y = -1968.56, z = 20.40 },
    },

  },

}
