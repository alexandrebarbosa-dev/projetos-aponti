--Escola Tech – Relatório de Execução das Ordens de Serviço (OS)
--Disciplina: Banco de Dados – SQLite
--Atividade: Missão – Analista de Banco de Dados da Escola Tech
--Aluno: Alexandre Barbosa
--Objetivo: Executar as Ordens de Serviço (OS) propostas pela Escola Tech

--OS-001 – Preparação do Banco_PARTES_1_2_3
--Criação de estrutura necessária para armazenar os alunos e as disciplinas.

CREATE TEMP TABLE alunos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL,
    turma TEXT NOT NULL,
    nota REAL NOT NULL
);

CREATE TEMP TABLE disciplinas (
    id INTEGER PRIMARY KEY,
    disciplina TEXT NOT NULL,
    professor TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL
);

--OS-001 – Preparação do Banco_PARTES_1_2_3
--Criação de estrutura necessária para armazenar os alunos e as disciplinas.
 
 --OS-002 – Migração de Dados_PARTE_4
--Importar os arquivos recebidos para o banco de dados e confirmar se todos os registros foram carregados corretamente.

 --OS-003 – Auditoria_PARTE_8_9
--Gerar consultas que permitam visualizar: todos os alunos; apenas os nomes; notas dos estudantes; lista de professores.

SELECT * FROM alunos;
SELECT nome FROM alunos;
SELECT nota FROM alunos;
SELECT turma FROM alunos;

SELECT * FROM disciplinas;
SELECT professor FROM disciplinas;

-- OS-004 – Correção de Cadastro _PARTE_10_11
-- Fazer consultas para localizar os registros.

-- Alunos com nota menor que 7 
SELECT * FROM Alunos WHERE nota < 7;

-- Alunos da turma Info A 
SELECT * FROM Alunos WHERE turma = 'Info A';

-- Alunos com idade maior que 20 anos 
SELECT * FROM Alunos WHERE idade > 20;

-- Disciplinas com carga horária de 80 horas 
SELECT * FROM Disciplinas WHERE carga_horaria = 80;

-- Professores que ministram uma disciplina específica 
SELECT professor, disciplina FROM Disciplinas WHERE disciplina = 'Banco de Dados';

-- Realizar as correções necessárias nos registros informados pela secretaria.
-- Alterar a turma de um aluno
SELECT * FROM Alunos WHERE nome = 'Diego Alves';
UPDATE Alunos SET turma = 'Info B' WHERE nome = 'Diego Alves';
SELECT * FROM Alunos WHERE nome = 'Diego Alves';

-- Corrigir a nota de um aluno 
UPDATE Alunos SET nota = 7.2 WHERE nome = 'Felipe Melo';
SELECT nome, nota FROM Alunos WHERE nome = 'Felipe Melo';

-- Corrigir a nota de outro aluno 
UPDATE Alunos SET nota = 9.0 WHERE nome = 'Ana Souza';
SELECT nome, nota FROM Alunos WHERE nome = 'Ana Souza';

-- Atualizar a idade de um aluno 
UPDATE Alunos SET idade = 20 WHERE nome = 'Ana Souza';
SELECT nome, idade FROM Alunos WHERE nome = 'Ana Souza';

-- Corrigindo o cadastro das disciplinas
SELECT * FROM Disciplinas WHERE disciplina = 'Programação Web';
-- Atualizar o nome do professor:
UPDATE Disciplinas SET professor = 'Fernanda Oliveira' WHERE disciplina = 'Programação Web';
SELECT * FROM Disciplinas WHERE disciplina = 'Programação Web';

--OS-005 – Novas Matrículas_PARTE_12
--Cadastrando novos alunos

INSERT INTO Alunos (nome, idade, turma, nota)
VALUES
('Igor Martins', 18, 'Info B', 8.1),
('Joana Ferreira', 19, 'Redes A', 7.8),
('Lucas Pereira', 21, 'Administração A', 6.5),
('Mariana Lopes', 20, 'Info A', 9.4), 
('Nicolas Gomes', 22, 'Redes A', 4.8);

SELECT * FROM Alunos ORDER BY id DESC;

--OS-006 – Limpeza do Banco
--Faça a limpeza do banco mantendo apenas os dados válidos.

SELECT * FROM alunos;

SELECT * FROM Alunos WHERE id = '41';
DELETE FROM Alunos WHERE id = '41';
SELECT * FROM Alunos WHERE id = '41';

DELETE FROM Alunos WHERE id = '42';
SELECT * FROM Alunos WHERE id = '42';

DELETE FROM Alunos WHERE id = '43';
SELECT * FROM Alunos WHERE id = '43';

DELETE FROM Alunos WHERE id = '44';
SELECT * FROM Alunos WHERE id = '44';

DELETE FROM Alunos WHERE id = '45';
SELECT * FROM Alunos WHERE id = '45';

