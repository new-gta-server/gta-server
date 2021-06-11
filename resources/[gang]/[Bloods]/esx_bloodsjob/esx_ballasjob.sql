INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_bloods','bloods',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_bloods','bloods',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_bloods', 'bloods', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('bloods', 'bloods', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('bloods', 1, 'soldato', 'Recrue', 0, '{}', '{}'),
('bloods', 2, 'capo', 'Bandit', 0, '{}', '{}'),
('bloods', 3, 'consigliere', 'Capo', 0, '{}', '{}'),
('bloods', 4, 'double_og', 'Sous Chef', 0, '{}', '{}'),
('bloods', 5, 'boss', 'Chef', 0, '{}', '{}');

CREATE TABLE `fine_types_bloods` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_bloods` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;