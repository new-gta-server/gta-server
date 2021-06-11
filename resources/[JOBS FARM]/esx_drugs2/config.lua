Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	heroin = 546,
	marijuana = 784,
	meth = 1635,
	coke = 1027,
	lsd = 2178,
}

Config.ChemicalsConvertionItems = {
	
	lsa = 0,
}

Config.ChemicalsLicenseEnabled = false --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = false --Will Enable or Disable the need for a MoneyWash License.

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.Licenses = {
	moneywash = 75000,
	chemicalslisence = 100000,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(2187.41, 5564.18, 53.67), name = _U('blip_WeedFarm')},
	WeedProcessing = {coords = vector3(1034.66, -3205.22, -38.17), name = _U('blip_weedprocessing')},


	--meth
	MethProcessing = {coords = vector3(1093.27, -3194.23, -38.99), name = _U('blip_methprocessing')},
	HydrochloricAcidFarm = {coords = vector3(2783.8, -749.8, 8.06), name = _U('blip_HydrochloricAcidFarm')},
	SulfuricAcidFarm = {coords = vector3(2784.01, -757.76, 8.72), name = _U('blip_SulfuricAcidFarm')},
	SodiumHydroxideFarm = {coords = vector3 (3251.84, -152.51, 17.6), name = _U('blip_SodiumHydroxideFarm')},
	
	--Chemicals
	ChemicalsField = {coords = vector3(2873.96, 365.81, 2.8), name = _U('blip_ChemicalsFarm')},
	ChemicalsConvertionMenu = {coords = vector3(254.12, -1000.85, -98.92), name = _U('blip_ChemicalsProcessing')},
	
	--Coke
	CokeField = {coords = vector3(-2545.47, 2492.78, 2.61), name = _U('blip_CokeFarm')},
	CokeProcessing = {coords = vector3(1012.89, -3194.92, -38.99), name = _U('blip_Cokeprocessing')},
	
	
	--LSD
	lsdProcessing = {coords = vector3(259.89, -1004.04, -99.00), name = _U('blip_lsdprocessing')},
	thionylchlorideProcessing = {coords = vector3(265.63, -995.43, -99.00), name = _U('blip_lsdprocessing')},
	
	--Heroin
	HeroinField = {coords = vector3(-2364.52, 2722.03, 2.95), name = _U('blip_heroinfield')},
	HeroinProcessing = {coords = vector3(169.49,-1004.35, -98.99), name = _U('blip_heroinprocessing')},

	--DrugDealer
	DrugDealer = {coords = vector3(-10000,-10000 ,-10000), name = _U('blip_drugdealer')},
	
	--License
	LicenseShop = {coords = vector3(-10000,-10000 ,-10000), name = _U('blip_lsdprocessing')},
	
	--MoneyWash
	MoneyWash = {coords = vector3(-10000,-10000 ,-10000), name = _U('blip_Blanchisserie')},
}
