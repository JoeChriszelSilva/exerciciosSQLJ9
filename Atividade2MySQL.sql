CREATE DATABASE db_kingImports;

USE db_kingImports;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT NOT NULL,
    produto VARCHAR(255) NOT NULL,
    marca VARCHAR (255) NOT NULL,
    descricao VARCHAR (255) NOT NULL,
    Preco DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (produto, marca, descricao, preco) 
VALUES ('Smartphone Galaxy', 'Samsung', 'Tela infinita de 6.4 polegadas e câmera de 50MP.', 1899.99),
('Notebook Inspiron', 'Dell', 'Processador Intel Core i5 de última geração.', 3500.50),
('Camiseta Casual', 'Hering', 'Camiseta de algodão na cor preta.', 49.90),
('Calça Jeans Skinny', 'Levi''s', 'Calça jeans azul de corte ajustado.', 120.00),
('Fones de Ouvido', 'JBL', 'Fones sem fio com cancelamento de ruído.', 299.00),
('Mouse Gamer', 'Logitech', 'Mouse óptico com iluminação RGB.', 85.00),
('Copo Térmico', 'Stanley', 'Copo de aço inoxidável para bebidas geladas.', 65.50),
('Carregador Portátil', 'Anker', 'Power bank de 10000mAh para celulares.', 140.00);


SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 3499.99 WHERE id =  10;

SELECT * FROM tb_produtos WHERE id = 10;