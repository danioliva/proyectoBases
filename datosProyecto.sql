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
INSERT INTO Proteina_has_Organismo (Proteina_entrada, Proteina_Gen_idGen, Organismo_nombre_cientifico) VALUES ('B9L159','trd_1770','Thermomicrobium roseum ');
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
EKASYEIGLFFREDELVSYERAIDRWIMG', '149','	B9L159','trd_1770'); 
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MERTLTILKPDCVRKQLIGAVIDKIERAGFRVVAMKKTKLTAQTAGEFYAVHSQRPFYGE
LVEFMSSGPCVPMILEKENAVADFRTLIGATDPAEAAEGTIRNLFADSKGENIIHGSDSA
ENAQIEAGFFFSTEEAVRVNN', '141','B4S573','PAES_2009'); 
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MEQTLSIIKPDSVGKAHIGEIIAIFEKSGLRIAAMKMVHLSVKEAEGFYVVHKERPFFQE
LVDFMISGPVVVMVLQGENAVARNRELMGATNPKEAAEGSIRALFGESIGVNAVHGSDSL
ENAAIEVSYFFAKTEVVNSVA', '141','B0BCD9','CTLon_0757');
INSERT INTO Secuencia(sec,longitud, Proteina_entrada, Proteina_Gen_idGen) VALUES ('MAIERTFSIVKPDAVSKNLIGAIYNRFESAGLKVIAAKMLHMSSEQAAGFYAEHQGKPFY
DGLVSFMTSGPVMVQVLEGEDAIRRHREIMGATNPKEALAGTLRACYAESIDRNAVHGSD
APASAAREIAYFFSDDEICPRG', '142','A4SP05','ASA_2603');
