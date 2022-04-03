CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `nit` varchar(9) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `empleados` (
  `id_empleados` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `apellidos` varchar(60) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_puesto` smallint DEFAULT NULL,
  PRIMARY KEY (`id_empleados`),
  KEY `id_puestos_puesto_empleados_idx` (`id_puesto`),
  CONSTRAINT `id_puestos_puesto_empleados` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id_puestos`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `puestos` (
  `id_puestos` smallint NOT NULL AUTO_INCREMENT,
  `puesto` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_puestos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
