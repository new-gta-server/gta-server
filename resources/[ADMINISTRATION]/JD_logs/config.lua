Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = false 											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Digital Life" 							-- Bot Username
Config.avatar = "https://imgur.com/a/nFQiX0F"				-- Bot Avatar
Config.communtiyName = "Digital Life"					-- Icon top of the Embed
Config.communtiyLogo = "https://imgur.com/a/nFQiX0F"		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = false				-- set to false to disable Steam URL in the logs
Config.discordID = false				-- set to false to disable Discord ID in the logs
Config.license = false				-- set to false to disable license in the logs
Config.IP = false					-- set to false to disable IP in the logs


-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.joinColor = "#3AF241" 	 	-- Player Connecting
Config.leaveColor = "#F23A3A"		-- Player Disconnected
Config.chatColor = "#A1A1A1"		-- Chat Message
Config.shootingColor = "#2E66F2"	-- Shooting a weapon
Config.deathColor = "#000000"		-- Player Died
Config.resourceColor = "#EBEE3F"	-- Resource Stopped/Started



Config.webhooks = {
	all = "https://discordapp.com/api/webhooks/830816577094942730/z6DCtIXj1bT670WQzUj_3kLDda3ReGmv2k_x6t6jN_p89B3Izne_x2z2PiHGbWzOPzXD",
	chat = "https://discordapp.com/api/webhooks/830816794603945984/m6zoHoV8sOaA0pGGz0x8XhLFC5OaB_yddR2o0sMFOZ4QtEZofusGN5w8NpxW7pfA5AVr",
	joins = "https://discordapp.com/api/webhooks/830816934496698418/Gt5XGAGIqf4uJSga9_agBtUvN2IzyBRMGLeUg9k5TQLOKGRbuWwf7UNq3PmZNlE6pOOT",
	leaving = "https://discordapp.com/api/webhooks/830817135282487306/w2gwfWb66n6rzC-eQUgxsOohvsaGmqfx2nQ4L89ZIx5IJiMaF4Pz6h01JUkEF0L8Lz1e",
	deaths = "https://discordapp.com/api/webhooks/830817344569212949/gdyLq-8qhg0YsH41pKnuhhlRbt42l8suDRKblgy_twipSC8nfEwhnxJkr-l1IOzqTG-C",
	shooting = "https://discordapp.com/api/webhooks/830817515159945268/ULGI3FcjxV4Z3sVYLZ72K5Ih0S3WwKbzN-R2eYLclMtmqCWW2bx87d_aUwpkGCXkMbZt",
	resources = "https://discordapp.com/api/webhooks/830817638782337044/bGYZMPD8dM73aMSvOkBFqkDUU7NpTPajIulBYn7W_Wno0z3s9w32u4lnDenLoisw9C5V",
}


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.6"
