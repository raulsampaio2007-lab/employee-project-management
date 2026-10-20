
# Gerenciamento de Funcionários e Projetos

Projeto de banco de dados relacional desenvolvido para praticar SQL, organização de dados e relacionamento entre tabelas.

## Sobre o projeto

O projeto simula parte da estrutura de dados de uma empresa, permitindo cadastrar funcionários, consultar informações profissionais e relacionar gerentes a projetos.

O desenvolvimento faz parte dos meus estudos em programação e banco de dados, com foco na aplicação prática dos fundamentos de SQL.

## Objetivos

- Estruturar tabelas para armazenar funcionários e projetos.
- Consultar informações utilizando filtros e condições.
- Identificar departamentos cadastrados.
- Atualizar informações de funcionários.
- Relacionar projetos aos seus respectivos gerentes.
- Praticar operações de exclusão de registros e tabelas.

## Tecnologias e conceitos

- **SQL** — criação e manipulação de dados.
- **CREATE TABLE** — criação da estrutura das tabelas.
- **INSERT INTO** — inserção de registros.
- **SELECT, WHERE e DISTINCT** — consultas e filtragem de dados.
- **UPDATE e DELETE** — atualização e exclusão de registros.
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
- Atualização dos salários dos funcionários de TI.
- Exemplos de exclusão de registros e remoção de tabelas.

As operações de exclusão e remoção estão comentadas no script para evitar que sejam executadas acidentalmente durante a demonstração principal.

## Como executar

1. Utilize um sistema de banco de dados compatível com o script SQL.
2. Abra o arquivo `database.sql` em seu ambiente de desenvolvimento.
3. Execute o script em um banco de dados de teste.
4. Confira os resultados das consultas e da atualização salarial.

As instruções de exclusão são opcionais e devem ser executadas separadamente, observando o relacionamento entre funcionários e projetos.

## Aprendizados

Este projeto representa uma etapa da minha jornada de aprendizado em tecnologia, na qual venho desenvolvendo a capacidade de estruturar bancos de dados, consultar informações e compreender os relacionamentos entre tabelas.

## Autor

Desenvolvido como projeto prático de estudos em SQL.


