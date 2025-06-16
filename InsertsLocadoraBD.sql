USE locadoradb

--- inserts generos --

INSERT INTO D_genero (DESCRICAO) VALUES ('Ação');
INSERT INTO D_genero (DESCRICAO) VALUES ('Comédia');
INSERT INTO D_genero (DESCRICAO) VALUES ('Drama');
INSERT INTO D_genero (DESCRICAO) VALUES ('Ficção Científica');
INSERT INTO D_genero (DESCRICAO) VALUES ('Romance');
INSERT INTO D_genero (DESCRICAO) VALUES ('Terror');
INSERT INTO D_genero (DESCRICAO) VALUES ('Documentário');
INSERT INTO D_genero (DESCRICAO) VALUES ('Animação');
INSERT INTO D_genero (DESCRICAO) VALUES ('Suspense');
INSERT INTO D_genero (DESCRICAO) VALUES ('Fantasia');


-- inserts midias --

INSERT INTO D_midia (DESCRICAO) VALUES ('Filme');
INSERT INTO D_midia (DESCRICAO) VALUES ('Novela');
INSERT INTO D_midia (DESCRICAO) VALUES ('Série');
INSERT INTO D_midia (DESCRICAO) VALUES ('Documentário');


-- inserts filmes --

INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Vingadores: Ultimato', 1, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('As Branquelas', 2, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('A Espera de um Milagre', 3, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Interestelar', 4, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Orgulho e Preconceito', 5, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Invocação do Mal', 6, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Toy Story', 8, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Fragmentado', 9, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('O Senhor dos Anéis', 10, 1);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Avenida Brasil', 3, 2);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('O Clone', 5, 2);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Terra e Paixão', 9, 2);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Pantanal', 10, 2);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Caminho das Índias', 4, 2);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Breaking Bad', 9, 3);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Stranger Things', 4, 3);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Game of Thrones', 10, 3);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Friends', 2, 3);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('The Office', 2, 3);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('O Dilema das Redes', 7, 4);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Planeta Terra', 10, 4);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Making a Murderer', 9, 4);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('Blackfish', 3, 4);
INSERT INTO D_filmes (DESCRICAO, GENERO, MIDIA) VALUES ('A 13ª Emenda', 3, 4);
select * from D_filmes

--Inserts Clientes ----

INSERT INTO D_cliente (CPF, NOME, TELEFONE, ENDERECO, EMAIL, DATA_NASC) VALUES
(123456789, 'Ana Souza', '1198765432', 'Rua das Flores, 123', 'ana.souza@email.com', '1990-05-15'),
(234567890, 'Carlos Mendes', '1196543210', 'Av. Paulista, 456', 'carlos.mendes@email.com', '1985-10-20'),
(345678901, 'Beatriz Lima', '1198765123', 'Rua do Sol, 789', 'beatriz.lima@email.com', '1992-07-03'),
(456789012, 'Fernando Alves', '1194321098', 'Av. das Palmeiras, 101', 'fernando.alves@email.com', '1988-12-11'),
(567890123, 'Juliana Costa', '1195432187', 'Rua das Acácias, 222', 'juliana.costa@email.com', '1995-03-25'),
(678901234, 'Rafael Pereira', '1197654321', 'Av. Central, 333', 'rafael.pereira@email.com', '1983-09-14'),
(789012345, 'Mariana Silva', '1193456789', 'Rua dos Pinheiros, 444', 'mariana.silva@email.com', '1997-06-30'),
(890123456, 'Pedro Santos', '1192143657', 'Av. Rio Branco, 555', 'pedro.santos@email.com', '1980-01-08'),
(901234567, 'Camila Oliveira', '1196781234', 'Rua São João, 666', 'camila.oliveira@email.com', '1993-08-17'),
(102345678, 'Lucas Martins', '1198312765', 'Av. Independência, 777', 'lucas.martins@email.com', '1986-11-05');
select * from D_cliente
-- inserts funcionarios -- 

