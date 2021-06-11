USE `essentialmode`;

CREATE TABLE `receleur` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `receleur` (name, item, price) VALUES
	('Pied_de_biche','lockpick', 11500),
	('Charge_thermique','thermal_charge', 12000),
	('Pc_hack','laptop_h', 12500),
	('Torche_plasma','oxycutter', 50000)
;