-- OS-007 – Nova Funcionalidade
-- Adaptar o banco de dados sem perder os registros existentes

ALTER TABLE Alunos ADD COLUMN cidade TEXT;
ALTER TABLE Disciplinas ADD COLUMN laboratorio TEXT;

-- Conferindo a nova estrutura 
PRAGMA table_info(Alunos);
PRAGMA table_info(disciplinas);

-- Inserir a cidade dos alunos e o laboratório utilizado por cada disciplina.

UPDATE alunos SET cidade = 'Recife' WHERE turma = 'Info A';
UPDATE alunos SET cidade = 'Jaboatão' WHERE turma = 'Info B';
UPDATE alunos SET cidade = 'Olinda' WHERE turma = 'Administração A';
UPDATE alunos SET cidade = 'Moreno' WHERE turma = 'Redes A';
UPDATE alunos SET cidade = 'Camaragibe' WHERE turma = 'Administração B';
UPDATE alunos SET cidade = 'São Lourenço' WHERE turma = 'Redes B';

UPDATE disciplinas SET laboratorio = 'Laboratório 1' WHERE carga_horaria = 80;
UPDATE disciplinas SET laboratorio = 'Laboratório 2' WHERE carga_horaria = 60;
UPDATE disciplinas SET laboratorio = 'Laboratório 3' WHERE carga_horaria = 40;
UPDATE disciplinas SET laboratorio = 'Laboratório 4' WHERE carga_horaria = 100;

-- OS-008 – Relatórios Gerenciais
-- Relatório número de alunos
SELECT COUNT(*) AS total_alunos FROM Alunos;
-- Total de alunos 40

-- Relatório média das notas 
SELECT ROUND(AVG(nota), 2) AS media_geral FROM Alunos;
-- Média das notas 7.37

-- Relatório maior nota + nome
SELECT MAX(nota) AS maior_nota FROM Alunos;
-- Maior nota 9.8
SELECT nome, nota FROM Alunos WHERE nota = (SELECT MAX(nota) FROM Alunos);
-- Quem? Vitória Fernandes 

-- Relatório menor nota 
SELECT MIN(nota) AS menor_nota FROM Alunos;
-- Menor nota 2.9 
SELECT nome, nota FROM Alunos WHERE nota = ( SELECT MIN(nota) FROM Alunos );
-- Quem? Leandro Farias 

-- Relatório número de alunos por turma 
SELECT turma, COUNT(*) AS quantidade_alunos FROM Alunos GROUP BY turma; 
-- Qual turma possui mais alunos? Info A 

-- Relatório média por turma 
SELECT turma, ROUND(AVG(nota), 2) AS media_turma FROM Alunos GROUP BY turma ORDER BY media_turma DESC;
-- Turma com média mais alta Info A 8.8 

-- Relatório melhores estudantes 
SELECT nome, turma, nota FROM Alunos ORDER BY nota DESC;
-- Melhores estudantes: Vitória Fernandes (9.8), Gabriela Costa (9.7) e Helena Paiva (9.6)

-- OS-009 – Classificação dos Alunos 
-- Criar uma consulta com a situação de cada estudante. 

SELECT nome, turma, nota, 
CASE 
WHEN nota >= 7 THEN 'Aprovado' 
WHEN nota >= 5 THEN 'Recuperação' 
ELSE 'Reprovado' 
END AS situacao 
FROM Alunos 
ORDER BY nota DESC;

-- Criar relatório completo dos alunos

SELECT id, nome, idade, turma, nota, cidade, 
CASE 
WHEN nota >= 7 THEN 'Aprovado' 
WHEN nota >= 5 THEN 'Recuperação' 
ELSE 'Reprovado' 
END AS situacao 
FROM Alunos 
ORDER BY turma, nome;

--Criar relatório de aprovados
SELECT id, nome, idade, turma, nota, cidade 
FROM Alunos 
WHERE nota >= 7
ORDER BY nota DESC;

--Exportar as disciplinas 

SELECT id, disciplina, professor, carga_horaria, laboratorio 
FROM Disciplinas 
ORDER BY disciplina; 

CREATE TABLE alunos_definitiva (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    idade INTEGER NOT NULL,
    turma TEXT NOT NULL,
    nota REAL NOT NULL,
	cidade TEXT
);

INSERT INTO alunos_definitiva (nome, idade, turma, nota, cidade)
SELECT nome, idade, turma, nota, cidade
FROM alunos;

CREATE TABLE disciplinas_definitiva (
    id INTEGER PRIMARY KEY,
    disciplina TEXT NOT NULL,
    professor TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL,
    laboratorio TEXT
);

INSERT INTO disciplinas_definitiva (id, disciplina, professor, carga_horaria, laboratorio)
SELECT id, disciplina, professor, carga_horaria, laboratorio
FROM disciplinas;

DROP TABLE alunos;
DROP TABLE disciplinas;


