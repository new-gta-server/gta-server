Config              = {}
Config.DrawDistance = 100.0
Config.CopsRequired = 2
Config.BlipUpdateTime = 3000 --In milliseconds. I used it on 3000. If you want instant update, 50 is more than enough. Even 100 is good. I hope it doesn't kill FPS and the server.
Config.CooldownMinutes = 10
Config.Locale = 'fr'

Config.Zones = {
	VehicleSpawner = {
		Pos   = {x = 175.04, y = 2219.77, z = 90.71},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = -1,
		Colour    = 6, --BLIP
		Id        = 229, --BLIP
	},
	
}

Config.VehicleSpawnPoint = {
	Spawn1 = {
      Pos   = {x = 166.27, y = 2274.23, z = 92.9, alpha = 174.83}, --alpha is the orientation of the car
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Type  = -1,
    },
    
}

Config.Delivery = {
	--Desert
	--amphi centre
	Delivery1 = {
		Pos      = {x = 221.13, y = 1248.24, z = 225.46},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2800,
		Cars = {'surfer','camper','kalahari'},
	},
	--Trevor Airfield 9.22KM
	Delivery2 = {
		Pos      = {x = 2130.68, y = 4781.32, z = 39.87},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2800,
		Cars = {'taco','youga3','kalahari'},
	},
	--phare
	Delivery4 = {
		Pos      = {x = 3333.51, y = 5159.91, z = 17.20},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2000,
		Cars = {'btype3','michelli','tornado5'},
	},
	--beachclub
	Delivery5 = {
		Pos      = {x = -2954.38, y = 56.39, z = 10.64},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2500,
		Cars = {'btype3','savestra','gt500'},
	},
	--champs grapeseed
	Delivery7 = {
		Pos      = {x =1902.0, y = 4919.13, z = 47.71},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 3500,
		Cars = {'packer','tiptruck2','rallytruck'},
	},
	--plage
	Delivery8 = {
		Pos      = {x =-1268.48, y = -1358.14, z = 3.25},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 8500,
		Cars = {'pounder2','phantom','packer'},
	},
	--dinner ouest
	Delivery10 = {
		Pos      = {x = -2177.51, y = 4269.51, z = 47.93},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 3500,
		Cars = {'radi','cavalcade','sadler'},
	},
	--central est
	Delivery11 = {
		Pos      = {x = 2462.07, y = 10601.8, z = 32.72},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2500,
		Cars = {'radi','serrano','slamtruck'},
	},
	--port
	Delivery13 = {
		Pos      = {x = 756.38, y = -3195.23 , z = 5.07},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2500,
		Cars = {'emperor','intruder','warrener'},
	},
	--sandyshore
	Delivery14 = {
		Pos      = {x = 1433.72, y = 3640.87, z = 33.93},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 4000,
		Cars = {'glendale2','intruder','stratum'},
	},
}