INSERT INTO D_funcionario (NOME, CARGO, DATA_NASC) VALUES
('João Silva', 'Gerente', '1985-04-12'),
('Maria Oliveira', 'Atendente', '1990-09-23'),
('Carlos Souza', 'Assistente', '1995-06-17'),
('Fernanda Lima', 'Operador de Caixa', '1988-11-05'),
('Ricardo Pereira', 'Técnico', '1992-02-28');
select * from D_funcionario



-- inserts locacao --

INSERT INTO F_locacao (ID_FILME, ID_CLIENTE, ID_FUNCIONARIO, DATA_LOCACAO, DATA_DEVOLUCAO, VALOR) VALUES
(3, 123456789, 1, '2025-06-01', '2025-06-05', 15.99),
(5, 234567890, 2, '2025-06-02', '2025-06-06', 12.50),
(7, 345678901, 3, '2025-06-03', '2025-06-07', 10.99),
(3, 456789012, 4, '2025-06-04', '2025-06-08', 18.00),
(8, 567890123, 5, '2025-06-05', '2025-06-09', 14.75),
(10, 678901234, 1, '2025-06-06', '2025-06-10', 16.50),
(7, 789012345, 2, '2025-06-07', '2025-06-11', 11.25),
(5, 890123456, 3, '2025-06-08', '2025-06-12', 13.99),
(8, 901234567, 4, '2025-06-09', '2025-06-13', 9.99),
(10, 102345678, 5, '2025-06-10', '2025-06-14', 19.25),
(5, 234567890, 1, '2025-06-11', '2025-06-15', 10.50),
(7, 345678901, 3, '2025-06-12', '2025-06-16', 12.75),
(3, 456789012, 4, '2025-06-13', '2025-06-17', 14.99),
(8, 567890123, 2, '2025-06-14', '2025-06-18', 16.00),
(10, 678901234, 5, '2025-06-15', '2025-06-19', 13.50),
(3, 789012345, 1, '2025-06-16', '2025-06-20', 17.99),
(5, 890123456, 2, '2025-06-17', '2025-06-21', 12.00),
(7, 901234567, 3, '2025-06-18', '2025-06-22', 11.99),
(8, 102345678, 4, '2025-06-19', '2025-06-23', 15.25),
(10, 123456789, 5, '2025-06-20', '2025-06-24', 18.75),
(4, 234567890, 1, '2025-06-21', '2025-06-25', 14.00),
(6, 345678901, 3, '2025-06-22', '2025-06-26', 13.99),
(9, 456789012, 4, '2025-06-23', '2025-06-27', 11.50),
(2, 567890123, 2, '2025-06-24', '2025-06-28', 17.25),
(1, 678901234, 5, '2025-06-25', '2025-06-29', 19.99),
(3, 789012345, 1, '2025-06-26', '2025-06-30', 12.25),
(5, 890123456, 2, '2025-06-27', '2025-07-01', 15.50),
(7, 901234567, 3, '2025-06-28', '2025-07-02', 13.75),
(8, 102345678, 4, '2025-06-29', '2025-07-03', 10.99),
(10, 123456789, 5, '2025-06-30', '2025-07-05', 9.99),
(2, 234567890, 1, '2025-07-01', '2025-07-05', 14.99),
(4, 345678901, 3, '2025-07-02', '2025-07-06', 17.50),
(9, 456789012, 4, '2025-07-03', '2025-07-07', 13.99),
(1, 567890123, 5, '2025-07-04', '2025-07-08', 15.75),
(7, 678901234, 2, '2025-07-05', '2025-07-09', 19.25),
(3, 789012345, 1, '2025-07-06', '2025-07-10', 10.99),
(5, 890123456, 3, '2025-07-07', '2025-07-11', 12.50),
(8, 901234567, 4, '2025-07-08', '2025-07-12', 16.25),
(10, 102345678, 5, '2025-07-09', '2025-07-13', 18.00),
(6, 123456789, 2, '2025-07-10', '2025-07-14', 14.99),
(4, 234567890, 1, '2025-07-11', '2025-07-15', 11.75),
(7, 345678901, 3, '2025-07-12', '2025-07-16', 17.00),
(2, 456789012, 4, '2025-07-13', '2025-07-17', 10.50),
(1, 567890123, 5, '2025-07-14', '2025-07-18', 13.75),
(9, 678901234, 2, '2025-07-15', '2025-07-19', 15.99),
(8, 789012345, 1, '2025-07-16', '2025-07-20', 19.50),
(5, 890123456, 3, '2025-07-17', '2025-07-21', 12.99),
(10, 901234567, 4, '2025-07-18', '2025-07-22', 11.75),
(6, 102345678, 5, '2025-07-19', '2025-07-23', 16.50),
(4, 123456789, 2, '2025-07-20', '2025-07-24', 14.25),
(2, 234567890, 1, '2025-07-21', '2025-07-25', 10.00),
(7, 345678901, 3, '2025-07-22', '2025-07-26', 17.75),
(9, 456789012, 4, '2025-07-23', '2025-07-27', 18.50),
(1, 567890123, 5, '2025-07-24', '2025-07-28', 14.00),
(8, 678901234, 2, '2025-07-25', '2025-07-29', 19.99),
(10, 789012345, 1, '2025-07-26', '2025-07-30', 12.50),
(5, 890123456, 3, '2025-07-27', '2025-07-31', 15.75),
(3, 901234567, 4, '2025-07-28', '2025-08-01', 11.99),
(6, 102345678, 5, '2025-07-29', '2025-08-02', 13.50),
(9, 123456789, 1, '2025-07-30', '2025-08-03', 17.99),
(7, 234567890, 2, '2025-07-31', '2025-08-04', 14.50),
(5, 345678901, 3, '2025-08-01', '2025-08-05', 15.75),
(3, 456789012, 4, '2025-08-02', '2025-08-06', 19.99),
(1, 567890123, 5, '2025-08-03', '2025-08-07', 11.25),
(10, 678901234, 2, '2025-08-04', '2025-08-08', 13.99),
(6, 789012345, 1, '2025-08-05', '2025-08-09', 10.50),
(2, 890123456, 3, '2025-08-06', '2025-08-10', 12.75),
(8, 901234567, 4, '2025-08-07', '2025-08-11', 14.99),
(4, 102345678, 5, '2025-08-08', '2025-08-12', 16.50),
(3, 123456789, 1, '2025-08-09', '2025-08-13', 18.75),
(5, 234567890, 2, '2025-08-10', '2025-08-14', 15.99),
(7, 345678901, 3, '2025-08-11', '2025-08-15', 13.25),
(9, 456789012, 4, '2025-08-12', '2025-08-16', 17.50),
(1, 567890123, 5, '2025-08-13', '2025-08-17', 12.99),
(8, 678901234, 2, '2025-08-14', '2025-08-18', 19.99),
(6, 789012345, 1, '2025-08-15', '2025-08-19', 14.50),
(4, 890123456, 3, '2025-08-16', '2025-08-20', 11.99),
(2, 901234567, 4, '2025-08-17', '2025-08-21', 10.50),
(10, 102345678, 5, '2025-08-18', '2025-08-22', 16.75),
(9, 123456789, 1, '2025-08-19', '2025-08-23', 17.25),
(3, 234567890, 2, '2025-08-20', '2025-08-24', 12.50),
(5, 345678901, 3, '2025-08-21', '2025-08-25', 13.99),
(7, 456789012, 4, '2025-08-22', '2025-08-26', 15.25),
(1, 567890123, 5, '2025-08-23', '2025-08-27', 18.50),
(8, 678901234, 2, '2025-08-24', '2025-08-28', 19.75),
(6, 789012345, 1, '2025-08-25', '2025-08-29', 14.00),
(4, 890123456, 3, '2025-08-26', '2025-08-30', 11.50),
(2, 901234567, 4, '2025-08-27', '2025-08-31', 10.25),
(10, 102345678, 5, '2025-08-28', '2025-09-01', 16.50),
(9, 123456789, 1, '2025-08-29', '2025-09-02', 17.75),
(3, 234567890, 2, '2025-08-30', '2025-09-03', 12.99),
(5, 345678901, 3, '2025-08-31', '2025-09-04', 14.25),
(7, 456789012, 4, '2025-09-01', '2025-09-05', 15.99),
(1, 567890123, 5, '2025-09-02', '2025-09-06', 18.25),
(8, 678901234, 2, '2025-09-03', '2025-09-07', 19.50),
(6, 789012345, 1, '2025-09-04', '2025-09-08', 14.99),
(4, 890123456, 3, '2025-09-05', '2025-09-09', 11.75),
(2, 901234567, 4, '2025-09-06', '2025-09-10', 10.50);

