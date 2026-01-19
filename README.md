💳 NU Turbo – Sistema de Banco Digital (SQL)

Projeto de banco de dados relacional inspirado em funcionalidades de um banco digital, desenvolvido em SQL (PostgreSQL).
O NU Turbo tem como objetivo simular operações comuns de um sistema bancário, aplicando boas práticas de modelagem de dados, consultas SQL, automatizações com triggers e functions e organização profissional de scripts.

Este projeto foi desenvolvido com foco educacional e de portfólio, sendo ideal para demonstrar conhecimentos em banco de dados em entrevistas técnicas e processos seletivos.

📌 Funcionalidades do Projeto

Cadastro de clientes

Gerenciamento de contas bancárias

Controle de cartões e limites

Registro de movimentações financeiras

Histórico de alterações de limite de cartão

Automatizações com functions e triggers

Consultas SQL para análise e relatórios

🗂️ Estrutura do Projeto
nu_turbo/
│
├── base.sql              # Criação das tabelas e relacionamentos
├── insercoes.sql         # Inserção de dados de exemplo
├── consultas.sql         # Consultas SQL para análise e relatórios
├── automatizacoes.sql    # Triggers e functions (regras de negócio)
├── index.sql             # Índices para otimização de desempenho
└── README.md             # Documentação do projeto


Cada arquivo possui uma responsabilidade específica, facilitando a manutenção, leitura e evolução do projeto.

🧱 Modelagem do Banco de Dados

O banco de dados foi modelado utilizando conceitos fundamentais de bancos relacionais, como:

Chaves primárias e estrangeiras

Relacionamentos entre entidades

Restrições de integridade

Normalização dos dados

Índices para melhoria de performance

A estrutura foi pensada para evitar redundância, garantir consistência e simular regras reais de um sistema bancário.

⚙️ Tecnologias Utilizadas

PostgreSQL

SQL / PLpgSQL

Git & GitHub para versionamento e controle de código

🚀 Como Executar o Projeto

Crie o banco de dados:

CREATE DATABASE nu_turbo;


Conecte-se ao banco:

psql -d nu_turbo


Execute os scripts na ordem correta:

\i base.sql
\i insercoes.sql
\i automatizacoes.sql
\i index.sql


Para testar consultas e relatórios:

\i consultas.sql

🔁 Automatizações

O projeto utiliza functions e triggers para implementar regras de negócio diretamente no banco de dados, como:

Atualização automática de limites

Registro de histórico de alterações

Garantia de consistência dos dados

Centralização das regras no banco

Essas automatizações estão concentradas no arquivo automatizacoes.sql.

📊 Consultas SQL

O arquivo consultas.sql contém consultas para:

Listagem de clientes e contas

Análise de movimentações financeiras

Verificação de limites de cartão

Relatórios básicos para apoio à decisão

Essas consultas simulam cenários reais de análise em sistemas bancários.

🎯 Objetivo do Projeto

Este projeto foi desenvolvido com os seguintes objetivos:

Aprimorar habilidades em SQL e PostgreSQL

Praticar modelagem de dados

Aplicar triggers e functions

Simular regras reais de um banco digital

Criar um projeto sólido para portfólio profissional

📌 Próximas Melhorias (Roadmap)

Criação de procedures para operações mais complexas

Implementação de views para relatórios

Controle de permissões por tipo de usuário

Auditoria detalhada de operações

Simulação de transferências e PIX

👨‍💻 Autor

Nicolas da Silva Floriano
📍 Brasil
🎓 Desenvolvedor em formação
💼 Foco em Banco de Dados e Back-end

📄 Licença

Projeto de uso educacional, livre para estudos, adaptações e aprimoramentos.
