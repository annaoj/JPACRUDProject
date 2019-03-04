-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cryptokittiesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cryptokittiesdb` ;

-- -----------------------------------------------------
-- Schema cryptokittiesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cryptokittiesdb` DEFAULT CHARACTER SET utf8 ;
USE `cryptokittiesdb` ;

-- -----------------------------------------------------
-- Table `kitty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `kitty` ;

CREATE TABLE IF NOT EXISTS `kitty` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `generation` INT NOT NULL,
  `price_eth` DECIMAL(11,4) NOT NULL,
  `description` TEXT NULL,
  `date_of_birth` DATE NOT NULL,
  `color` VARCHAR(150) NULL,
  `price` DECIMAL(11,2) NULL,
  `img_url` TEXT NULL,
  `on_sale` VARCHAR(45) NULL,
  `crypto_id` INT NULL,
  `mother_id` INT NULL,
  `father_id` INT NULL,
  `eye_colour` VARCHAR(155) NULL,
  `pattern` VARCHAR(155) NULL,
  `fur` VARCHAR(155) NULL,
  `mouth` VARCHAR(155) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS anna;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'anna' IDENTIFIED BY 'user123';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'anna';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `kitty`
-- -----------------------------------------------------
START TRANSACTION;
USE `cryptokittiesdb`;
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (1, 'Mittens Mugwow', 6, 0.0022, 'Sup. I am the one and only Mittens Mugwow. Every Tuesday evening I watch tv and binge on horseradish. It makes the rest of the week bearable. K bye.', '2016-04-16', 'nachocheez', 1000.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1370711.svg', 't', 1370711, 1370136, 965054, 'sapphire', 'spangled', 'highlander', 'rollercoaster');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (4, 'Jax Zippynana', 9, 0.0000, '*tips hat*. I am Jax Zippynana, AKA Kitty of your dreams. If you ever want to try watching reality TV just hit me up. Fancy Cats are cool, but I\'m more interested in breeding for love', '2016-04-28', 'onyx', 0.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1425130.svg', 'NULL', 0, 0, 0, 'NULL', 'NULL', 'NULL', 'NULL');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (5, 'Ande', 13, 0.0000, 'Hola amigo. I\'m Ande, and I\'m no piñata, so keep those sticks away from me. Why don\'t we say adios to the cold weather up here in the Andes and hit a beach somewhere? Alpaca swimsuit.', '2016-04-27', 'brown', 670.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1420007.png', 'f', 1420007, 1416535, 1412701, 'thundergrey', 'amur', 'koladiviya', 'starstruck');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (6, 'Ande', 13, 0.0000, 'Hola amigo. I\'m Ande, and I\'m no piñata, so keep those sticks away from me. Why don\'t we say adios to the cold weather up here in the Andes and hit a beach somewhere? Alpaca swimsuit.', '2016-04-27', 'brown', 670.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1420007.png', 'f', 1420007, 1416535, 1412701, 'thundergrey', 'amur', 'koladiviya', 'starstruck');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (7, 'Floyd Dillibow', 12, 0.0000, 'Hello, my name is Floyd Dillibow, but I prefer to go by Jane Austen. Can you tell me if my fur pattern makes my calf look big? I\'m craving a jalapeños and seven bean dip right now, is that weird?', '2016-04-27', 'purplehaze', 400.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1416535.svg', 't', 1416535, 1415309, 1412442, 'pinefresh', 'tiger', 'munchkin', 'moue');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (8, 'Norangi Sleepyroni', 12, 0.0000, 'Boo! My real name is unspeakable in the human language, so you can call me Norangi Sleepyroni. Me and Elijah Wood don\'t talk anymore. Can I have your watch?', '2016-06-13', 'bananacream', 200.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1412701.svg', 't', 1412701, 1412579, 1412091, 'stunned', 'ganado', 'munchkin', 'moue');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (13, 'test,test', 0, 23.0000, 'e', '2019-03-01', '', 0.00, '', 't', 0, 1, 2, '', '', '', '');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (14, 'Amazing Joe', 678, 2.0000, '', '2019-03-07', '', 0.00, '', 't', 0, 1, 1, '', 'no stripes', '', '');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (15, 'test,test', 0, 2.0000, 'w', '2019-03-07', '', 2.00, '', 'f', 0, 1, 1, 'pink', 'stripes', 'test', 'none');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (19, 'Glasswalker,9', 0, 2.0000, 'Did you hear a sound? Did you make one? Did you call for the vengeance of Glasswalker? I defeated the aphids devouring Mrs. Tigger’s roses. I rescued the missing Kitteh from the park. I returned the stolen yak milk to a grateful yak. I am the justice, the answer, the righteous cause. Look for me in the wind.', '2016-11-18', 'Green', 400.00, '', 't', 0, 1430260, 1430018, 'blue', 'no stripes', '', '');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (20, 'Glasswalker,9', 0, 2.0000, 'Did you hear a sound? Did you make one? Did you call for the vengeance of Glasswalker? I defeated the aphids devouring Mrs. Tigger’s roses. I rescued the missing Kitteh from the park. I returned the stolen yak milk to a grateful yak. I am the justice, the answer, the righteous cause. Look for me in the wind.', '2016-11-18', 'Green', 400.00, '', 't', 0, 1430260, 1430018, 'blue', 'no stripes', '', '');
INSERT INTO `kitty` (`id`, `name`, `generation`, `price_eth`, `description`, `date_of_birth`, `color`, `price`, `img_url`, `on_sale`, `crypto_id`, `mother_id`, `father_id`, `eye_colour`, `pattern`, `fur`, `mouth`) VALUES (21, 'Kitty10,test', 0, 1.0000, '', '2019-03-12', 'blue', 1.00, 'https://img.cryptokitties.co/0x06012c8cf97bead5deae237070f9587f8e7a266d/1430644.png', 't', 0, 8, 9, 'pink', 'stripes', 'test', 'none');

COMMIT;

