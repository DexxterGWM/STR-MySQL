insert into
	Estado (Nome, UF)
values
	('São Paulo', 'SP'),
    ('Rio de Janeiro', 'RJ'),
    ('Santa Catarina', 'SC'),
    ('Paraná', 'PR');

insert into
	Municipio (Nome, CodIBGE, Estado_ID)
values
	('Ribeirão Preto', 35, 1),
    ('Osasco', 35, 1),
	('Laranjais', 33, 2),
	('Florianópolis', 42, 3),
	('Cascavel', 41, 4);

insert into
	Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID)
values
	('Mateus Fernando Dias', 71601733844, 16986151962, 'Rua Gilberto Domingos de Souza', '614', 35, '14060825', 1),
	('Guilherme Costa Santos', 26239761710, 22993945982, 'Rua Romeu José Alves 20', '813', 33, '28580970', 2),
    ('Renato Augusto Vinicius da Rosa', 78818131990, 48996420944, 'Travessa José Pereira Filho', '537', 42, '88049407', 3),
    ('Isabella Natália Gonçalves', 02193855994, 45991745742, 'Rua Mosport', '289', 41, '85814270', 4),
    ('Tatiane Carla Moraes', 63262653985, 45981508747, 'Rua Mãe Catira', '447', 41, '85818745', 4);

insert into
	ContaReceber (FaturaVendaID, DataConta, DataVencimento, Valor, Situacao, Cliente_ID)
values
	(372, '2024-01-10', '2024-02-10', 220.50, 1, 1),
    (null, '2024-02-15', '2024-03-15', 140.32, 2, 2),
    (127, '2024-03-18', '2024-04-19', 100.00, 3, 2),
    (954, '2024-04-20', '2024-05-03', 500.54, 3, 3),
    (759, '2024-05-13', '2024-06-20', 176.00, 1, 4),
    (null, '2024-06-16', '2024-06-20', 442.74, 2, 5);