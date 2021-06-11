Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'custom' -- 'en', 'sv' or 'custom'

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1133.89, -982.75, 46.41-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1164.73, -323.16, 69.20-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-1486.18, -377.99, 40.16-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-1221.89, -908.28, 12.32-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-46.86, -1758.23, 29.42-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(372.62, 326.96, 103.56-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-2966.35, 390.83, 15.04-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	--{coords = vector3(-3039.05, 584.51, 7.90-0.98), heading = 266.0, money = {20000, 32000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-3242.55, 999.94, 12.83-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1728.17, 6415.87, 35.03-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(2677.66, 3279.54, 55.24-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(2556.60, 380.77, 108.62-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1166.29, 2710.84, 38.15-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(549.20, 2670.79, 42.15-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(-1820.14, 794.32, 138.08-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1959.98, 3740.18, 32.34-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
	{coords = vector3(1697.71, 4923.07, 42.06-0.98), heading = 266.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = {5000, 15000}, cops = 2, blip = false, name = 'Braquage Superette', cooldown = {hour = 0, minute = 60, second = 0}, robbed = false}

}

Translation = {
    ['en'] = {
        ['shopkeeper'] = 'shopkeeper',
        ['robbed'] = "I was just robbed and ~r~don't ~w~have any money left!",
        ['cashrecieved'] = 'You got:',
        ['currency'] = '$',
        ['scared'] = 'Scared:',
        ['no_cops'] = 'There are ~r~not~w~ enough cops online!',
        ['cop_msg'] = 'We have sent a photo of the robber taken by the CCTV camera!',
        ['set_waypoint'] = 'Set waypoint to the store',
        ['hide_box'] = 'Close this box',
        ['robbery'] = 'Robbery in progress',
        ['walked_too_far'] = 'You walked too far away!'
    },
    ['sv'] = {
        ['shopkeeper'] = 'butiksbiträde',
        ['robbed'] = 'Jag blev precis rånad och har inga pengar kvar!',
        ['cashrecieved'] = 'Du fick:',
        ['currency'] = 'SEK',
        ['scared'] = 'Rädd:',
        ['no_cops'] = 'Det är inte tillräckligt med poliser online!',
        ['cop_msg'] = 'Vi har skickat en bild på rånaren från övervakningskamerorna!',
        ['set_waypoint'] = 'Sätt GPS punkt på butiken',
        ['hide_box'] = 'Stäng denna rutan',
        ['robbery'] = 'Pågående butiksrån',
        ['walked_too_far'] = 'Du gick för långt bort!'
    },
    ['custom'] = { -- edit this to your language
        ['shopkeeper'] = 'Commerçant',
        ['robbed'] = 'On vient de me voler et je ~r~n\'ai plus ~w~d\'argent !',
        ['cashrecieved'] = 'Vous avez :',
        ['currency'] = '$',
        ['scared'] = 'Effrayé :',
        ['no_cops'] = 'Il n\'y a ~r~pas~w~ assez de flics en ligne !',
        ['cop_msg'] = 'Nous avons envoyé une photo du voleur prise par la caméra de vidéosurveillance !',
        ['set_waypoint'] = 'Définir le waypoint jusqu\'au magasin',
        ['hide_box'] = 'Fermer cette boîte',
        ['robbery'] = 'Braquage en cours',
        ['walked_too_far'] = 'Tu es parti trop loin !'
    }
}