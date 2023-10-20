CREATE TABLE alunos_professores(
  	id int primary key,
    ra int unique,
    rf int unique,
    nome varchar(80) not null,
    rg char(15) not null unique,
    cpf char(20) not null unique,
    formacao varchar(50),
    id_turma int not null,
    foreign key(id_turma) references dados_turma(id)
);

CREATE TABLE dados_turma(
    id int primary key,
    numero_sala float not null,
    turma varchar(12) not null
)

CREATE TABLE boletim(
    id int primary key,
    nota float not null,
    media float not null,
    situacao varchar(15) not null,
    id_alunoOrProfessor int not null,
    foreign key(id_alunoOrProfessor) references alunos_professores(id)
);