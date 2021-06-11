Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = false
Config.Locale                     = 'fr'

Config.Cig = {
  'malbora',
  'gitanes'
  
}

Config.CigResellChances = {
  malbora = 4,
  gitanes = 5,
}

Config.CigResellQuantity= {
  malbora = {min = 1, max = 10},
  gitanes = {min = 1, max = 10},
}

Config.CigPrices = {
  malbora = {min = 5, max =6},
  gitanes = {min = 5,   max = 6},
}

Config.CigPricesHigh = {
  malbora = {min = 5, max = 6},
  gitanes = {min = 5,   max = 6},
}

Config.Time = {
	malbora = 5 * 60,
	gitanes = 5 * 60,
}

Config.Blip = {
  Pos     = { x = -36.36, y = -1061.36, z = 26.71 },
  Sprite  = 79,
  Display = 4,
  Scale   = 0.4,
  Colour  = 2,

}

Config.Zones = {

  TabacActions = {
    Pos   = { x = -36.36, y = -1061.36, z = 26.71 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Garage = {
    Pos   = { x =2858.5, y = 4615.69, z = 47.42 },
    Size  = { x = 2.0, y = 2.0, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Craft = {
    Pos   = { x = 2359.691, y = 3137.436, z = 47.500 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft2 = {
    Pos   = { x = 1779.25, y = 3641.04, z = 33.500 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  VehicleSpawnPoint = {
    Pos   = { x = -47.7, y = -1065.26, z = 26.6 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = -43.29, y = -1066.94, z = 26.6},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  SellFarm = {
    Pos   = {x = 396.53, y = 352.74, z = 101.54},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}
