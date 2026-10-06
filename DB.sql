CREATE DATABASE IF NOT EXISTS consultorio_db;
USE consultorio_db;

DROP TABLE IF EXISTS pacientes;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    altura DECIMAL(4, 2) NOT NULL,
    peso DECIMAL(5, 2) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(10) NOT NULL UNIQUE,
    imc DECIMAL(4, 2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pacientes (nome, idade, altura, peso, imc, email, telefone, status) VALUES
('Ana Silva', 22, 1.65, 45.00, 16.53, "test1@gmail.com", "012431243", 'Abaixo do peso normal'),
('Carlos Eduardo', 30, 1.75, 52.00, 16.98, "test2@gmail.com", "112431243", 'Abaixo do peso normal'),
('Maria Santos', 28, 1.60, 58.00, 22.66, "test3@gmail.com", "212431243", 'Peso normal'),
('João Pereira', 45, 1.80, 72.00, 22.22, "test4@gmail.com", "312431243", 'Peso normal'),
('Juliana Costa', 35, 1.68, 65.00, 23.03, "test5@gmail.com", "412431243", 'Peso normal'),
('Roberto Alves', 50, 1.70, 78.00, 26.99, "test6@gmail.com", "512431243", 'Excesso de Peso'),
('Beatriz Lima', 29, 1.62, 73.00, 27.82, "test7@gmail.com", "612431243", 'Excesso de Peso'),
('Lucas Martins', 40, 1.78, 90.00, 28.40, "test8@gmail.com", "712431243", 'Excesso de Peso'),
('Fernanda Souza', 38, 1.55, 80.00, 33.30, "test9@gmail.com", "812431243", 'Obesidade'),
('Gabriel Oliveira', 52, 1.72, 105.00, 35.49, "test10@gmail.com", "912431243", 'Obesidade');