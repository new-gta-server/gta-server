Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'burrito9',  label = 'Van Bahama Mamas' },
    { name = 'oracle2',  label = 'Oracle Bahama Mamas' }
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = -1393.7309570313, y = -605.35540771484, z = 29.31955909729 },
      Sprite  = 93,
      Display = 4,
      Scale   = 0.5,
      Colour  = 27,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1367.01, y = -612.7, z = 29.31 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 1,
    },

    Vaults = {
        Pos   = { x = -1388.53, y =-612.45, z = 29.31 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 1,
    },

    Fridge = {
        Pos   = { x = -1391.25, y = -608.2, z = 29.319574356079 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 1,
    },

    Vehicles = {
       Pos          = { x = -1397.45, y = -626.97, z = 29.32 },
       SpawnPoint   = { x = -1392.14, y = -635.05, z = 27.69},
       Size         = { x = 1.8, y = 1.8, z = 1.0 },
       Color        = { r = 255, g = 255, b = 0 },
       Type         = 1,
       Heading      = 122.51,
    },

    VehicleDeleters = {
       Pos   = { x = -1392.14, y = -635.05, z = 27.69 },
       Size  = { x = 3.0, y = 3.0, z = 0.2 },
       Color = { r = 238, g = 0, b = 0 },
       Type  = 1,
    },

--[[
    Helicopters = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    HelicopterDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },
]]--

    BossActions = {
        Pos   = { x = -1365.87, y = -623.82, z = 29.32 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = -1394.44, y = -611.43, z = 29.319},
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 1,
        Items = {
            { name = 'jager',      label = _U('jager'),   price = 5 },
            { name = 'vodka',      label = _U('vodka'),   price = 5 },
            { name = 'rhum',       label = _U('rhum'),    price = 5 },
            { name = 'whisky',     label = _U('whisky'),  price = 5 },
            { name = 'tequila',    label = _U('tequila'), price = 5 },
            { name = 'martini',    label = _U('martini'), price = 5 }
        },
    },

    NoAlcool = {
        Pos   = { x = -1386.85, y = -606.72, z = 29.319 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 1,
        Items = {
            { name = 'soda',        label = _U('soda'),     price = 2 },
            { name = 'coffee',      label = _U('coffee'),   price = 2 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 2 },
            { name = 'icetea',      label = _U('icetea'),   price = 2 },
            { name = 'energy',      label = _U('energy'),   price = 2 },
            { name = 'drpepper',    label = _U('drpepper'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 2 }
        },
    },

    Apero = {
        Pos   = {x = -1385.73, y = -609.83, z = 29.319},
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 1,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 10 },
            { name = 'bolnoixcajou',    label = _U('bolnoixcajou'),     price = 15 },
            { name = 'bolpistache',     label = _U('bolpistache'),      price = 20 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 30 },
            { name = 'saucisson',       label = _U('saucisson'),        price = 35 },
            { name = 'grapperaisin',    label = _U('grapperaisin'),     price = 20 }
        },
    },

    Ice = {
        Pos   = {x = -1392.52, y = -613.96, z = 29.319},
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 1,
        Items = {
            { name = 'mojito',     label = _U('mojito'),      price = 20 },
            { name = 'jagerbomb',  label = _U('jagerbomb'),   price = 20 },
            { name = 'jagercerbere',  label = _U('jagercerbere'),   price = 20 },
            { name = 'vodkaenergy',  label = _U('vodkaenergy'),   price = 20 },
            { name = 'vodkafruit',  label = _U('vodkafruit'),   price = 20 },
            { name = 'rhumfruit',  label = _U('rhumfruit'),   price = 20 },
            { name = 'rhumcoca',  label = _U('rhumcoca'),   price = 20 },
            { name = 'whiskycoca',  label = _U('whiskycoca'),   price = 20 },
            { name = 'teqpaf',  label = _U('teqpaf'),   price = 20 },
            { name = 'golem',  label = _U('golem'),   price = 40 },
            { name = 'metreshooter',  label = _U('metreshooter'),   price = 40 },
        },
    },

}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
  --[[EnterBuilding = {
    Pos       = { x = -1387.0266113281, y = -588.84320068359, z = 29.31 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = -1387.0266113281, y = -588.84320068359, z = 29.319498062134 }
  },

  ExitBuilding = {
   Pos       = { x = -1387.0266113281, y = -588.84320068359, z = 29.31 },
   Size      = { x = 1.2, y = 1.2, z = 0.1 },
   Color     = { r = 128, g = 128, b = 128 },
   Marker    = 1,
   Hint      = _U('e_to_exit_1'),
   Teleport  = { x = -1387.0266113281, y = -588.84320068359, z = 29.31 },
  },

  Entercomptoir = {
    Pos       = { x = -1386.0063476563, y = -627.18792724609, z = 29.81957244873 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2'),
    Teleport  = { x = -1385.5007324219, y = -606.47601318359, z = 29.319551467896 },
  },

  Exitcomptoir = {
    Pos       = { x = -1385.5007324219, y = -606.47601318359, z = 29.319551467896 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = -1386.0063476563, y = -627.18792724609, z = 29.81957244873 },
  },

  EnterVIP = {
    Pos       = { x = -1381.7054443359, y = -632.19689941406, z = 29.81957244873 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_3'),
    Teleport  = { x = -1379.71875, y = -631.39099121094, z = 29.81957244873 },
  },

  ExitVIP = {
    Pos       = { x = -1379.71875, y = -631.39099121094, z = 29.81957244873 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_3'),
    Teleport  = { x = -1381.7054443359, y = -631.39099121094, z = 29.81957244873 },
  },


  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}

---------------------------------
--- Copyright by ikNox#6088 ---
---------------------------------