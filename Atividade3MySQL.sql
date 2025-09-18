CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    dataNascimento DATE,
    curso VARCHAR (255) NOT NULL,
    nota DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, dataNascimento, curso, nota) VALUES
('João da Silva', '2000-05-15', 'Ciência da Computação', 8.50),
('Maria Souza', '2001-09-22', 'Engenharia Civil', 7.80),
('Pedro Santos', '1999-03-10', 'Medicina', 9.25),
('Ana Lima', '2002-11-28', 'Arquitetura e Urbanismo', 6.90),
('Carlos Ferreira', '2000-07-03', 'Direito', 7.50),
('Fernanda Costa', '2003-01-19', 'Nutrição', 8.90),
('Rafael Alves', '2001-04-05', 'Psicologia', 6.75),
('Camila Oliveira', '2002-08-30', 'Administração', 9.50);


SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 6.5 WHERE id =  3;

SELECT * FROM tb_alunos WHERE id = 3;