select * from F_locacao
where ID = 1

SELECT 
	COUNT(ID) AS 'LOCAÇÕES',
	CONCAT('R$: ', FORMAT(SUM(VALOR),2, 'pt-BR')) AS 'MONTANTE',
	CONCAT(MONTH(DATA_DEVOLUCAO),'-', YEAR(DATA_DEVOLUCAO)) AS PERIODO

FROM 

F_locacao
GROUP BY
PERIODO

/* 1) Liste quantas locações foram realizadas em cada mês. 
   2) Filtrar locações de agosto de 2025.
   3) Liste as locações mensais de um determinado CPF informando o montante e a média.
   4) Conte as locações mensais em que o montante foi maior do que R$:200.
   5) Liste em ordem decrescente as locações dos clientes.
	Desafio: Liste a quantidade de dias que cada filme foi locado.
*/

SELECT 
	COUNT(ID) AS LOCACOES,
	CONCAT(MONTH(DATA_DEVOLUCAO),'-', YEAR(DATA_DEVOLUCAO)) AS PERIODO
FROM F_locacao

GROUP BY 
PERIODO

SELECT 
	COUNT(ID) AS LOCACOES,
	CONCAT(MONTH(DATA_DEVOLUCAO),'-', YEAR(DATA_DEVOLUCAO)) AS PERIODO
