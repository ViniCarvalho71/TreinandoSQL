-- 1
SELECT Nome,Ano FROM Filmes

-- 2
SELECT Nome,Ano FROM Filmes ORDER BY Ano 

-- 3
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = 1997 

-- 5
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > 2000 

-- 6
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao

-- 7
SELECT Ano, Count(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8
SELECT Id,PrimeiroNome,UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- 9
SELECT Id,PrimeiroNome,UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT Nome,Genero FROM FilmesGenero FG INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT Nome,Genero FROM FilmesGenero FG INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero WHERE Genero = 'Mistério'

-- 12
SELECT Nome,PrimeiroNome,UltimoNome,Papel FROM ElencoFilme E INNER JOIN Atores A ON E.IdAtor = A.Id
INNER JOIN Filmes F ON F.Id = E.IdFilme