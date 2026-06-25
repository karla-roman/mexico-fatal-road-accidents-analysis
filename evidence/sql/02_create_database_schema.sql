CREATE TABLE atus.Entidades (
    IdEntidad CHAR(2) NOT NULL,
    Entidad VARCHAR(100),
    CONSTRAINT PK_Entidades PRIMARY KEY (IdEntidad)
);

CREATE TABLE atus.Accidentes (
    IdAccidente INT GENERATED ALWAYS AS IDENTITY,
    IdEntidad CHAR(2) NOT NULL,
	Anio INT,
	Hora INT,
	Dia VARCHAR(20),
	Causa VARCHAR(100),
	Clasificacion VARCHAR(100),
	TipoAccidente VARCHAR(150),
	AlientoAlcoholico VARCHAR(100),

    CONSTRAINT PK_Accidentes PRIMARY KEY (IdAccidente),
    
    CONSTRAINT FK_Accidente_Entidad FOREIGN KEY (IdEntidad) 
        REFERENCES atus.Entidades (IdEntidad)
);