FROM F_locacao

WHERE DATA_DEVOLUCAO BETWEEN '2025-08-01' and '2025-08-31'

GROUP BY 
PERIODO

/*Exercicio 3
3) Liste as locações mensais de um determinado CPF informando o montante e a média.*/

SELECT 
	ID_CLIENTE AS CPF,
    COUNT(ID) AS LOCACOES,
	CONCAT(MONTH(DATA_DEVOLUCAO),'-', YEAR(DATA_DEVOLUCAO)) AS PERIODO,
    SUM(VALOR) AS MONTANTE,
    AVG(VALOR) AS MÉDIA
    
    
FROM F_locacao

WHERE ID_CLIENTE = '123456789'

GROUP BY 
PERIODO


select * from f_locacao

/* 4) Conte as locações mensais em que o montante foi maior do que R$:200. */

SELECT 
    COUNT(ID) AS LOCACOES,
	CONCAT(MONTH(DATA_DEVOLUCAO),'-', YEAR(DATA_DEVOLUCAO)) AS PERIODO,
    SUM(VALOR) AS MONTANTE
    
FROM F_locacao

GROUP BY 
PERIODO

HAVING MONTANTE > 200


/* 5) Liste em ordem decrescente as locações dos clientes. */

SELECT 
	ID_CLIENTE AS CPF,
    COUNT(ID) AS LOCACOES
    
FROM F_locacao

WHERE ID_CLIENTE 

GROUP BY 
CPF
ORDER BY 
LOCACOES DESC

/*Desafio: Liste a quantidade de dias que cada filme foi locado.*/

SELECT 
	ID_FILME AS FILME,
    sum(datediff(DATA_DEVOLUCAO, DATA_LOCACAO)) AS Dias
FROM F_locacao

GROUP BY 
Filme

SELECT 
	ID_FILME AS FILME,
    datediff(DATA_DEVOLUCAO, DATA_LOCACAO) AS Dias
FROM F_locacao