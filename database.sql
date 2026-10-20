
-- =====================================================
-- PROJETO: GERENCIAMENTO DE FUNCIONARIOS E PROJETOS
-- Descricao: Banco de dados relacional desenvolvido
-- para praticar SQL e o relacionamento entre tabelas.
-- =====================================================


-- =====================================================
-- 1. ESTRUTURA E CADASTRO DE FUNCIONARIOS
-- =====================================================

CREATE TABLE tabelafuncionarios (
    id_funcionarios INT PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    departamento VARCHAR(100),
    salario FLOAT
);

INSERT INTO tabelafuncionarios
    (id_funcionarios, nome_funcionario, departamento, salario)
VALUES
    (1, 'Heitor Vieira', 'Financeiro', 4959.22),
    (2, 'Daniel Campos', 'Vendas', 3884.44),
    (3, 'Luiza Dias', 'TI', 8205.78),
    (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
    (5, 'Pietro Cavalcanti', 'TI', 4946.88),
    (6, 'Evelyn da Mata', 'Vendas', 5278.88),
    (7, 'Isabella Rocha', 'Marketing', 4006.03),
    (8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
    (9, 'Brenda Cardoso', 'TI', 8853.34),
    (10, 'Danilo Souza', 'TI', 8242.14);


-- =====================================================
-- 2. CONSULTAS E ANALISE DE DADOS
-- =====================================================

-- Visualizar todos os funcionarios cadastrados
SELECT *
FROM tabelafuncionarios;

-- Consultar funcionarios do departamento de Vendas
SELECT nome_funcionario
FROM tabelafuncionarios
WHERE departamento = 'Vendas';

-- Identificar funcionarios com salario superior a 5000
SELECT id_funcionarios
FROM tabelafuncionarios
WHERE salario > 5000;

-- Listar os departamentos existentes sem repeticao
SELECT DISTINCT departamento
FROM tabelafuncionarios;

-- Consultar funcionarios de Vendas com salario >= 6000
SELECT nome_funcionario, salario
FROM tabelafuncionarios
WHERE departamento = 'Vendas'
  AND salario >= 6000;


-- =====================================================
-- 3. ESTRUTURA E CADASTRO DE PROJETOS
-- =====================================================

CREATE TABLE tabelaprojetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente)
        REFERENCES tabelafuncionarios(id_funcionarios)
);

INSERT INTO tabelaprojetos
    (id_projeto, nome_projeto, id_gerente)
VALUES
    (1, 'Projeto A', 2),
    (2, 'Projeto B', 3),
    (3, 'Projeto C', 4);

-- Consultar projetos associados ao gerente de ID 2
SELECT *
FROM tabelaprojetos
WHERE id_gerente = 2;


-- =====================================================
-- 4. ATUALIZACAO DE DADOS
-- =====================================================

-- Atualizar o salario dos funcionarios do departamento de TI
UPDATE tabelafuncionarios
SET salario = 7500
WHERE departamento = 'TI';

-- Conferir os salarios atualizados
SELECT nome_funcionario, departamento, salario
FROM tabelafuncionarios
WHERE departamento = 'TI';


