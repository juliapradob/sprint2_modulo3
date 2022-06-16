# Qual a turma com a maior quantidade de projetos "Mais que pronto"

SELECT entregas.id_turma, turmas.nome_turma, count(entregas.conceito_projeto)
FROM entregas INNER JOIN turmas
ON entregas.id_turma = turmas.id_turma
WHERE entregas.conceito_projeto like 'Mais que pronto'
GROUP BY entregas.id_turma;