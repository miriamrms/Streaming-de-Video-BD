------------------------------------------------------------
-- 2. POVOAMENTO DO BANCO DE DADOS (DML)
------------------------------------------------------------

-- ==========================================
-- 2.1. PLANO
-- ==========================================
INSERT INTO PLANO (ID, NOME, TIPO) VALUES (1, 'Gratuito', 'PlanoGratuito');
INSERT INTO PLANO (ID, NOME, TIPO, VALOR) VALUES (2, 'Básico', 'PlanoPago', 25.90);
INSERT INTO PLANO (ID, NOME, TIPO, VALOR) VALUES (3, 'Padrão', 'PlanoPago', 39.90);
INSERT INTO PLANO (ID, NOME, TIPO, VALOR) VALUES (4, 'Premium', 'PlanoPago', 50.00);
INSERT INTO PLANO (ID, NOME, TIPO, VALOR) VALUES (5, 'PremiumPromocional', 'PlanoPago', 43.90);

-- ==========================================
-- 2.2. CONTA
-- ==========================================
INSERT INTO CONTA (EMAIL, NOME, SENHA, ID_PLANO) 
VALUES ('miriam.mendes@email.com', 'Miriam Silva', 'senha123', 1);

INSERT INTO CONTA (EMAIL, NOME, SENHA, CARTAO_NUMERO, CARTAO_NOME, CARTAO_VALIDADE, CARTAO_BANDEIRA, ID_PLANO) 
VALUES ('marcos.silva@email.com', 'Marcos Silva', 'senha123', '1111222233334444', 'MARCOS A SILVA', TO_DATE('2028-10-01', 'YYYY-MM-DD'), 'Visa', 4);

INSERT INTO CONTA (EMAIL, NOME, SENHA, CARTAO_NUMERO, CARTAO_NOME, CARTAO_VALIDADE, CARTAO_BANDEIRA, ID_PLANO) 
VALUES ('ana.souza@email.com', 'Ana Souza', 'qwerty', '5555666677778888', 'ANA L SOUZA', TO_DATE('2025-12-01', 'YYYY-MM-DD'), 'Mastercard', 2);

INSERT INTO CONTA (EMAIL, NOME, SENHA, CARTAO_NUMERO, CARTAO_NOME, CARTAO_VALIDADE, CARTAO_BANDEIRA, ID_PLANO) 
VALUES ('carlos.mendes@email.com', 'Carlos Mendes', 'senha_carlos', '9999888877776666', 'CARLOS MENDES', TO_DATE('2029-05-01', 'YYYY-MM-DD'), 'Amex', 3);

INSERT INTO CONTA (EMAIL, NOME, SENHA, CARTAO_NUMERO, CARTAO_NOME, CARTAO_VALIDADE, CARTAO_BANDEIRA, ID_PLANO) 
VALUES ('julia.rocha@email.com', 'Julia Rocha', 'ju_rocha123', '4444555566667777', 'JULIA ROCHA', TO_DATE('2027-08-01', 'YYYY-MM-DD'), 'Mastercard', 4);

-- ==========================================
-- 2.3. DISPOSITIVO
-- ==========================================
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('IPHONE15', 'iPhone 15', 'miriam.mendes@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('SN12345TV', 'Smart TV Samsung', 'marcos.silva@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('IPHONE13X', 'iPhone 13 Pro', 'marcos.silva@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('TAB9990A', 'Galaxy Tab S7', 'ana.souza@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('TV_CARLOS_01', 'LG OLED 55', 'carlos.mendes@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('PC_JULIA_99', 'Notebook Dell', 'julia.rocha@email.com');
INSERT INTO DISPOSITIVO (NUM_SERIE, MODELO, EMAIL) VALUES ('TV_JULIA_SALA', 'Smart TV TCL', 'julia.rocha@email.com');

-- ==========================================
-- 2.4. PERFIL
-- ==========================================
-- Perfis do Marcos (Família)
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('marcos.silva@email.com', 'Marcos', 'Adulto');
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('marcos.silva@email.com', 'Esposa', 'Adulto');
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('marcos.silva@email.com', 'Pedrinho', 'Infantil');

-- Perfil da Ana
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('ana.souza@email.com', 'Ana', 'Adulto');

-- Perfis do Carlos
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('carlos.mendes@email.com', 'Carlos', 'Adulto');

-- Perfis da Julia
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('julia.rocha@email.com', 'Julia', 'Adulto');
INSERT INTO PERFIL (EMAIL, NOME, TIPO) VALUES ('julia.rocha@email.com', 'Visitante', 'Adulto');

-- ==========================================
-- 2.5. GERENCIA
-- ==========================================
INSERT INTO GERENCIA (EMAIL, NOME_ADULTO, NOME_INFANTIL) VALUES ('marcos.silva@email.com', 'Marcos', 'Pedrinho');
INSERT INTO GERENCIA (EMAIL, NOME_ADULTO, NOME_INFANTIL) VALUES ('marcos.silva@email.com', 'Esposa', 'Pedrinho');

-- ==========================================
-- 2.6. CONTEUDO
-- ==========================================
-- Filmes Iniciais
INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (1, 'O Resgate Final', 'Um mercenário em uma missão perigosa.', '16 Anos', TO_DATE('2023-05-15', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (2, 'Vingadores do Espaço', 'Heróis salvam o universo.', '12 Anos', TO_DATE('2022-11-20', 'YYYY-MM-DD'));

-- Séries Iniciais
INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (3, 'Coisas Estranhas', 'Crianças enfrentam monstros.', '14 Anos', TO_DATE('2023-07-01', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (4, 'Aventuras do Juca', 'Desenho educativo para crianças.', 'Livre', TO_DATE('2021-10-12', 'YYYY-MM-DD'));

-- Novos Filmes Adicionados
INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (5, 'A Última Missão', 'Agente secreto tenta impedir desastre.', '14 Anos', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (6, 'Rindo à Toa', 'Comédia sobre férias em família.', 'Livre', TO_DATE('2023-12-25', 'YYYY-MM-DD'));

-- Novas Séries Adicionadas
INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (7, 'Dinastia de Fogo', 'Guerra entre clãs por poder.', '18 Anos', TO_DATE('2024-02-10', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (8, 'Rua do Medo', 'Misterios sobrenaturais na cidade.', '16 Anos', TO_DATE('2024-04-05', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (9, 'O Mistério da Ilha Verde', 'Animação sobre animais que salvam sua floresta.', 'Livre', TO_DATE('2024-06-12', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (10, 'Chefes do Futuro', 'Reality show de culinária com jovens talentos.', 'Livre', TO_DATE('2024-08-19', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (11, 'Sussurros na Escuridão', 'Investigadores tentam desvendar crimes em uma cidade isolada.', '16 Anos', TO_DATE('2024-10-31', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (12, 'Código de Conduta', 'Um thriller psicológico sobre espionagem corporativa.', '16 Anos', TO_DATE('2025-01-20', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (13, 'Aventuras no Espaço Cloro', 'Documentário divertido sobre a vida marinha.', 'Livre', TO_DATE('2025-03-05', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (14, 'O Mistério da Floresta Verde', 'Uma animação encantadora para toda a família.', 'Livre', TO_DATE('2026-06-24', 'YYYY-MM-DD'));

INSERT INTO CONTEUDO (ID, TITULO, DESCRICAO, CLASSIFICACAO, DATA_LANCAMENTO) 
VALUES (15, 'O Mistério da Floresta Amarela', 'Uma animação encantadora para toda a família.', 'Livre', TO_DATE('2026-06-24', 'YYYY-MM-DD'));

-- ==========================================
-- 2.7. CATEGORIAS
-- ==========================================
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (1, 'Ação');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (1, 'Suspense');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (2, 'Ficção Científica');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (3, 'Mistério');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (3, 'Ficção Científica');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (4, 'Infantil');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (4, 'Animação');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (5, 'Ação');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (5, 'Policial');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (6, 'Comédia');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (7, 'Fantasia');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (7, 'Drama');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (8, 'Terror');
INSERT INTO CATEGORIAS (ID_CONTEUDO, CATEGORIA) VALUES (8, 'Suspense');

-- ==========================================
-- 2.8. VIDEO
-- ==========================================
-- Vídeos de Filmes (IDs 101 a 104)
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (101, 120, 'http://stream.com/vid/101');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (102, 145, 'http://stream.com/vid/102');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (103, 110, 'http://stream.com/vid/103');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (104, 95, 'http://stream.com/vid/104');
-- Vídeos de Episódios de Séries (IDs 201 a 207)
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (201, 45, 'http://stream.com/vid/201');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (202, 50, 'http://stream.com/vid/202');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (203, 15, 'http://stream.com/vid/203');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (204, 55, 'http://stream.com/vid/204');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (205, 58, 'http://stream.com/vid/205');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (206, 42, 'http://stream.com/vid/206');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (207, 45, 'http://stream.com/vid/207');

-- Vídeos sem Filme ou Série
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (208, 45, 'http://stream.com/vid/208');
INSERT INTO VIDEO (ID, DURACAO, URL) VALUES (209, 45, 'http://stream.com/vid/209');

-- ==========================================
-- 2.9. FILME
-- ==========================================
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (1, 101);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (2, 102);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (5, 103);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (6, 104);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (9, 105);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (12, 106);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (13, 107);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (14);
INSERT INTO FILME (ID_CONTEUDO, ID_VIDEO) VALUES (15);

-- ==========================================
-- 2.10. SERIE
-- ==========================================
INSERT INTO SERIE (ID_CONTEUDO) VALUES (3);
INSERT INTO SERIE (ID_CONTEUDO) VALUES (4);
INSERT INTO SERIE (ID_CONTEUDO) VALUES (7);
INSERT INTO SERIE (ID_CONTEUDO) VALUES (8);
INSERT INTO SERIE (ID_CONTEUDO) VALUES (10);
INSERT INTO SERIE (ID_CONTEUDO) VALUES (11);

-- ==========================================
-- 2.11. EPISODIO
-- ==========================================
-- Série 3 (Coisas Estranhas) - Lançamento semanal
INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1001, 'O Desaparecimento', 'Um garoto some misteriosamente.', 1, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 3, 201);

INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1002, 'A Estranha', 'Uma garota com poderes aparece.', 1, TO_DATE('2023-07-08', 'YYYY-MM-DD'), 3, 202);

-- Série 4 (Aventuras do Juca)
INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1003, 'Brincando no Parque', 'Juca e seus amigos vão ao parque.', 1, TO_DATE('2021-10-12', 'YYYY-MM-DD'), 4, 203);

-- Série 7 (Dinastia de Fogo) - Lançamento semanal
INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1004, 'O Herdeiro', 'O rei anuncia seu sucessor.', 1, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 7, 204);

INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1005, 'Traição', 'Alianças são quebradas.', 1, TO_DATE('2024-02-17', 'YYYY-MM-DD'), 7, 205);

-- Série 8 (Rua do Medo) - Lançamento semanal
INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1006, 'A Casa Nova', 'Eles se mudam para a casa amaldiçoada.', 1, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 8, 206);

INSERT INTO EPISODIO (ID, TITULO, DESCRICAO, TEMPORADA, DATA_LANCAMENTO, ID_SERIE, ID_VIDEO) 
VALUES (1007, 'Vozes no Porão', 'O perigo se aproxima.', 1, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 8, 207);

-- ==========================================
-- 2.12. ARTISTA
-- ==========================================
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('111.111.111-11', 'Chris Ação', 'Masculino', TO_DATE('1983-08-11', 'YYYY-MM-DD'));
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('222.222.222-22', 'Mila Poderosa', 'Feminino', TO_DATE('2004-02-19', 'YYYY-MM-DD'));
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('333.333.333-33', 'Roberto Ferro', 'Masculino', TO_DATE('1965-04-04', 'YYYY-MM-DD'));
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('444.444.444-44', 'Wagner Moura', 'Masculino', TO_DATE('1976-06-27', 'YYYY-MM-DD'));
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('555.555.555-55', 'Fernanda Montenegro', 'Feminino', TO_DATE('1929-10-16', 'YYYY-MM-DD'));
INSERT INTO ARTISTA (CPF, NOME, GENERO, DATA_NASCIMENTO) VALUES ('666.666.666-66', 'Pedro Pascal', 'Masculino', TO_DATE('1975-04-02', 'YYYY-MM-DD'));

-- ==========================================
-- 2.13. PERSONAGEM
-- ==========================================
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (1, 'Tyler O Forte', 'Masculino', 35);
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (2, 'Garota Onze', 'Feminino', 12);
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (3, 'Homem de Metal', 'Masculino', 40);
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (4, 'Capitão Silva', 'Masculino', 45);
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (5, 'Avó Maluca', 'Feminino', 80);
INSERT INTO PERSONAGEM (ID, NOME, GENERO, IDADE) VALUES (6, 'Príncipe Caído', 'Masculino', 40);

-- ==========================================
-- 2.14. ELENCO
-- ==========================================
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (1, '111.111.111-11'); -- O Resgate Final
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (2, '333.333.333-33'); -- Vingadores do Espaço
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (3, '222.222.222-22'); -- Coisas Estranhas
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (5, '444.444.444-44'); -- A Última Missão
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (6, '555.555.555-55'); -- Rindo à Toa
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (7, '666.666.666-66'); -- Dinastia de Fogo
INSERT INTO ELENCO (ID_CONTEUDO, CPF) VALUES (4, '666.666.666-66'); 

-- ==========================================
-- 2.15. INTERPRETA
-- ==========================================
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (1, '111.111.111-11', 1);
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (2, '333.333.333-33', 3);
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (3, '222.222.222-22', 2);
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (5, '444.444.444-44', 4);
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (6, '555.555.555-55', 5);
INSERT INTO INTERPRETA (ID_CONTEUDO, CPF, ID_PERSONAGEM) VALUES (7, '666.666.666-66', 6);

-- ==========================================
-- 2.16. ASSISTE (Histórico de Acessos)
-- ==========================================
-- Marcos
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('marcos.silva@email.com', 'Marcos', 1, 'SN12345TV', TO_DATE('2023-10-15', 'YYYY-MM-DD'));

INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('marcos.silva@email.com', 'Marcos', 3, 'IPHONE13X', TO_DATE('2023-10-16', 'YYYY-MM-DD'));

INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('marcos.silva@email.com', 'Marcos', 7, 'SN12345TV', TO_DATE('2024-03-01', 'YYYY-MM-DD'));

-- Pedrinho (Infantil)
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('marcos.silva@email.com', 'Pedrinho', 4, 'SN12345TV', TO_DATE('2023-10-17', 'YYYY-MM-DD'));

-- Ana
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('ana.souza@email.com', 'Ana', 2, 'TAB9990A', TO_DATE('2023-11-01', 'YYYY-MM-DD'));

-- Carlos
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('carlos.mendes@email.com', 'Carlos', 5, 'TV_CARLOS_01', TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('carlos.mendes@email.com', 'Carlos', 7, 'TV_CARLOS_01', TO_DATE('2024-01-11', 'YYYY-MM-DD'));

-- Julia
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('julia.rocha@email.com', 'Julia', 8, 'PC_JULIA_99', TO_DATE('2024-02-05', 'YYYY-MM-DD'));

INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('julia.rocha@email.com', 'Julia', 6, 'TV_JULIA_SALA', TO_DATE('2024-02-06', 'YYYY-MM-DD'));

-- Visitante (Julia)
INSERT INTO ASSISTE (EMAIL, NOME, ID_CONTEUDO, NUM_SERIE, DATA_ACESSO) 
VALUES ('julia.rocha@email.com', 'Visitante', 5, 'TV_JULIA_SALA', TO_DATE('2024-02-07', 'YYYY-MM-DD'));