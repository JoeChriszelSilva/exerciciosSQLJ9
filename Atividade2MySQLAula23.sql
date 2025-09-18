CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nomeCategoria VARCHAR (150) NOT NULL
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nomePizza VARCHAR (255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
idCategoria BIGINT NOT NULL,
FOREIGN KEY (idCategoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (nomeCategoria) 
VALUES ('Clássicas'),
('Gourmet'),
('Especiais'),
('Doces'),
('Veganas');

INSERT INTO tb_pizzas (nomePizza, preco, idCategoria)
VALUES ('Calabresa', 35.00, 1),      
('Margherita', 40.00, 1),    
('Pizza de Picanha', 75.00, 2),
('Quatro Queijos', 50.00, 1), 
('Camarão com Catupiry', 65.00, 2),
('Chocolate com M&M', 55.00, 4), 
('Pepperoni', 45.00, 3),      
('Brócolis com Palmito', 48.00, 5); 

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nomePizza LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.idCategoria = tb_categoria.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_pizzas.idCategoria = tb_categoria.id
WHERE tb_categoria.nomeCategoria = 'Clássicas';




