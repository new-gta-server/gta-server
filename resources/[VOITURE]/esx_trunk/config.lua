Config	=	{}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.

Config.Locale   = 'fr'

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 210

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = -1

Config.localWeight = {

    black_money = 1, -- poids pour un argent
	-- Drogue
	coke = 1,
	opium = 1,
	meth = 1,
	weed = 1,
	coke_pooch = 1,
	opium_pooch = 1,
	meth_pooch = 1,
	weed_pooch = 1,
	lsd = 1,
	lsd_pooch = 1,
	fish = 1,
	-- Armes
	WEAPON_SNIPERRIFLE = 1, -- poids pour une munnition
	WEAPON_ASSAULTSMG = 1, -- poids pour une munnition
	WEAPON_ASSAULTSHOTGUN = 1, -- poids pour une munnition
	WEAPON_PISTOL = 1,
	WEAPON_SNSPISTOL = 1,
	WEAPON_FLASHLIGHT = 1,
	WEAPON_MACHETE = 1,
	WEAPON_BAT = 1,
	WEAPON_STUNGUN = 1,
	WEAPON_FIREEXTINGUISHER = 1,
	WEAPON_BALL = 1,
	WEAPON_ASSAULTRIFLE = 1,
	WEAPON_FLAREGUN = 1,
	WEAPON_APPISTOL = 1,
	WEAPON_SWITCHBLADE = 1,
	WEAPON_REVOLVER = 1,
	WEAPON_POOLCUE = 1,
	WEAPON_SMG = 1,
	WEAPON_PISTOL50 = 1,
	WEAPON_MICROSMG = 1,
	WEAPON_GUSENBERG = 1,
	WEAPON_SAWNOFFSHOTGUN = 1,
	WEAPON_COMBATPISTOL = 1,
	WEAPON_SPECIALCARBINE = 1,
	WEAPON_PUMPSHOTGUN = 1,
	WEAPON_CARBINERIFLE = 1,
	WEAPON_SMOKEGRENADE = 1,
	GADGET_PARACHUTE = 1,
	WEAPON_SPECIALCARBINE_MK2 = 1,
	WEAPON_BULLPUPRIFLE_MK2 = 1,
	WEAPON_PUMPSHOTGUN_MK2 = 1,
	WEAPON_MARKSMANRIFLE_MK2 = 1,
	WEAPON_ASSAULTRIFLE_MK2 = 1,
	WEAPON_CARBINERIFLE_MK2 = 1,
	WEAPON_COMBATMG_MK2 = 1,
	WEAPON_HEAVYSNIPER_MK2 = 1,
	WEAPON_PISTOL_MK2 = 1,
	WEAPON_SMG_MK2 = 1,
	fabric = 1,
	hacktool = 1,
	acetone = 1,
	lithium = 1,
	methlab = 1,
	fish = 1,
	fish_traiter = 1,
	meat = 1,
	whool = 1,
	poulet_grille = 1,
	-- Nourritures + Boissons
	bread = 1,
	water = 1,
	jusfruit = 1,
	cola = 1,	
	icetea = 1,
	chocolate = 1,
	beef = 1,
	hamburger = 1,
	cupcake = 1,
	soda = 1,
	cocacola = 1,
	pizza = 1,
	bolchips = 1,
	drpepper = 1,
	mixapero = 1,
	saucisson = 1,
	breadsaucisson = 1,
	hamburgerplate = 1,
	bolcacahuetes = 1,
	bolnoixcajou = 1,
	bolpistache = 1,
	-- Abatteur
	alive_chicken = 1,
	slaughtered_chicken = 1,
	packaged_chicken = 1,
	-- Couturier
	wool = 1,
	clothe = 1,
	-- Bucherons
	wood = 1,
	cutted_wood = 1,
	packaged_plank = 1,
	-- Mineur
	stone = 1,
	washed_stone = 1,
	gold = 1,
	iron = 1,
	diamond = 1,
	copper = 1,
	--
	essence = 1,
	clip = 1,
	repairkit = 1,
	nitrotune = 1,
	nitrobottle = 1,
	weedseed = 1,
	fertilizer = 1,
	weedlamp = 1,
	-- Vignerons
	grapperaisin = 1,
	raisin = 1,	
	jus_raisin = 1,
	vine = 1,
	grand_cru = 1,
	-- Item
	brolly = 1,		
	bong = 1,		
	rose = 1,			
	notepad = 1,				
	-- RAFFINEUR
	petrol = 1,
	petrol_raffin = 1,
	essence1 = 1,
	-- Tabagiste
	malbora = 1,
	gitanes = 1,
	tabacblond = 1,
	tabacblondsec = 1,
	tabacbrun = 1,
	tabacbrunsec = 1,
	-- Pompiste
	papier = 1,
	billet = 1,
}

Config.VehicleLimit = {
    [0] = 100, --Compact
    [1] = 40000, --Sedan
    [2] = 100000, --SUV
    [3] = 40000, --Coupes
    [4] = 40000, --Muscle
    [5] = 210, --Sports Classics
    [6] = 40000, --Sports
    [7] = 10, --Super
    [8] = 0, --Motorcycles
    [9] = 1000, --Off-road
    [10] = 800000, --Industrial
    [11] = 100000, --Utility
    [12] = 1000, --Vans
    [13] = 0, --Cycles
    [14] = 100000, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 3100, --Emergency
    [19] = 0, --Military
    [20] = 3100, --Commercial
    [21] = 0, --Trains

}

Config.VehicleModel = {

    brickade    = 800000, --Commercial
    rallytruck  = 800000, --Commercial
    armarello  = 800000, --Commercial
    hauler  = 1000000, --Commercial
    ramvan  = 1000000, --Commercial
    phantom  = 800000, --Bucherons
    phantomhd  = 800000, --Commercial
    vnl780  = 800000, --Commercial
    guardian    = 3100, --Vans
	stockade    = 3100, --Vans
	speedo    = 3100, --Vans
	rubble    = 800000,
	youga2    = 1000, --Couturier
	benson    = 3100, --Abatteur

}

Config.VehiclePlate = {
	taxi        = "TAXI",
	cop         = "LSPD",
	ambulance   = "EMS0",
	mecano	    = "MECA",
}

---------------------------------
--- Copyright by ikNox#6088 ---
---------------------------------