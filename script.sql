-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(5,2) NOT NULL
);

-- Inserindo alguns produtos
INSERT INTO produtos (nome, preco) VALUES
('Café Expresso', 5.00),
('Bolo de Cenoura', 7.50),
('Cappuccino', 6.50);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    data_pedido DATE NOT NULL
);

-- Inserindo alguns pedidos
INSERT INTO pedidos (nome_cliente, data_pedido) VALUES
('João Silva', '2025-06-19'),
('Maria Oliveira', '2025-06-18'),
('Carlos Souza', '2025-06-17');

-- (Opcional) Criação da tabela intermediária para os produtos de cada pedido
CREATE TABLE pedido_produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- (Opcional) Inserindo alguns relacionamentos pedido-produto
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) VALUES
(1, 1, 2),  -- João pediu 2 Cafés Expresso
(1, 2, 1),  -- João pediu 1 Bolo de Cenoura
(2, 3, 1);  -- Maria pediu 1 Cappuccino
