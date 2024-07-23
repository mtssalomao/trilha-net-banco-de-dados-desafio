-- Etapa 1 (Buscar o nome e ano dos filmes)
SELECT
	Nome,
	Ano
FROM Filmes

--Etapa 2 (Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano)
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano

--Etapa 3 (Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração)
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--Etapa 4 (Buscar os filmes lançados em 1997)
SELECT
	*
FROM Filmes
WHERE Ano = 1997

--Etapa 5 (Buscar os filmes lançados APÓS o ano 2000)
SELECT * FROM Filmes
WHERE Ano > 2000

--Etapa 6 (Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente)
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Etapa 7 (Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente)
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM 
    filmes 
GROUP BY 
	Ano
ORDER BY 
	Quantidade DESC

--Etapa 8 (Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome)
SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM 
	Atores 
WHERE 
Genero = 'M'

--Etapa 9 (Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome)
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome

--Etapa 10 (Buscar o nome do filme e o gênero)
SELECT
	f.Nome,
	g.Genero
FROM 
	FilmesGenero fg
JOIN 
	Filmes f ON fg.IdFilme = f.Id
JOIN
	Generos g ON fg.IdGenero = g.Id

--Etapa 11 (Buscar o nome do filme e o gênero do tipo "Mistério")
SELECT
	f.Nome,
	g.Genero
FROM 
	FilmesGenero fg
JOIN 
	Filmes f ON fg.IdFilme = f.Id
JOIN
	Generos g ON fg.IdGenero = g.Id
WHERE
	g.Genero = 'Mistério'

--Etapa 12 (Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel)
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
	
FROM
	Filmes f
JOIN
	ElencoFilme ef ON ef.IdFilme = f.Id
JOIN
	Atores a ON a.Id = ef.IdAtor
