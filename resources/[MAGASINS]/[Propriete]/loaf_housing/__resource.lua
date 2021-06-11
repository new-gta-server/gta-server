resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'
this_is_a_map 'yes'
client_scripts {
	'config.lua',
    'client.lua',
    'functions.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
	'server.lua'
}

files {
    "interiorproxies.meta"
}

data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'