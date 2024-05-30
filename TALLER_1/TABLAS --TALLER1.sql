
CREATE TABLE Juegos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    plataforma VARCHAR(50) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    precio DECIMAL(10, 2)
);


CREATE TABLE Desarrolladores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    pais VARCHAR(50)
);


CREATE TABLE Juegos_Desarrolladores (
    id_juego INT,
    id_desarrollador INT,
    FOREIGN KEY (id_juego) REFERENCES Juegos(id),
    FOREIGN KEY (id_desarrollador) REFERENCES Desarrolladores(id),
    PRIMARY KEY (id_juego, id_desarrollador)
);
