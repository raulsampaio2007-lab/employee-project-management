
# Gerenciamento de Funcionários e Projetos

Projeto de banco de dados relacional desenvolvido para praticar SQL, organização de dados e relacionamento entre tabelas.

## Sobre o projeto

O projeto simula parte da estrutura de dados de uma empresa, permitindo cadastrar funcionários, consultar informações profissionais, relacionar gerentes a projetos e analisar os dados por departamento.

O desenvolvimento faz parte dos meus estudos em programação e banco de dados, com foco na aplicação prática dos fundamentos de SQL.

## Objetivos

- Estruturar tabelas para armazenar funcionários e projetos.
- Consultar informações utilizando filtros e condições.
- Identificar departamentos cadastrados.
- Atualizar informações de funcionários.
- Relacionar projetos aos seus respectivos gerentes usando `JOIN`.
- Agrupar e resumir dados por departamento e por gerente.

## Tecnologias e conceitos

- **SQL** — criação e manipulação de dados.
- **CREATE TABLE** — criação da estrutura das tabelas.
- **INSERT INTO** — inserção de registros.
- **SELECT, WHERE e DISTINCT** — consultas e filtragem de dados.
- **JOIN e LEFT JOIN** — combinação de dados de duas tabelas.
- **GROUP BY, COUNT e AVG** — agrupamento e cálculos por categoria.
- **UPDATE** — atualização de registros.
- **PRIMARY KEY e FOREIGN KEY** — identificação de registros e relacionamento entre tabelas.

## Estrutura do banco de dados

### Tabela `tabelafuncionarios`

Armazena as informações dos funcionários:

| Campo | Descrição |
|---|---|
| `id_funcionarios` | Identificador único do funcionário |
| `nome_funcionario` | Nome do funcionário |
| `departamento` | Departamento ao qual pertence |
| `salario` | Salário cadastrado |

### Tabela `tabelaprojetos`

Armazena as informações dos projetos:

| Campo | Descrição |
|---|---|
| `id_projeto` | Identificador único do projeto |
| `nome_projeto` | Nome do projeto |
| `id_gerente` | Identificador do funcionário responsável |

A coluna `id_gerente` é uma chave estrangeira que referencia `id_funcionarios` na tabela de funcionários, estabelecendo um relacionamento entre as duas tabelas.

## Consultas e operações

O script SQL contempla:

- Listagem dos funcionários cadastrados.
- Consulta de funcionários por departamento.
- Filtragem por faixa salarial.
- Listagem de departamentos sem duplicidade.
- Consulta de projetos por identificador de gerente.
- Listagem de cada projeto com o nome do gerente responsável (`JOIN`).
- Quantidade de funcionários por departamento (`GROUP BY` e `COUNT`).
- Média salarial por departamento (`GROUP BY` e `AVG`).
- Quantidade de projetos por gerente (`JOIN` e `GROUP BY`).
- Listagem de todos os funcionários, inclusive os que não gerenciam projetos (`LEFT JOIN`).
- Atualização dos salários dos funcionários de TI.

### Exemplos de resultados

Quantidade de funcionários por departamento:

| departamento | total_funcionarios |
|---|---|
| TI | 4 |
| Vendas | 3 |
| Financeiro | 2 |
| Marketing | 1 |

Projetos com seus gerentes:

| nome_projeto | gerente |
|---|---|
| Projeto A | Daniel Campos |
| Projeto B | Luiza Dias |
| Projeto C | Davi Lucas Moraes |

## Como executar

1. Utilize um sistema de banco de dados compatível com o script SQL (testado em SQLite).
2. Abra o arquivo `database.sql` em seu ambiente de desenvolvimento.
3. Execute o script em um banco de dados de teste.
4. Confira os resultados das consultas e da atualização salarial.

## Aprendizados

Este projeto representa uma etapa da minha jornada de aprendizado em tecnologia, na qual venho desenvolvendo a capacidade de estruturar bancos de dados, consultar informações, combinar tabelas com `JOIN` e resumir dados com `GROUP BY`.

## Autor

Desenvolvido por Raul Sampaio Mochnacs Arruda como projeto prático de estudos em SQL.

[LinkedIn](https://www.linkedin.com/in/raul-sampaio-mochnacs-arruda-7a48323a6)
