USE `es_extended`;

CREATE TABLE `weaponshops` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`zone` varchar(255) NOT NULL,
	`item` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon_melee', "Melee License"),
	('weapon_handgun', "Handgun License"),
	('weapon_smg', "SMG License"),
	('weapon_shotgun', "Shotgun License"),
	('weapon_assault', "Assault Rifle License"),
	('weapon_lmg', "LMG License"),
	('weapon_sniper', "Sniper Rifle License")
;

INSERT INTO `weaponshops` (`id`, `zone`, `item`, `price`, `category`) VALUES
	
	(22, 'BlackShop', 'WEAPON_BZGAS', 500, 'melee'),

	(24, 'BlackShop', 'WEAPON_SMOKEGRENADE', 500, 'melee'),
	(25, 'BlackShop', 'WEAPON_MOLOTOV', 150, 'melee'),
	
	(30, 'BlackShop', 'WEAPON_SNSPISTOL', 450, 'handgun'),
	
	(32, 'BlackShop', 'WEAPON_VINTAGEPISTOL', 900, 'handgun'),

	(34, 'BlackShop', 'WEAPON_PISTOL', 1050, 'handgun'),

	(41, 'BlackShop', 'WEAPON_MICROSMG', 2700, 'smg'),

	(43, 'BlackShop', 'WEAPON_MINISMG', 2400, 'smg'),
	
	(45, 'BlackShop', 'WEAPON_SMG', 4800, 'smg'),
	
	(50, 'BlackShop', 'WEAPON_PUMPSHOTGUN', 1050, 'shotgun'),
	
	(52, 'BlackShop', 'WEAPON_SAWNOFFSHOTGUN', 1500, 'shotgun'),

	(54, 'BlackShop', 'WEAPON_DBSHOTGUN', 1350, 'shotgun'),
	
	(59, 'BlackShop', 'WEAPON_ASSAULTRIFLE', 3600, 'assault'),

	(61, 'BlackShop', 'WEAPON_CARBINERIFLE', 7200, 'assault')

;
