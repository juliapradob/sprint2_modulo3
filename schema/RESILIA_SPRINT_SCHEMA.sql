CREATE DATABASE RESILIA_SPRINT;

USE RESILIA_SPRINT;

CREATE TABLE `turmas` (
  `id_turma` int PRIMARY KEY auto_increment not null,
  `nome_turma` varchar(255)
);

CREATE TABLE `alunos` (
  `id_aluno` int PRIMARY KEY auto_increment not null,
  `nome_aluno` varchar(255),
  `cpf_aluno` varchar(11),
  `email_aluno` varchar(255),
  `frente_aluno` varchar(255),
  `id_turma` int
);

CREATE TABLE `facilitadores` (
  `id_facilitador` int PRIMARY KEY auto_increment not null,
  `nome_facilitador` varchar(255),
  `email_facilitador` varchar(255),
  `frente_facilitador` varchar(255),
  `id_turma` int
);

ALTER TABLE `facilitadores` 
ADD FOREIGN KEY (`id_turma`) 
REFERENCES `turmas` (`id_turma`);

ALTER TABLE `alunos` 
ADD FOREIGN KEY (`id_turma`) 
REFERENCES `turmas` (`id_turma`);
