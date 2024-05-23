--1 - Buscar o nome e ano dos filmes

SELECT fi.Nome,
	   fi.Ano
  FROM Filmes fi

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT fi.Nome,
	   fi.Ano
  FROM Filmes fi
 ORDER BY FI.Ano

 --3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
 
 SELECT fi.Nome,
	   fi.Ano,
	   FI.Duracao
  FROM Filmes fi
 WHERE fi.Nome = 'De Volta para o Futuro'

 --4 - Buscar os filmes lançados em 1997

  SELECT fi.Nome,
	   fi.Ano,
	   FI.Duracao
  FROM Filmes fi
 WHERE fi.Ano = 1997

 --5 - Buscar os filmes lançados APÓS o ano 2000

   SELECT fi.Nome,
	   fi.Ano,
	   FI.Duracao
  FROM Filmes fi
 WHERE fi.Ano > 2000

 --6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT fi.Nome,
	   fi.Ano,
	   FI.Duracao
  FROM Filmes fi
 WHERE fi.Duracao > 100
   AND fi.Duracao < 150
 ORDER BY fi.Duracao

 --7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT fi.Ano,
	   COUNT(FI.Nome) Quantidade
  FROM Filmes fi
 GROUP BY fi.Ano
 ORDER BY Quantidade DESC

 --8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
 
 SELECT A.PrimeiroNome,
        A.UltimoNome
   FROM Atores A
  WHERE A.Genero = 'M'

  --9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

 SELECT A.Id,
		A.PrimeiroNome,
        A.UltimoNome,
		A.Genero
   FROM Atores A
  WHERE A.Genero = 'F'
  ORDER BY A.PrimeiroNome

  --10 - Buscar o nome do filme e o gênero

  SELECT F.Nome,
	     G.Genero
    FROM Filmes F
   INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
   INNER JOIN Generos G ON G.Id = FG.IdGenero

 --11 - Buscar o nome do filme e o gênero do tipo "Mistério"

   SELECT F.Nome,
	     G.Genero
    FROM Filmes F
   INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
   INNER JOIN Generos G ON G.Id = FG.IdGenero
   WHERE G.Genero = 'Mistério'

   --12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

   SELECT F.Nome,
		  A.PrimeiroNome,
		  A.UltimoNome,
		  EF.Papel
     FROM Filmes F
	INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
	INNER JOIN Atores A ON A.Id = EF.IdAtor
