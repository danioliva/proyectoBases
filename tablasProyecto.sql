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
  `sec` VARCHAR(800) NOT NULL,
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


INSERT INTO Gen (idGen,tipo) VALUES ('Ppro_3244','ndk');
INSERT INTO Gen (idGen, tipo) VALUES ('RHE_CH01472','ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('Francci3_1210', 'ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('TERTU_2637', 'ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('EVR2', 'ndp');
INSERT INTO Gen( idGen, tipo) VALUES ('DP1948', 'ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('trd_1770', 'ndk');
INSERT INTO Gen( idgen, tipo) VALUES ('PAES_2009', 'ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('CTLon_0757', 'ndk');
INSERT INTO Gen( idGen, tipo) VALUES ('ASA_2603', 'ndk');

INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('A1AU17', 'NDK_PELPD', 'NDP kinase', 'Ppro_3244');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q2KA61', 'NDK_RHIEC', 'NDP kinase', 'RHE_CH01472');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q2JDQ4', 'NDK_FRACC', 'NDP kinase', 'Francci3_1210');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('C5BLW3', 'NDK_TERTT', 'NDP kinase', 'TERTU_2637');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q00604', 'NDP_HUMAN', 'Norrin', 'EVR2');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q6ALU8', 'NDK_DESPS', 'NDP kinase', 'DP1948');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('B9L159', 'NDK_THERP', 'NDP kinase', 'trd_1770');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('B4S573', 'NDK_PROA2', 'NDP kinase', 'PAES_2009');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('B0BCD9', 'NDK_CHLTB', 'NDP kinase', 'CTLon_0757');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('A4SP05', 'NDK_AERS4', 'NDK kinase', 'ASA_2603');

INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Pelobacter propionicus', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Rhizobium etli', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Frankia casuarinae', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Teredinibacter turnerae', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Homo sapiens', 'Eukaryota');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Desulfotalea psychrophila', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Thermomicrobium roseum ', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Prosthecochloris aestuarii', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Chlamydia trachomatis serovar L2b', 'Bacteria');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Aeromonas salmonicida', 'Bacteria');

INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('A1AU17','Ppro_3244','Pelobacter propionicus');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q2KA61','RHE_CH01472','Rhizobium etli');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q2JDQ4','Francci3_1210','Frankia casuarinae');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('C5BLW3','TERTU_2637','Teredinibacter turnerae');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q00604','EVR2','Homo sapiens');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q6ALU8','DP1948','Desulfotalea psychrophila');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('B9L159','trd_1770','Thermomicrobium roseum');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('B4S573','PAES_2009','Prosthecochloris aestuarii');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('B0BCD9','CTLon_0757','Chlamydia trachomatis serovar L2b');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('A4SP05','ASA_2603','Aeromonas salmonicida');

INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MERTFAIIKPDAVERRLAGTVIDRIEANGFTIVGMKKIKLSKEQAGGFYCVHRERPFFGE
LCDFMSRSPVIVLCLEKENAIADWRKLMGATNPANAEPGTIRRDFALSLSENSAHGSDAP
ETAAFEIAYFFNALELV', '137','A1AU17','Ppro_3244');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MAIERTFSMIKPDATKRNLTGAITKMLEDAGLRVVASKRVWMSRREAEGFYAVHKDRPFF
GELVEGMTSGPTVVQVLEGEGAILKNREIMGATNPANAAEGTIRKVHALSIGENSVHGSD
APETAAQEIKYWFSDTEIVG', '140','Q2KA61','RHE_CH01472');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MSVERTLILVKPDGVSRGLVGEVVGRLERKGLTLVALELRTLERSVAETHYGEHASKPFF
GELVDFITSGPLVALVAEGPRAVEASRGLIGATDPVKAAPGSLRGDYALEIGQNLVHGSD
SPESAKREIDLFFPGLS', '137','Q2JDQ4','Francci3_1210');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MAIEKTLSIVKPNAVKKNVIGDIYSRFEKAGLKIVAAKMTQLDDDRAGGFYEEHKARPFF
GELVEFMTSGPVLIQVLEGENAVALNREIMGATNPENAAEGTIRKDFADSLSENAVHGSD
STESAAREIAYFFDAAEIFSR', '141','C5BLW3','TERTU_2637');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MRKHVLAASFSMLSLLVIMGDTDSKTDSSFIMDSDPRRCMRHHYVDSISHPLYKCSSKMV
LLARCEGHCSQASRSEPLVSFSTVLKQPFRSSCHCCRPQTSKLKALRLRCSGGMRLTATY
RYILSCHCEECNS', '133','Q00604','EVR2');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MEKTFAIIKPDAFAAGNAGKILARIYQEGFTVIGLKKLCMSQREAEGFYAVHNKKPFFAE
LTKFMSSGPCIVMVLEAEGCIGKWRDLMGATNPADAKPGSLRREFGTIVGENATHGSDAP
ETAAVELEYFFSGLELL', '137','Q6ALU8','DP1948');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MERTLIIVKPDAVQRGLVGEVLRRLEQRGLRFVGLKLMKVDREVAERHYAEHRGKPFYED
LLAFITSGPVVVGVVEGPRAIEITRKTMGKTDPAQAEPGTIRGDLALTIGQNVIHGSDSP
EKASYEIGLFFREDELVSYERAIDRWIMG', '149','B9L159','trd_1770');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MERTLTILKPDCVRKQLIGAVIDKIERAGFRVVAMKKTKLTAQTAGEFYAVHSQRPFYGE
LVEFMSSGPCVPMILEKENAVADFRTLIGATDPAEAAEGTIRNLFADSKGENIIHGSDSA
ENAQIEAGFFFSTEEAVRVNN', '141','B4S573','PAES_2009'); 
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MEQTLSIIKPDSVGKAHIGEIIAIFEKSGLRIAAMKMVHLSVKEAEGFYVVHKERPFFQE
LVDFMISGPVVVMVLQGENAVARNRELMGATNPKEAAEGSIRALFGESIGVNAVHGSDSL
ENAAIEVSYFFAKTEVVNSVA', '141','B0BCD9','CTLon_0757');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MAIERTFSIVKPDAVSKNLIGAIYNRFESAGLKVIAAKMLHMSSEQAAGFYAEHQGKPFY
DGLVSFMTSGPVMVQVLEGEDAIRRHREIMGATNPKEALAGTLRACYAESIDRNAVHGSD
APASAAREIAYFFSDDEICPRG', '142','A4SP05','ASA_2603');




INSERT INTO Gen( idGen, tipo) VALUES ('CG10670', 'Gen');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q9VRJ0', 'GEN_DROME', 'Flap endonuclease GEN', 'CG10670');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Drosophila melanogaster (Fruit fly)', 'Insect');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q9VRJ0','CG10670', 'Drosophila melanogaster (Fruit fly)');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MGVKELWGVLTPHCERKPINELRGKKVAIDLAGWVCESLNVVDYFVHPRH
HLKNLFFRTCYLIWEQVTPVFVLEGVAPKLKSQVIAKRNELQFRGVKPKNSPECTQSQPSKGDKGRSRFNHVLKQCETL
LLSMGIQCVQGPGEAEAYCAFLNKHGLVDGVISQDSDCFAYGAVRVYRNFSVSTQGAQAAAGGAVDIYDMREITSRMDFG
QQKIIVMALLCGCDYCPDGIGGIGKDGVLKLFNKYKETEILDRMRSWRGETDKYNALEIRVDDKSICSNCGHIGKTQSHTK
SGCSVCRTHKGCDESLWKEQRLSIKSELTLRRKALLSPDFPNEEIIAEFLSEPDTIPNLNLNWRQPNLVKFIKQIGHLLQW
PEIYCFQKFFPILTRWQVQQSKQEKILIQPHEIIKKRTVKGVPSLELRWHDPSGIFKGLIPDKQIAEYEAEHPKGIEELYYT
IEPLDMLETAYPDLVAAFLKSKEKPAKKTTRKKKTASEEENKENEPNSKPKRVVRKIKAQPEENQPLLHQFLGRKKEGTPVKA
PAPQRQQCSTPITKFLPSDLESDCDAEEFDMSDIVKGIISNPNAKPALTNHDGHQLHYEPMAEDLSLRLAQMSLGNVNESPKV
ETKRDLSQVDQLPQSKRFSLEDSFDLLVKGDLQKLARTPVERFKMQHRISEKIPTPVKPLDNISYFFNQSSDNADVFEE
LMNSSLVPQDQEDNAEDEEEDDLVVISD', '726', 'Q9VRJ0', 'CG10670');


INSERT INTO Gen( idGen, tipo) VALUES ('DIF2', 'IER3 ');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('P46695', 'IEX1_HUMAN', 'Radiation-inducible gene IEX-1', 'DIF2');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Homo No Sapiens', 'Human');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('P46695','DIF2', 'Homo No Sapiens');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MCHSRSCHPTMTILQAPTPAPSTIPGPRRGSGPEIFTFDPLPEPAAAPAGRPSASRGHRKRS
RRVLYPRVVRRQLPVEEPNPAKRLLFLLLTIVFCQILMA
EEGVPAPLPPEDAPNAASLAPTPVSAVLEPFNLTSEPSDYALDLSTFLQQHPAAF', '156', 'P46695', 'DIF2');

INSERT INTO Gen( idGen, tipo) VALUES ('DNAJB13', 'TSARG6');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('Q80Y75', 'DJB13_MOUSE', '	
DnaJ homolog subfamily B13', 'DNAJB13');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Mus musculus', 'Mouse');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('Q80Y75','DNAJB13', 'Mus musculus');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MGLDYYAVLQVTRNSEDAQIKKAYRKLALKNHPLKSSEPGAPEIFKQIAEAYDVLSDPVK
RGIYDKFGEEGLKGGIPLEFGSQTPWTTGYVFHGNPDKVFHEFFGGDNPFSEFFDAEGND
IDLNFGGLWGRGVQKQDPPIERDLYLSLEDLFFGCTKKIKISRRVLNEDRYSSTIKDKIL
TIDVRPGWRQGTRITFEKEGDQGPNIIPADIIFIVKEKLHPRFRREHDNLFFVYPIPLGK
ALTCCTVEVKTLDDRLLNIPINDIVHPKYFKIVPGEGMPLPENPSKKGDLFIFFDIQFPT
RLTPQKKQMLRQALLT', '315', 'Q80Y75', 'DNAJB13');

INSERT INTO Gen( idGen, tipo) VALUES ('Calca', 'calc');
INSERT INTO Proteina (entrada,nombre_entrada,nombre,Gen_idGen) VALUES ('P01256', 'CALCA_RAT', 'Calcitonin gene-related peptide 1', 'Calca');
INSERT INTO Organismo (nombre_cientifico, tipo) VALUES ('Rattus norvegicus', 'Rat');
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('P01256','Calca', 'Rattus norvegicus');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MGFLKFSPFLVVSILLLYQACGLQAVPLRSTLESSPGMATLSEEEARLLAALVQNYMQMK
VRELEQEEEQEAEGSSLDSPRSKRCGNLSTCMLGTYTQDLNKFHTFPQTSIGVGAPGKKR
DMAKDLETNHHPYFGN', '128', 'P01256', 'Calca');


use mydb;
CREATE USER sqluser IDENTIFIED BY 'sqluserpw'; 