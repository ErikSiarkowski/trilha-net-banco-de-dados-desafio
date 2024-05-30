-- 1
select Nome, Ano from Filmes

--2 
select Nome, Ano from Filmes
order by ano asc

--3
select Nome, Ano, Duracao from Filmes
where Nome ='De Volta para o Futuro'

--4
select * from Filmes
where ano ='1997'

--5
select * from Filmes
where ano > '2000'

--6
select * from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7
select Ano,count(*) Quantidade from Filmes
group by Ano

--8
select PrimeiroNome, UltimoNome from Atores
where Genero ='M'

--9
select PrimeiroNome, UltimoNome from Atores
where Genero ='F'
order by PrimeiroNome

--10
select Nome,Genero from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id

--11
select Nome,Genero from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero ='Mistério'

--12
select Nome,PrimeiroNome,UltimoNome,Papel from Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
inner join Atores on ElencoFilme.IdAtor = Atores.Id
