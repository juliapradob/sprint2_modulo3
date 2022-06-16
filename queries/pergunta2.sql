# Consultar quantos alunos temos em cada turma

USE RESILIA_SPRINT;

SELECT id_turma, count(id_turma)
FROM alunos
GROUP BY id_turma;
