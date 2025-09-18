CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE,
    cargo VARCHAR (255) NOT NULL,
    salario DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, dataNascimento, cargo, salario)
VALUES ("Julia Silva","1999-06-28", "Dev Junior", 2500),
("Maria das Dores","1977-11-25", "Dev Pleno", 5000),
("Marina Sena","1999-06-28", "Supervisora", 9000),
("João Maria","1999-06-28", "Dev Senior", 7000),
("Ruan Silva","1999-06-28", "Estagiario", 1500);


SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2500, cargo = 'dev junior' WHERE id =  3;

SELECT * FROM tb_colaboradores WHERE id = 3;

