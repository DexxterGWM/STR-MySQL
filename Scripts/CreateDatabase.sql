create database Loja; use Loja;

create table Estado (
	ID int not null auto_increment,
    Nome varchar (50) not null,
    UF char (2),
    primary key (ID)
);

create table Municipio (
	ID int not null auto_increment,
    Nome varchar (80) not null,
    CodIBGE int not null,
    Estado_ID int not null,
    primary key (ID),
    constraint fk_Municipio_Estado1_idx
		foreign key (Estado_ID) references Estado (ID)
        on delete no action
);

create table Cliente (
	ID int not null auto_increment,
    Nome varchar (80) not null,
    CPF char (11) not null,
    Celular char (11),
    EndLogradouro varchar (100) not null,
    EndNumero varchar (10) not null,
    EndMunicipio int not null,
    EndCEP char (8),
    Municipio_ID int not null,
    primary key (ID),
    constraint fk_Cliente_Municipio1_idx
		foreign key (Municipio_ID) references Municipio (ID)
        on delete no action
        on update no action
);

create table ContaReceber (
	ID int not null auto_increment,
    FaturaVendaID int,
    DataConta date not null,
    DataVencimento date not null,
    Valor decimal (18, 2) not null,
    Situacao enum ('1', '2', '3'),
    Cliente_ID int not null,
    primary key (ID),
    constraint fk_ContaReceber_Cliente_idx
		foreign key (Cliente_ID) references Cliente (ID)
        on delete no action
        on update no action
);