create view ContasNaoPagas as
	select
		ContaReceber_idx.ID as ContaID,
		Cliente_idx.Nome as ClienteNome,
		Cliente_idx.CPF as ClienteCPF,
		ContaReceber_idx.DataVencimento,
		ContaReceber_idx.Valor
	from
		ContaReceber ContaReceber_idx
	join
		Cliente Cliente_idx on ContaReceber_idx.Cliente_ID = Cliente_idx.ID
	where
		ContaReceber_idx.Situacao = '1';