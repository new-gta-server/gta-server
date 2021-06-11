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
      { name = 'baller5',  label = 'Baller' },
      { name = 'schafter5',    label = 'Schafter' },
      { name = 'pounder2',   label = 'Pounder' },
    },

    Cloakrooms = {
      --{ x = 144.57633972168, y = -2203.7377929688, z = 3.6880254745483},
    },

    Armories = {
      { x = -802.03, y = 180.28, z = 75.74},
    },

    Vehicles = {
      {
        Spawner    = { x = -811.89, y = 167.81, z = 71.23 },
        SpawnPoint = {x = -816.74, y = 158.75, z = 69.97},
        Heading    = 124.95,
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
      {x = -816.74, y = 158.75, z = 69.97},
      
      
    },
    

    BossActions = {
      { x = -811.37, y = 181.18, z = 75.94 },
    },

  },

}
