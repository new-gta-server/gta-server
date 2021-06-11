INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_madrazo','madrazo',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_madrazo','madrazo',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_madrazo', 'madrazo', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('madrazo', 'madrazo', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('madrazo', 1, 'soldato', 'Recrue', 600, '{}', '{}'),
('madrazo', 2, 'capo', 'Bandit', 900, '{}', '{}'),
('madrazo', 3, 'consigliere', 'Capo', 1200, '{}', '{}'),
('madrazo', 4, 'double_og', 'Sous Chef', 1500, '{}', '{}'),
('madrazo', 5, 'boss', 'Chef', 2100, '{}', '{}');

CREATE TABLE `fine_types_madrazo` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_madrazo` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;