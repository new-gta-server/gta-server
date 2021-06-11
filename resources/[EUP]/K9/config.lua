K9Config = {}
K9Config = setmetatable(K9Config, {})

K9Config.OpenMenuIdentifierRestriction = true
K9Config.OpenMenuPedRestriction = false
K9Config.LicenseIdentifiers = {
	"license:a2539c9fee956838caf04cbf75c7b02b4b0acb37",
	"license:78ab0194c7ae334b7faa089e037682185d9a188b",
	"license:05d8fc351c3124eb2d6b97667a4774087a4d10a4",

}
K9Config.SteamIdentifiers = {
	"steam:1100001034ca1fa",
	"steam:11000010a061323",
}
K9Config.PedsList = {
	"s_m_y_cop_01",
	"s_m_y_sheriff_01"
}

-- Restricts the dog to getting into certain vehicles
K9Config.VehicleRestriction = false
K9Config.VehiclesList = {
	
}

-- Searching Type ( RANDOM [AVAILABLE] | VRP [NOT AVAILABLE] | ESX [NOT AVAILABLE] )
K9Config.SearchType = "Random"
K9Config.OpenDoorsOnSearch = false

-- Used for Random Search Type --
K9Config.Items = {
	{item = "coke", illegal = true},
	{item = "marijuana", illegal = true},
	{item = "cannabis", illegal = true},
	{item = "chemicals", illegal = true},
	{item = "coca_leaf", illegal = true},
	{item = "poppyresin", illegal = true},
	{item = "heroin", illegal = true},
	{item = "lsa", illegal = true},
	{item = "lsd", illegal = true},
	{item = "meth", illegal = true},
	{item = "hydrochloric_acid", illegal = true},
	{item = "sodium_hydroxide", illegal = true},
	{item = "sulfuric_acid", illegal = true},
	{item = "thionyl_chloride", illegal = true},
}

-- Language --
K9Config.LanguageChoice = "English"
K9Config.Languages = {
	["English"] = {
		follow = " Viens Au Pied",
		stop = "Halte",
		attack = "Attaque",
		enter = "Monte",
		exit = "Sors"
	}
}