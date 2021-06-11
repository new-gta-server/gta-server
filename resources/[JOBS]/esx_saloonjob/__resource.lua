resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
this_is_a_map 'yes'
description 'ESX Unicorn Job'

version '1.1.0'

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'client/main.lua'
}

server_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'server/main.lua'
}

file 'gusepe_timecycle_mods_saloon.xml'
data_file 'TIMECYCLEMOD_FILE' 'gusepe_timecycle_mods_saloon.xml'
data_file 'DLC_ITYP_REQUEST' 'stream/int_retail.ytyp' 
data_file 'DLC_ITYP_REQUEST' 'stream/vw_prop_vw_tables.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ch_prop_ch_casino_accs_02.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/int_industrial.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/v_int_10.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ch_dlc_int_02_ch.ytyp'
