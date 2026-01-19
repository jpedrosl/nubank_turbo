💳 Projeto Banco de Dados – Plataforma de Jogos Digitais

Este repositório contém um projeto de banco de dados relacional desenvolvido em SQL, com o objetivo de modelar o funcionamento de uma plataforma de jogos digitais, inspirada em serviços como Steam, Epic Games e similares.

O projeto abrange desde o cadastro de usuários e jogos até funcionalidades como avaliações, comentários, amizades, biblioteca de jogos, conquistas e controle de preços.
O foco principal está em modelagem de dados, normalização, relacionamentos entre entidades e consultas SQL, seguindo boas práticas de bancos de dados relacionais.

📌 Funcionalidades do Projeto

Cadastro de usuários com carteira virtual

Registro de jogos e desenvolvedoras

Classificação de jogos por categorias (gêneros)

Biblioteca de jogos por usuário

Sistema de amizades entre usuários

Avaliações e comentários de jogos

Controle de preços

Conquistas associadas aos jogos

Consultas SQL para extração de informações relevantes

🗂️ Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes entidades principais:

Usuário – dados do jogador e saldo da carteira virtual

Desenvolvedora – estúdios responsáveis pelo desenvolvimento dos jogos

Jogo – informações gerais dos jogos disponíveis na plataforma

Categoria – gêneros dos jogos

Biblioteca – jogos adquiridos por cada usuário

Preço – valores associados aos jogos

Avaliação – notas atribuídas pelos usuários

Comentários – feedback textual dos jogadores

Conquistas – objetivos desbloqueáveis nos jogos

Amizades – relacionamento social entre usuários

Os relacionamentos foram definidos utilizando chaves primárias e estrangeiras, respeitando a integridade referencial e os princípios da normalização.

📁 Organização dos Arquivos
📦 projeto-banco-jogos
 ┣ 📜 base.sql           # Criação das tabelas e estrutura do banco
 ┣ 📜 insercoes.sql      # Inserção de dados de exemplo
 ┣ 📜 consultas.sql      # Consultas SQL para análise de dados
 ┣ 📜 automatizacoes.sql # Regras, gatilhos e automatizações (se aplicável)
 ┗ 📜 README.md          # Documentação do projeto


Cada arquivo possui uma responsabilidade específica, facilitando a leitura, manutenção e evolução do projeto.

🛠️ Tecnologias Utilizadas

SQL (compatível com PostgreSQL e MySQL)

Modelagem de Banco de Dados Relacional

Git & GitHub para versionamento e documentação

▶️ Como Executar o Projeto

Clone este repositório:

git clone https://github.com/seu-usuario/seu-repositorio.git


Abra o projeto em seu SGBD de preferência (PostgreSQL, MySQL, DBeaver, pgAdmin, entre outros).

Execute os arquivos SQL na seguinte ordem:

base.sql

insercoes.sql

consultas.sql

automatizacoes.sql (se aplicável)

📊 Exemplos de Consultas

O arquivo consultas.sql contém exemplos de consultas como:

Listar jogos por categoria

Exibir a biblioteca de jogos de um usuário

Calcular a média de avaliações de um jogo

Listar amigos de um usuário

Identificar os jogos mais bem avaliados

Essas consultas simulam análises comuns em plataformas de jogos digitais.

🎯 Objetivo Acadêmico

Este projeto foi desenvolvido com fins educacionais, visando praticar:

Criação de tabelas e relacionamentos

Uso correto de chaves primárias e estrangeiras

Escrita e otimização de consultas SQL

Organização de projetos de banco de dados

Documentação profissional no GitHub

👤 Autores

Nicolas da Silva Floriano
João Pedro Souza

Estudantes de Banco de Dados / Desenvolvimento de Sistemas

📄 Licença

Este projeto é de uso educacional.
Sinta-se à vontade para estudar, modificar e adaptar o código para fins acadêmicos ou de aprendizado.

⭐ Se este projeto te ajudou, considere deixar uma star no repositório!
