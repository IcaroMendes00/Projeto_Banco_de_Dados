/* TOPICO 5 

a. Consulta simples:
Nessa consulta, são selecionados apenas os campos "nome" e "localizacao" da tabela "Cinema". 
Ela retornará o nome e a localização de todos os cinemas presentes no banco de dados.
*/

SELECT nome, localizacao FROM Cinema;

/*
b. Consulta com junção:
Nesta consulta, são selecionados o título do filme da tabela "Filme" e a capacidade da sala da tabela "Sala". 
As tabelas "Filme", "Sala_filme" e "Sala" são unidas através de suas chaves estrangeiras para obter as informações desejadas.
*/

SELECT f.titulo, s.capacidade
FROM Filme f
JOIN Sala_filme sf ON f.id_filme = sf.filme_id
JOIN Sala s ON sf.sala_id = s.id_sala;

/*
c. Alteração de dados:
Nesta alteração de dados, o nome do cinema com "id_cinema" igual a 1 é atualizado para "Novo Nome" na tabela "Cinema".
*/

UPDATE Cinema
SET nome = 'Novo Nome'
WHERE id_cinema = 1;

/*
d. Exclusão de dados:
Nesta exclusão de dados, o registro da tabela "Funcionario" com "id_funcionario" igual a 1 é removido do banco de dados.
*/

DELETE FROM Funcionario
WHERE id_funcionario = 1;

/* TOPICO 6

a. Consulta simples envolvendo uma única tabela:
Esta consulta retornará todos os registros da tabela "Cinema", exibindo todas as colunas e linhas presentes nessa tabela.
*/

SELECT * FROM Cinema;

/*
b. Consulta simples envolvendo duas tabelas:
Nessa consulta, são selecionados o título do filme da tabela "Filme" e a capacidade da sala da tabela "Sala". As tabelas "Filme", "Sala_filme" e "Sala" são unidas através de suas chaves estrangeiras para obter as informações desejadas.
*/

SELECT f.titulo, s.capacidade
FROM Filme f
JOIN Sala_filme sf ON f.id_filme = sf.filme_id
JOIN Sala s ON sf.sala_id = s.id_sala;

/*
c. Consulta simples envolvendo três tabelas:
Nesta consulta, são selecionados o nome do cinema da tabela "Cinema", o título do filme da tabela "Filme" e o número da sala da tabela "Sala". As tabelas "Cinema", "Sala", "Sala_filme" e "Filme" são unidas através de suas chaves estrangeiras para obter as informações desejadas.
*/

SELECT c.nome, f.titulo, s.numero_da_sala
FROM Cinema c
JOIN Sala s ON c.id_cinema = s.cinema_id
JOIN Sala_filme sf ON s.id_sala = sf.sala_id
JOIN Filme f ON sf.filme_id = f.id_filme;

/*
d. Consulta envolvendo agrupamento:
Nessa consulta, é selecionado o título do filme da tabela "Filme" e a contagem de salas associadas a cada filme da tabela "Sala_filme". Os registros são agrupados pelo título do filme usando a cláusula GROUP BY.
*/

SELECT f.titulo, COUNT(sf.id_sala_filme) AS quantidade_salas
FROM Filme f
JOIN Sala_filme sf ON f.id_filme = sf.filme_id
GROUP BY f.titulo;


/*
e. Consulta envolvendo função agregada:
Nesta consulta, é selecionado o título do filme da tabela "Filme" e a média dos preços dos bilhetes da tabela "Bilhete" para cada filme. As tabelas "Filme", "Sessao" e "Bilhete" são unidas através de suas chaves estrangeiras, e a média é calculada usando a função AVG. Os resultados são agrupados pelo título do filme usando a cláusula GROUP BY.
*/

SELECT f.titulo, AVG(b.preco) AS media_preco
FROM Filme f
JOIN Sessao s ON f.id_filme = s.filme_id
JOIN Bilhete b ON s.id_sessao = b.sessao_id
GROUP BY f.titulo;



