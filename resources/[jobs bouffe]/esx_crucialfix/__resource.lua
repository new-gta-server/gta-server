resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
description 'ESX BurgerJob'


client_scripts {
  '@es_extended/locale.lua',
  'locales/fr.lua',
  'config.lua',
  'client/main.lua'
}

server_scripts {
  '@es_extended/locale.lua',
  'locales/fr.lua',
  'config.lua',
  'server/main.lua'
}

files {
    "interiorproxies.meta",
    'vehicles.meta',
    'carvariations.meta',
}

data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'

this_is_a_map 'yes'