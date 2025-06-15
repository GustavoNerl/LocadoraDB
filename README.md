📽️ Banco de Dados - Sistema de Locadora de Filmes
Este banco de dados foi desenvolvido para gerenciar as operações de uma locadora de filmes, incluindo cadastro de clientes, filmes, funcionários, e controle das locações.

🧱 Estrutura do Banco de Dados
O banco de dados é composto por tabelas dimensionais (iniciadas com D_) e uma tabela de fato (F_locacao) que registra os eventos de locação.

📁 Tabelas Dimensionais
D_genero
Armazena os gêneros dos filmes disponíveis.

Campo	Tipo	Descrição
ID	int (PK)	Identificador único
DESCRICAO	nvarchar(20)	Nome do gênero (ex: Ação, Drama)

D_midia
Contém os tipos de mídia em que os filmes são disponibilizados (ex: DVD, Blu-Ray).

Campo	Tipo	Descrição
ID	int (PK)	Identificador único
DESCRICAO	char(20)	Tipo de mídia

D_filmes
Cadastro dos filmes da locadora.

Campo	Tipo	Descrição
ID	int (PK)	Identificador do filme
DESCRICAO	char(50)	Título do filme
GENERO	int (FK)	Referência para D_genero
MIDIA	int (FK)	Referência para D_midia

D_cliente
Informações dos clientes da locadora.

Campo	Tipo	Descrição
CPF	int (PK)	CPF do cliente
NOME	char(100)	Nome completo
TELEFONE	char(10)	Número de telefone
ENDERECO	char(100)	Endereço
EMAIL	char(100)	E-mail
DATA_NASC	date	Data de nascimento

D_funcionario
Registra os funcionários da locadora.

Campo	Tipo	Descrição
ID	int (PK)	Identificador do funcionário
NOME	char(100)	Nome completo
CARGO	char(30)	Cargo (ex: Atendente)
DATA_NASC	date	Data de nascimento

📦 Tabela de Fato
F_locacao
Tabela que registra todas as locações feitas na locadora.

Campo	Tipo	Descrição
ID	int (PK)	Identificador da locação
ID_FILME	int (FK)	Filme locado (D_filmes)
ID_CLIENTE	int (FK)	Cliente que fez a locação (D_cliente)
ID_FUNCIONARIO	int (FK)	Funcionário responsável (D_funcionario)
DATA_LOCACAO	date	Data da locação
DATA_DEVOLUCAO	date	Data de devolução prevista/real
VALOR	decimal(10,2)	Valor cobrado pela locação

🔗 Relacionamentos
Um filme pertence a um gênero e a um tipo de mídia.

Uma locação é feita por um cliente, intermediada por um funcionário, e envolve um filme específico.

📌 Observações
As tabelas seguem boas práticas de modelagem relacional.

As chaves estrangeiras garantem a integridade referencial entre as entidades.

A tabela de locação (F_locacao) centraliza as interações comerciais da locadora.

🛠️ Tecnologias
Banco de Dados: MySQL

Codificação: SQL padrão com adaptações para MySQL (ex: AUTO_INCREMENT)
