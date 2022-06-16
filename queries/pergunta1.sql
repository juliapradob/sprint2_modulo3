# Quem são os alunos que entregaram o projeto do módulo 1 e estão com conceito em "Pronto" ou "Mais que pronto".

SELECT id_aluno, conceito_projeto
FROM entregas
WHERE conceito_projeto like 'Pronto'
OR conceito_projeto like 'Mais que pronto'; 