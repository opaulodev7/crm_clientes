CREATE DATABASE crm_clientes;

USE crm_clientes;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    email VARCHAR(150) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE servicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10,2) NOT NULL,
    data DATE NOT NULL,
    cliente_id INT NOT NULL,

    CONSTRAINT fk_cliente
    FOREIGN KEY (cliente_id)
    REFERENCES clientes(id)
    ON DELETE CASCADE
);

INSERT INTO clientes (nome, telefone, email, cidade)
VALUES
('Carlos Silva', '(81) 99999-1111', 'carlos@email.com', 'Recife'),
('Ana Souza', '(81) 98888-2222', 'ana@email.com', 'Olinda'),
('João Pereira', '(81) 97777-3333', 'joao@email.com', 'Jaboatão');

INSERT INTO servicos (nome, descricao, valor, data, cliente_id)
VALUES
('Criação de Site', 'Landing page institucional', 1200.00, '2026-05-10', 1),
('Manutenção', 'Correção de sistema', 350.00, '2026-05-12', 2),
('Consultoria', 'Análise técnica', 500.00, '2026-05-14', 3);