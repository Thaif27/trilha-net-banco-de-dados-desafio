 -- 1 ---------------------------------
 SELECT Nome, Ano FROM Filmes;

 -- 2 ---------------------------------
 SELECT * FROM Filmes
 ORDER BY Ano ASC;

 -- 3 ---------------------------------
 SELECT * FROM Filmes WHERE Id = 28

 -- 4 ---------------------------------
 SELECT * FROM Filmes WHERE Ano = 1997
 
 -- 5 ---------------------------------
 SELECT * FROM Filmes WHERE Ano > 2000;

 -- 6 ---------------------------------
 SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
 ORDER BY Duracao ASC;

 -- 7 ---------------------------------
 SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
 GROUP BY Ano
 ORDER BY Quantidade DESC;

 -- 8 ---------------------------------
 SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M' 
 
 -- 9 ---------------------------------
 SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' 
 ORDER BY PrimeiroNome

 -- 10 ---------------------------------
 SELECT 
    f.Nome AS Nome,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
    ON f.Id = fg.IdFilme
INNER JOIN Generos g 
    ON fg.IdGenero = g.Id

-- 11 ---------------------------------
SELECT 
    f.Nome AS Nome,
    g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg 
    ON f.Id = fg.IdFilme
INNER JOIN Generos g 
    ON fg.IdGenero = g.Id
    WHERE Genero = 'Mistério';

-- 12 ---------------------------------
SELECT 
f.Nome AS Nome,
ae.PrimeiroNome,
ae.UltimoNome,
e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
INNER JOIN Atores ae On e.IdAtor = ae.Id



SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos