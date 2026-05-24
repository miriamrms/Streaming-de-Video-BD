-- 1. GROUP BY /HAVING
-- Exibir a classificação indicativa e a quantidade total de conteúdos a ela associados, mostrando as classificações que tenham mais conteúdos que a média de conteudos por classificação

SELECT C1.CLASSIFICACAO, COUNT(*) AS QTD_CONTEUDO
FROM CONTEUDO C1
GROUP BY C1.CLASSIFICACAO
HAVING COUNT(*) > (SELECT AVG(QTD) 
                    FROM (SELECT COUNT(*) AS QTD
                            FROM CONTEUDO GROUP BY CLASSIFICACAO));

        
-- 2. Junção Externa (Outer Join)
-- Projetar o nome de todos os planos cadastrados no sistema juntamente com o e-mail das contas que os assinam. Certifique-se de que a consulta liste inclusive dos planos promocionais que atualmente não possuem nenhuma conta vinculada.

SELECT P.NOME, C.EMAIL
FROM PLANO P 
LEFT OUTER JOIN CONTA C ON P.ID = C.ID_PLANO;

-- 3. Semi-junção (Semi-join)

-- Todos os filmes + séries cuja duração de episódio tem a duração menor ou igual ao filme mais longo
SELECT C.ID, C.TITULO
FROM CONTEUDO C
WHERE 
C.ID IN (SELECT F.ID_CONTEUDO FROM FILME F)
OR  
C.ID IN (SELECT E.ID_SERIE FROM EPISODIO E, VIDEO V 
        WHERE E.ID_VIDEO = V.ID
        GROUP BY E.ID_SERIE
        HAVING SUM(V.DURACAO) <= (SELECT MAX(V2.DURACAO) FROM FILME F2, VIDEO V2 
        WHERE F2.ID_VIDEO = V2.ID)
        )

-- 4. Anti-junção (Anti-join)

-- Exibir o ID e o título de todos os conteúdos (ID, titulo) cadastrados na plataforma que nunca foram assistidos por nenhum perfil (ou seja, que não possuem correspondência de acesso registrado).
SELECT C.ID, C.TITULO
FROM CONTEUDO C 
WHERE NOT EXISTS (SELECT * FROM ASSISTE A WHERE C.ID = A.ID_CONTEUDO);

-- Exibir videos que não estão em filme nem em serie
SELECT V.ID 
FROM VIDEO V
WHERE   NOT EXISTS (SELECT * FROM FILME F WHERE F.ID_VIDEO = V.ID) AND 
        NOT EXISTS (SELECT * FROM EPISODIO E WHERE E.ID_VIDEO = V.ID);

-- 5. Subconsulta do tipo escalar

-- Exibir o ID do conteúdo, o CPF e o nome de todos os artistas que sejam os mais velhos dentro do elenco de cada conteúdo específico em que participam. Caso um conteúdo possua mais de um artista empatado com a mesma idade máxima, todos os empatados daquele conteúdo devem ser projetados.

SELSELECT E.ID_CONTEUDO, A.CPF, A.NOME
FROM ELENCO E 
JOIN ARTISTA A ON E.CPF = A.CPF
WHERE A.DATA_NASCIMENTO = (
    SELECT MIN(A2.DATA_NASCIMENTO) 
    FROM ELENCO E2 
    JOIN ARTISTA A2 ON E2.CPF = A2.CPF  
    WHERE E2.ID_CONTEUDO = E.ID_CONTEUDO
);

-- 6. Subconsulta do tipo Linha
-- Projetar o ID e o título dos conteúdos (ID, titulo) que possuem exatamente a mesma classificação indicativa (classificacao) e a mesma data de lançamento (data_lancamento) do conteúdo cujo ID é igual a 101.
SELECT C.ID, C.TITULO
FROM CONTEUDO C
WHERE (C.CLASSIFICACAO, TO_CHAR(C.DATA_LANCAMENTO, 'MM/YYYY')) = 
                        (SELECT C_INT.CLASSIFICACAO, TO_CHAR(C_INT.DATA_LANCAMENTO, 'MM/YYYY')
                        FROM CONTEUDO C_INT
                        WHERE C_INT.ID = 14) 
AND C.ID <> 14;

-- 7. Subconsulta do tipo Tabela
-- Exibir o nome e a data de nascimento dos artistas (nome, data_nascimento) que fazem parte do elenco de qualquer conteúdo classificado na categoria 'Animação'
SELECT A.NOME, A.DATA_NASCIMENTO
FROM ARTISTA A 
WHERE A.CPF IN (SELECT E.CPF 
                FROM ELENCO E 
                WHERE E.ID_CONTEUDO IN (SELECT C.ID 
                                        FROM CONTEUDO C 
                                        WHERE C.ID IN (SELECT CAT.ID_CONTEUDO 
                                                        FROM CATEGORIAS CAT WHERE CAT.CATEGORIA = 'Animação')));
-- obs: com join
SELECT DISTINCT A.NOME, A.DATA_NASCIMENTO
FROM ARTISTA A
INNER JOIN ELENCO E ON A.CPF = E.CPF
INNER JOIN CATEGORIAS CAT ON E.ID_CONTEUDO = CAT.ID_CONTEUDO
WHERE CAT.CATEGORIA = 'Animação';
                                                
-- 8. Operação de conjunto

-- Listar de forma unificada o ID e o título de produções específicas da plataforma, combinando em um único resultado: 1) O ID e o título dos conteúdos registrados como Filmes que possuam uma duração de vídeo estritamente superior a 120 minutos; 2) O ID e o título dos conteúdos registrados como Séries que possuam pelo menos um episódio lançado no ano de 2026.
SELECT C.ID, C.TITULO
FROM CONTEUDO C
JOIN FILME F ON C.ID = F.ID_CONTEUDO
JOIN VIDEO V ON F.ID_VIDEO = V.ID
WHERE V.DURACAO >= 120

UNION 

SELECT C.ID, C.TITULO
FROM CONTEUDO C
JOIN SERIE S ON C.ID = S.ID_CONTEUDO 
JOIN EPISODIO E ON S.ID_CONTEUDO = E.ID_SERIE
WHERE TO_CHAR(E.DATA_LANCAMENTO, 'YYYY') = '2026';

-- Exibir o e-mail e o nome de todos os perfis do tipo 'Adulto' que já assistiram a conteúdos da categoria 'Suspense', mas que nunca assistiram a nenhum conteúdo da categoria 'Infantil'.

SELECT P.EMAIL, P.NOME
FROM PERFIL P 
WHERE P.TIPO = 'Adulto' AND
    (P.EMAIL, P.NOME) IN (
    SELECT A1.EMAIL, A1.NOME 
    FROM ASSISTE A1
    WHERE EXISTS (
        SELECT * 
        FROM CATEGORIAS C1 
        WHERE C1.ID_CONTEUDO = A1.ID_CONTEUDO AND
        C1.CATEGORIA = 'Suspense'))

EXCEPT 

SELECT P.EMAIL, P.NOME
FROM PERFIL P 
WHERE P.TIPO = 'Adulto' AND
    (P.EMAIL, P.NOME) IN (
    SELECT A1.EMAIL, A1.NOME 
    FROM ASSISTE A1
    WHERE EXISTS (
        SELECT * 
        FROM CATEGORIAS C1 
        WHERE C1.ID_CONTEUDO = A1.ID_CONTEUDO AND
        C1.CATEGORIA = 'Infantil'))
