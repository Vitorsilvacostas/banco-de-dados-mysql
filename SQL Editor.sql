CREATE DATABASE Sistema_Educacional;
USE 

-- Tabela de Cidades
CREATE TABLE tbl_cidades (
    idtbl_cidades INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    UF VARCHAR(45)
);

-- Tabela de Professores
CREATE TABLE tbl_professores (
    idtbl_professores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(45),
    CPF VARCHAR(45),
    idade INT,
    idtbl_cidades INT,
    FOREIGN KEY (idtbl_cidades) REFERENCES tbl_cidades(idtbl_cidades)
);

-- Tabela de Cursos
CREATE TABLE tbl_cursos (
    idtbl_cursos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    valor VARCHAR(45)
);

-- Tabela de Alunos
CREATE TABLE tbl_alunos (
    idtbl_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(45),
    idade INT,
    idtbl_cidades INT,
    FOREIGN KEY (idtbl_cidades) REFERENCES tbl_cidades(idtbl_cidades)
);

-- Tabela de Usuários (para controle de acesso)
CREATE TABLE tbl_usuarios (
    idtbl_usuarios INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    username VARCHAR(45),
    senha VARCHAR(45)
);

-- Tabela Relacional de Professores e Cursos (Muitos para Muitos)
CREATE TABLE professores_cursos (
    idtbl_professores INT,
    idtbl_cursos INT,
    PRIMARY KEY (idtbl_professores, idtbl_cursos),
    FOREIGN KEY (idtbl_professores) REFERENCES tbl_professores(idtbl_professores),
    FOREIGN KEY (idtbl_cursos) REFERENCES tbl_cursos(idtbl_cursos)
);

-- Tabela Relacional de Alunos e Cursos (Muitos para Muitos)
CREATE TABLE alunos_cursos (
    idtbl_alunos INT,
    idtbl_cursos INT,
    PRIMARY KEY (idtbl_alunos, idtbl_cursos),
    FOREIGN KEY (idtbl_alunos) REFERENCES tbl_alunos(idtbl_alunos),
    FOREIGN KEY (idtbl_cursos) REFERENCES tbl_cursos(idtbl_cursos)
);
