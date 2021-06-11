Config               = {}

Config.Locale        = 'fr'

Config.LicenseEnable = true -- enable boat license? Requires esx_license
Config.LicensePrice  = 50000

Config.MarkerType    = 1
Config.DrawDistance  = 100.0

Config.Marker = {
	r = 100, g = 204, b = 100, -- blue-ish color
	x = 1.5, y = 1.5, z = 1.0  -- standard size circle
}

Config.StoreMarker = {
	r = 255, g = 0, b = 0,     -- red color
	x = 5.0, y = 5.0, z = 1.0  -- big circle for storing boat
}

Config.Zones = {

	Garages = {
		{ -- Aeroport central
			GaragePos  = vector3(-977.60, -2959.66, 13.0),
			SpawnPoint = vector4(-989.68, -2989.06, 13.0, 61.45),
			StorePos   = vector3(-1006.32, -2975.27, 13.0),
			StoreTP    = vector4(-967.44, -2954.67, 13.0, 145.89)
		},

		{ -- La Puerta
			GaragePos  = vector3(-721.90, -1480.76, 4.20),
			SpawnPoint = vector4(-745.39, -1468.77, 4.2, 318.38),
			StorePos   = vector3(-724.86, -1444.32, 4.2),
			StoreTP    = vector4(-721.90, -1480.76, 4.2, 226.46)
		},

		{ -- Sandy shore
			GaragePos  = vector3( 1776.03, 3226.46, 42.0),
			SpawnPoint = vector4(1724.87, 3256.42, 40.28, 104.21),
			StorePos   = vector3(1715.23, 3254.04, 40.2),
			StoreTP    = vector4(1776.03, 3226.46, 42.0, 25.0)
		},

		{ -- Grapeseed
			GaragePos  = vector3(2135.60, 4791.67, 40.1),
			SpawnPoint = vector4(2136.29, 4810.41, 40.1, 109.89),
			StorePos   = vector3(2128.65, 4807.22, 40.1),
			StoreTP    = vector4(2135.60, 4791.67,40.1 ,180.0)
		},

		{ -- Cayo Perico
			GaragePos  = vector3(4453.28, -4477.64, 3.5),
			SpawnPoint = vector4(4474.29, -4493.93, 3.5, 120.22),
			StorePos   = vector3(4465.91, -4497.54,3.5),
			StoreTP    = vector4(4453.28, -4477.64, 3.5, 355.2)
		}
	},

	AirplaneShops = {
		{ -- Shank St, nearby campaign boat garage
			Outside = vector3(-984.30, -2948.36, 13.0),
			Inside = vector4(-970.70, -3000.50, 13.0, 56.02)
		}
	}

}

Config.Vehicles = {
	
	{model = 'buzzard2', label = 'Buzzard', price = 750000},
	{model = 'cargobob4', label = 'Cargobob', price = 2000000},
	{model = 'swift', label = 'Swift', price = 1200000},
	{model = 'swift2', label = 'Swift Deluxe', price = 1700000},
	{model = 'supervolito', label = 'Supervolito', price = 1300000},
	{model = 'supervolito2', label = 'Supervolito Carbon)', price = 1700000},
	{model = 'volatus', label = 'Volatus', price = 2500000},
	{model = 'cuban800', label = 'Cuban 800)', price = 500000},
	{model = 'dodo', label = 'Dodo', price = 600000},
	{model = 'luxor', label = 'Luxor', price = 3000000},
	{model = 'luxor2', label = 'Luxor Deluxe', price = 4000000},
	{model = 'velum2', label = 'Velum', price = 1200000},
	{model = 'titan', label = 'Titan', price = 2500000}
}