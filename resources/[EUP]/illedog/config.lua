k8Config = {}
k8Config = setmetatable(k8Config, {})

k8Config.OpenMenuIdentifierRestriction = false
k8Config.OpenMenuPedRestriction = false
k8Config.LicenseIdentifiers = {
	"license:d386021845322ffddbc6b4d250264030d3a950e9",
	"license:31f6679254c1ebda0b90d7700467768b37b686fd",

}
--k8Config.SteamIdentifiers = {
	--"steam:1100001081f9ab0"
--}
k8Config.PedsList = {
	"s_m_y_cop_01",
	"s_m_y_sheriff_01"
}

-- Restricts the dog to getting into certain vehicles
k8Config.VehicleRestriction = false
k8Config.VehiclesList = {
	
}

-- Searching Type ( RANDOM [AVAILABLE] | VRP [NOT AVAILABLE] | ESX [NOT AVAILABLE] )
k8Config.SearchType = "Random"
k8Config.OpenDoorsOnSearch = false

-- Used for Random Search Type --
k8Config.Items = {
	--[[{item = "coke", illegal = true},
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
	{item = "thionyl_chloride", illegal = true},]]
}

-- Language --
k8Config.LanguageChoice = "English"
k8Config.Languages = {
	["English"] = {
		follow = " Viens Au Pied",
		stop = "Halte",
		attack = "Attaque",
		enter = "Monte",
		exit = "Sors"
	}
}