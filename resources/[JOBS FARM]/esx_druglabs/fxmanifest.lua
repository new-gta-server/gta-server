---------------------------------------
--     ESX_DRUGLABS by Dividerz      --
-- FOR SUPPORT: Arne#7777 on Discord --
---------------------------------------

fx_version 'adamant'

game 'gta5'

description 'ESX Druglabs by Arne (Dividerz)'
author 'Dividerz (Arne)'

version '1.0.0'

server_scripts {
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua',
	'client/meth.lua',
	'client/coke.lua',
	'client/weed.lua',
	'client/lsd.lua',
	'client/hero.lua',
	'client/blanchisseur.lua',
}

dependencies {
	'es_extended',
	'bob74_ipl',
	'progressBars'
}