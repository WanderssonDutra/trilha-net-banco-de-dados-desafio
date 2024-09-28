SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

SELECT Nome, Ano FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = '1997'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT Ano, COUNT(*) AS 'QuantidadeFilmes' FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC

SELECT * FROM Atores
WHERE Genero =	'M'


SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome 

SELECT  Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Generos ON  FilmesGenero.IdGenero  = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id


SELECT (SELECT Nome FROM Filmes WHERE Filmes.Id = FilmesGenero.IdFilme), (SELECT Genero FROM Generos WHERE Generos.Id = FilmesGenero.IdGenero) FROM FilmesGenero

SELECT  Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Generos ON  FilmesGenero.IdGenero  = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mistério'

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme
INNER JOIN Filmes ON  ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id