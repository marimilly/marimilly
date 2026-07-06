CREATE TABLE treinadores (
id_treinador SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
especialidade VARCHAR(50) NULL
);

CREATE TABLE alunos (
matricula SERIAL PRIMARY KEY,
nome_completo VARCHAR(100) NOT NULL,
CPF CHAR(11) NOT NULL UNIQUE,
status BOOLEAN
);

CREATE TABLE treinos_agendados (
id_agendamento SERIAL PRIMARY KEY,
matricula_aluno INT NOT NULL,
id_treinador INT NOT NULL,
data_horario TIMESTAMP NOT NULL,
FOREIGN KEY(matricula_aluno) REFERENCES alunos (matricula),
FOREIGN KEY(id_treinador) REFERENCES treinadores (id_treinador)
);

INSERT INTO treinadores(nome,especialidade) VALUES
('Mariana','Musculação'),
('Fernanda','Crossfit'),
('José','Funcional'),
('Julia','Pilates'),
('Manel','Cardio');

INSERT INTO alunos(nome_completo,CPF,status) VALUES
('Ana Beatriz Dalva','12345678901',TRUE),
('Luffy Santos Silva','23456789012',TRUE),
('Caylane Rodrigues','34567890123',FALSE),
('Naruto Uzumaki Carvalho','45678901234',TRUE),
('Bilbo Bolseiro Tuk','56789012345',TRUE);

INSERT INTO treinos_agendados (matricula_aluno, id_treinador, data_horario) VALUES
(1,2,'2026-05-27 08:00:00'),
(3,1,'2026-05-27 10:30:00'),
(5,4,'2026-05-28 18:00:00');

SELECT * FROM treinos_agendados;

INSERT INTO treinadores(nome, especialidade) VALUES
('Carlos Henrique','Musculação'),
('Fernanda Souza','Crossfit'),
('Ricardo Lima','Funcional'),
('Patricia Alves','Pilates'),
('Gustavo Rocha','Cardio'),
('Amanda Costa','Musculação'),
('Diego Martins','Crossfit'),
('Bianca Oliveira','Funcional'),
('Leonardo Santos','Pilates'),
('Camila Ferreira','Cardio'),
('Matheus Gomes','Musculação'),
('Juliana Ribeiro','Crossfit'),
('Bruno Pereira','Funcional'),
('Larissa Mendes','Pilates'),
('Rafael Barbosa','Cardio');

SELECT * FROM treinadores;

SELECT * FROM treinadores
WHERE especialidade = 'Musculação' OR especialidade = 'Crossfit'
ORDER BY especialidade, nome;

SELECT nome,especialidade FROM treinadores;

SELECT especialidade, COUNT(especialidade) AS quantidade
FROM treinadores
GROUP BY especialidade
ORDER BY quantidade;

SELECT * FROM treinadores;
SELECT * FROM alunos;
SELECT * FROM treinos_agendados;

INSERT INTO treinadores(nome,especialidade) VALUES
('Orlando','Crossfit'),
('Juliano','Crossfit'),
('Jorge','Funcional'),
('Emanoela','Pilates'),
('Rita','Cardio'),
('Jiornia','Musculação'),
('Mussoline','Crossfit'),
('Marcos','Funcional'),
('Taynara','Pilates'),
('Jefferson','Cardio');

INSERT INTO alunos(nome_completo,CPF,status) VALUES
('Gabriel Souza Almeida', '65478912300', TRUE),
('Mariana Oliveira Santos', '98712345688', TRUE),
('Rodrigo Alves Pereira', '45612378911', FALSE),
('Beatriz Ribeiro Soares', '32165498722', TRUE),
('Thiago Mendes Carvalho', '15926348733', TRUE),
('Larissa Fonseca Costa', '75395146844', FALSE),
('Matheus Nascimento Rocha', '85296374155', TRUE),
('Amanda Vieira Dias', '96385274166', TRUE),
('Bruno Teixeira Nunes', '14725836977', FALSE),
('Camila Machado Antunes', '36925814788', TRUE),
('Vinícius Gomes Barbosa', '25814736999', TRUE),
('Letícia Ramos Moreira', '12398745600', TRUE),
('Diego Cardoso Lima', '45632178922', FALSE),
('Fernanda Castro Silva', '78965412311', TRUE),
('Igor Cavalcanti Melo', '95175346833', TRUE);

