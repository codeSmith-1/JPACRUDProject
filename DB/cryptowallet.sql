-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cryptowalletdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cryptowalletdb` ;

-- -----------------------------------------------------
-- Schema cryptowalletdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cryptowalletdb` DEFAULT CHARACTER SET utf8 ;
USE `cryptowalletdb` ;

-- -----------------------------------------------------
-- Table `wallet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `wallet` ;

CREATE TABLE IF NOT EXISTS `wallet` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `currency` VARCHAR(25) NOT NULL,
  `symbol` VARCHAR(4) NULL,
  `purchase_price` DECIMAL(8,2) NULL,
  `purchase_amount` DECIMAL(8,2) NULL,
  `purchase_date` VARCHAR(10) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS satoshi@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'satoshi'@'localhost' IDENTIFIED BY 'satoshi';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'satoshi'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `wallet`
-- -----------------------------------------------------
START TRANSACTION;
USE `cryptowalletdb`;
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (1, 'Bitcoin', 'BTC', 19100.00, 1, '2022-05-26');
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (2, 'Bitcoin', 'BTC', 18500.00, 2.05, '2022-05-21');
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (3, 'Ethereum', 'ETH', 24200.75, 3, NULL);
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (4, 'Solana', 'SOL', 25.00, 1, '2022-02-10');
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (5, 'Ethereum', 'ETH', 2200.00, 1, '2022-03-01');
INSERT INTO `wallet` (`id`, `currency`, `symbol`, `purchase_price`, `purchase_amount`, `purchase_date`) VALUES (6, 'Solana', 'SOL', 32, 1, '2021-04-03');

COMMIT;

