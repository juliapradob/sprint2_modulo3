# Quantos projetos no total entre todas as turmas foram entregues com conceito "Ainda não está pronto" e "Chegando lá"

USE RESILIA_SPRINT;

SELECT conceito_projeto, count(conceito_projeto)
FROM entregas
WHERE conceito_projeto like 'Ainda não está pronto'
OR conceito_projeto like 'Chegando lá' 
GROUP BY conceito_projeto;
