Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 10 -- %

Config.AuthorizedVehicles = {
    { name = 'speedo6',  label = 'Speedo Pearls' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = -1839.76, y = -1190.29, z = 13.32 },
      Sprite  = 267,
      Display = 4,
      Scale   = 0.5,
      Colour  = 46,
    },
}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1848.46, y = -1197.38, z = 13.32 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Name  = "Vestiaire",
        Type  = 0
    },

    Vaults = {
        Pos   = { x = -1839.76, y = -1190.29, z = 13.32 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Coffre",
        Type  = 0
    },

    Fridge = {
        Pos   = { x = -1838.85, y = -1183.56, z = 13.32 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Frigo",
        Type  = 0
    },

    Vehicles = {
        Pos          = { x = -1820.58, y = -1220.36, z = 12.02 },
        SpawnPoint   = { x = -1840.32, y = -1226.57, z = 12.02 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Name  = "Garage véhicule",
        Type  = 0,
        Heading      = 300.49,
    },

    VehicleDeleters = {
        Pos   = {  x = -1840.32, y = -1226.57, z = 12.02 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Name  = "Ranger le vehicule",
        Type  = 0
    },

    BossActions = {
        Pos   = { x = -1845.18, y = -1195.47, z = 18.18 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
       Name  = "Menu patron",
        Type  = 0
    },

    

-----------------------
-------- SHOPS --------

    Alim = {
        Pos   = { x = -1830.83, y = -1181.15, z = 18.18 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Name = "Boutique",
        Type  = 0,
        Items = {
            { name = 'salads',      label = _U('salads'),   price = 3 },
            { name = 'tomater',      label = _U('tomater'),   price = 2 },
            { name = 'poissonc',       label = _U('poissonc'),    price = 7 },
            { name = 'bread',     label = _U('bread'),  price = 2 },
            { name = 'fromage',    label = _U('fromage'), price = 3 },
            { name = 'patate',    label = _U('patate'), price = 3 },
            { name = 'soda',        label = _U('soda'),     price = 4 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 3 },
            { name = 'icetea',      label = _U('icetea'),   price = 4 },
            { name = 'energy',      label = _U('energy'),   price = 7 },
            { name = 'drpepper',    label = _U('drpepper'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 1 }
        },
    },

}


Config.Uniforms = {
  pearls_outfit = {
   male = {
        ['tshirt_1'] = 7,  ['tshirt_2'] = 1,
        ['torso_1'] = 25,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 11,
        ['pants_1'] = 10,   ['pants_2'] = 0,
        ['shoes_1'] = 14,    ['shoes_2'] = 15,
        ['chain_1'] = 0,    ['chain_2'] = 0
    },
        female = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 283,   ['torso_2'] = 9,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 12,
        ['pants_1'] = 8,   ['pants_2'] = 0,
        ['shoes_1'] = 6,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  }
}

