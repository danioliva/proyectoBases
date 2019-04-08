-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Gen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Gen` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Gen` (
  `idGen` VARCHAR(30) NOT NULL,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`idGen`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proteina`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Proteina` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Proteina` (
  `entrada` VARCHAR(20) NOT NULL,
  `nombre_entrada` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `Gen_idGen` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`entrada`, `Gen_idGen`),
  CONSTRAINT `fk_Proteina_Gen`
    FOREIGN KEY (`Gen_idGen`)
    REFERENCES `mydb`.`Gen` (`idGen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Proteina_Gen_idx` ON `mydb`.`Proteina` (`Gen_idGen` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Organismo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Organismo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Organismo` (
  `nombre_cientifico` VARCHAR(50) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre_cientifico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Secuencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Secuencia` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Secuencia` (
  `sec` VARCHAR(500) NOT NULL,
  `longitud` INT NOT NULL,
  `Proteina_entrada` VARCHAR(20) NOT NULL,
  `Proteina_Gen_idGen` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`sec`, `Proteina_entrada`, `Proteina_Gen_idGen`),
  CONSTRAINT `fk_Secuencia_Proteina1`
    FOREIGN KEY (`Proteina_entrada` , `Proteina_Gen_idGen`)
    REFERENCES `mydb`.`Proteina` (`entrada` , `Gen_idGen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Secuencia_Proteina1_idx` ON `mydb`.`Secuencia` (`Proteina_entrada` ASC, `Proteina_Gen_idGen` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Proteina_has_Organismo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Proteina_has_Organismo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Proteina_has_Organismo` (
  `Proteina_entrada` VARCHAR(20) NOT NULL,
  `Proteina_Gen_idGen` VARCHAR(30) NOT NULL,
  `Organismo_nombre_cientifico` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Proteina_entrada`, `Proteina_Gen_idGen`, `Organismo_nombre_cientifico`),
  CONSTRAINT `fk_Proteina_has_Organismo_Proteina1`
    FOREIGN KEY (`Proteina_entrada` , `Proteina_Gen_idGen`)
    REFERENCES `mydb`.`Proteina` (`entrada` , `Gen_idGen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proteina_has_Organismo_Organismo1`
    FOREIGN KEY (`Organismo_nombre_cientifico`)
    REFERENCES `mydb`.`Organismo` (`nombre_cientifico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Proteina_has_Organismo_Organismo1_idx` ON `mydb`.`Proteina_has_Organismo` (`Organismo_nombre_cientifico` ASC) VISIBLE;

CREATE INDEX `fk_Proteina_has_Organismo_Proteina1_idx` ON `mydb`.`Proteina_has_Organismo` (`Proteina_entrada` ASC, `Proteina_Gen_idGen` ASC) VISIBLE;

SET SQL_MODE = '';
DROP USER IF EXISTS user1;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
