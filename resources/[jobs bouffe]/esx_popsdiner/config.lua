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
    { name = 'speedo8',  label = 'Speedo Popsdiner' },
}

Config.Blips = {
    
    Blip = {
      Pos     = {x = 1585.67, y = 6459.02, z = 25.01  },
      Sprite  = 538,
      Display = 4,
      Scale   = 0.5,
      Colour  = 46,
    },
}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 1589.0, y = 6462.95, z = 24.32 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Name  = "Vestiaire",
        Type  = 0
    },

    Vaults = {
        Pos   = { x = 1594.75, y = 6454.43, z = 25.01 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Coffre",
        Type  = 0
    },

    Fridge = {
        Pos   = { x = 1585.67, y = 6459.02, z = 25.01 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Frigo",
        Type  = 0
    },

    Vehicles = {
        Pos          = { x = 1575.3, y = 6458.05, z =24.09 },
        SpawnPoint   = { x = 1569.39, y = 6451.38, z =23.35 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Name  = "Garage véhicule",
        Type  = 0,
        Heading      = 117.9,
    },

    VehicleDeleters = {
        Pos   = { x = 1569.39, y = 6451.38, z =23.35 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Name  = "Ranger le vehicule",
        Type  = 0
    },

    BossActions = {
        Pos   = { x = 1594.21, y = 6460.69, z = 24.32 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
       Name  = "Menu patron",
        Type  = 0
    },

    

-----------------------
-------- SHOPS --------

    Alim = {
        Pos   = { x = 1741.58, y = 6419.63, z = 34.04 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Name = "Boutique",
        Type  = 0,
        Items = {
            { name = 'salads',      label = _U('salads'),   price = 3 },
            { name = 'tomater',      label = _U('tomater'),   price = 2 },
            { name = 'entrecotec',       label = _U('entrecotec'),    price = 7 },
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
  popsdiner_outfit = {
   male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 13,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 11,
        ['pants_1'] = 0,   ['pants_2'] = 1,
        ['shoes_1'] = 3,    ['shoes_2'] = 1,
        ['chain_1'] = 0,    ['chain_2'] = 0
    },
        female = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 13,   ['torso_2'] = 3,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 15,
        ['pants_1'] = 0,   ['pants_2'] = 1,
        ['shoes_1'] = 7,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  }
}