INSERT INTO treinos_agendados (matricula_aluno, id_treinador, data_horario) VALUES
(2, 3, '2026-05-29 09:00:00'),
(4, 1, '2026-05-29 14:30:00'),
(7, 5, '2026-05-30 07:15:00'),
(6, 2, '2026-05-30 16:00:00'),
(9, 4, '2026-06-01 11:00:00'),
(8, 3, '2026-06-01 19:30:00'),
(11, 2, '2026-06-02 08:30:00'),
(10, 1, '2026-06-02 15:00:00'),
(13, 5, '2026-06-03 10:15:00'),
(12, 4, '2026-06-03 17:45:00'),
(15, 3, '2026-06-04 09:00:00'),
(14, 2, '2026-06-04 20:00:00'),
(17, 1, '2026-06-05 08:00:00'),
(16, 5, '2026-06-05 13:30:00'),
(19, 4, '2026-06-06 12:00:00')
;

INSERT INTO treinos_agendados (matricula_aluno, id_treinador, data_horario) VALUES
(12, 15, '2026-06-08 07:00:00'),
(5, 28, '2026-06-08 14:00:00'),
(19, 3, '2026-06-09 09:30:00'),
(2, 22, '2026-06-09 18:30:00'),
(15, 11, '2026-06-10 11:00:00'),
(8, 30, '2026-06-10 16:15:00'),
(20, 7, '2026-06-11 08:00:00'),
(1, 14, '2026-06-11 15:30:00'),
(14, 25, '2026-06-12 10:00:00'),
(7, 2, '2026-06-12 19:00:00'),
(18, 19, '2026-06-13 09:00:00'),
(3, 27, '2026-06-13 14:00:00'),
(11, 5, '2026-06-15 07:30:00'),
(6, 18, '2026-06-15 16:45:00'),
(17, 21, '2026-06-16 11:15:00'),
(9, 13, '2026-06-16 18:00:00'),
(13, 1, '2026-06-17 08:30:00'),
(4, 29, '2026-06-17 15:00:00'),
(16, 8, '2026-06-18 10:00:00'),
(10, 24, '2026-06-18 17:30:00'),
(2, 16, '2026-06-19 09:15:00'),
(15, 4, '2026-06-19 13:00:00'),
(12, 26, '2026-06-20 08:00:00'),
(5, 12, '2026-06-20 16:00:00'),
(19, 9, '2026-06-22 10:30:00'),
(8, 23, '2026-06-22 19:15:00'),
(20, 20, '2026-06-23 07:45:00'),
(1, 6, '2026-06-23 14:30:00'),
(14, 17, '2026-06-24 11:00:00'),
(7, 10, '2026-06-24 18:00:00'),
(18, 2, '2026-06-25 09:00:00'),
(3, 28, '2026-06-25 15:30:00')
;

SELECT * FROM treinadores;
SELECT * FROM alunos;
SELECT * FROM treinos_agendados;

SELECT t.nome AS treinadores, a.nome AS alunos , d.data_horario AS treinos_agendados
FROM treinos_agendados t
INNER JOIN clientes c
ON p.id_cliente = c.id_cliente


SELECT *
FROM treinos_agendados
WHERE EXTRACT ( DAY FROM  data_horario) IN (30,29,28)

INSERT INTO treinadores(nome,espexcialidade) VALUES
('André','Musculação'),
('Bianca','Crossfit'),
('Caio','Funcional'),
('Débora','Pilates'),
('Everton','Cardio'),
('Fabiana','Musculação'),
('Guilherme','Crossfit'),
('Helena','Funcional'),
('Igor','Pilates'),
('Joana','Cardio');

SELECT t.nome AS treinadores, a. nome_completo AS alunos, d. data_horario
FROM treinos_agendados d
INNER JOIN alunos a
ON matricula = d.matricula_aluno
INNER JOIN treinadores t
ON t. id_treinador = d. id_treinador

SELECT t. nome AS treinadores, a. nome_completo AS alunos, d. data_horario
FROM treinos_agendados d
INNER JOIN alunos a
ON matricula = d.matricula_aluno
INNER JOIN treinadores t
ON t. id_treinador = d. id_treinador
WHERE LEFT (nome, 1) = 'M'
ORDER BY treinadores;

SELECT *
FROM treinos_agendados
WHERE data_horario> '2026-06-30'

-- não tem treinos depois do dia 30. meu codigo estava dando erro, pedi a ajuda dos meninos ;/
SELECT *
FROM treinos_agendados
WHERE EXTRACT (DAY FROM data_horario) IN (30,29,28)