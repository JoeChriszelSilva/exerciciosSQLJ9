CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nomeClasse VARCHAR(50) NOT NULL,
	habilidades VARCHAR(255)
);

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nomePersonagem VARCHAR(100) NOT NULL,
	nivel INT DEFAULT 1,
	ataque INT NOT NULL,
	defesa INT NOT NULL,
	magia INT,
	idClasse BIGINT NOT NULL,
	FOREIGN KEY (idClasse) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nomeClasse, habilidades)
VALUES('Guerreiro', 'Foco em combate corpo a corpo, usa espadas e armaduras pesadas.'),
('Mago', 'Especialista em magia, usa feitiços de ataque e defesa.'),
('Arqueiro', 'Habilidade com arcos, ataca inimigos à distância.'),
('Curandeiro', 'Focado em magias de cura e suporte para o grupo.'),
('Ladino', 'Ágil e furtivo, especializado em ataques surpresa e emboscadas.');

INSERT INTO tb_personagem( nomePersonagem, nivel, ataque, defesa, magia, idClasse) 
VALUES('Arthur', 5, 2500, 1500, 100, 1),    
('Merlin', 8, 300, 800, 5000, 2),       
('Legolas', 6, 4000, 1200, 0, 3),       
('Clara', 4, 200, 2000, 3500, 4),       
('Kael', 7, 2200, 1800, 1500, 1),      
('Lyra', 5, 1800, 900, 0, 3),           
('Geralt', 10, 3500, 2500, 800, 5),     
('Morgana', 9, 500, 1000, 4800, 2);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nomePersonagem LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.idClasse = tb_classes.id;

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.idClasse = tb_classes.id
WHERE tb_classes.nomeClasse = 'Mago';

