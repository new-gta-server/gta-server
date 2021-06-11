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
    { name = 'speedo7',  label = 'Speedo Crucialfix' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = 264.53, y = -821.51, z = 28.44 },
      Sprite  = 120,
      Display = 4,
      Scale   = 0.5,
      Colour  = 46,
    },
}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 266.61, y = -819.27, z = 28.44 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Name  = "Vestiaire",
        Type  = 0
    },

    Vaults = {
        Pos   = { x = 264.53, y = -821.51, z = 28.44 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Coffre",
        Type  = 0
    },

    Fridge = {
        Pos   = { x = 259.37, y = -820.7, z = 28.44 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Frigo",
        Type  = 0
    },

    Vehicles = {
        Pos          = { x = 253.74, y = -826.96, z = 28.72 },
        SpawnPoint   = { x = 252.82, y = -831.64, z = 28.7 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Name  = "Garage véhicule",
        Type  = 0,
        Heading      = 69.23,
    },

    VehicleDeleters = {
        Pos   = {  x = 252.82, y = -831.64, z = 28.7 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Name  = "Ranger le vehicule",
        Type  = 0
    },

    BossActions = {
        Pos   = { x = 264.05, y = -818.15, z = 28.44 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
       Name  = "Menu patron",
        Type  = 0
    },

    

-----------------------
-------- SHOPS --------

    Alim = {
        Pos   = { x = 259.86, y = -782.84, z = 29.51 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Name = "Boutique",
        Type  = 0,
        Items = {
            
            { name = 'tender',       label = _U('tender'),    price = 1 },
            { name = 'burger',     label = _U('burger'),  price = 1 },
            { name = 'sandwich',    label = _U('sandwich'), price = 1 },
            { name = 'frites',    label = _U('frites'), price = 1 },
            { name = 'soda',        label = _U('soda'),     price = 1 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 1 },
            { name = 'icetea',      label = _U('icetea'),   price = 1 },
            { name = 'energy',      label = _U('energy'),   price = 1 },
            { name = 'drpepper',    label = _U('drpepper'), price = 1 },
            { name = 'limonade',    label = _U('limonade'), price = 1 },
            { name = 'coffee',    label = _U('café'), price = 1 },
            { name = 'chocolat',    label = _U('chocolat'), price = 1 }
        },
    },

}


Config.Uniforms = {
  crucialfix_outfit = {
   male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 133,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 81,
        ['pants_1'] = 48,   ['pants_2'] = 4,
        ['shoes_1'] = 7,    ['shoes_2'] = 2,
        ['chain_1'] = 0,    ['chain_2'] = 0
    },
        female = {
        ['tshirt_1'] = 60,  ['tshirt_2'] = 0,
        ['torso_1'] = 66,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 91,
        ['pants_1'] = 43,   ['pants_2'] = 0,
        ['shoes_1'] = 10,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  }
}

