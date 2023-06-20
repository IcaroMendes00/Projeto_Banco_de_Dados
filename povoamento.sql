/////////////// POVOAR TABELAS /////////////// 

/// POVOANDO CINEMA 

INSERT INTO Cinema (nome, CNPJ, localizacao, email) VALUES ('Cinesercla', '12345678901234', 'Partage Shopping - Campina Grande', 'cinema@example.com');

 
/// POVOANDO SALA

INSERT INTO Sala (capacidade, numero_da_sala, cinema_id) VALUES 
    (100, 1, 1),
    (120, 2, 1),
    (80, 3, 1);

/// POVOANDO Funcionario

INSERT INTO Funcionario (nome, cpf, endereco, telefone, salario, tipo, chefiado, cinema_id) VALUES 
    ('João Silva', '12345678901', 'Rua dos Funcionários, 123', '1111111111', 2000.00, 'Lim', 4, 1),
    ('Maria Santos', '98765432109', 'Avenida dos Trabalhadores, 456', '2222222222', 2500.00, 'Atd', 4, 1),
    ('Pedro Oliveira', '56789012345', 'Travessa das Ruas, 789', '3333333333', 3000.00, 'Tec', 4, 1),
    ('Ana Pereira', '01234567890', 'Praça das Avenidas, 789', '4444444444', 3500.00, 'Ger', 4, 1);
    ('Carlos Rodrigues', '78901234567', 'Rua das Flores, 789', '5555555555', 3000.00, 'Tec', 4, 1),
    ('Isabela Costa', '23456789012', 'Avenida Central, 456', '6666666666', 3000.00, 'Tec', 4, 1);

/// POVOANDO TECNICO 

INSERT INTO Tecnico (certificado, funcionario_id, sala_id) VALUES 
    ('https://certificadocursosonline.com/', 3, 1),
    ('https://certificadocursosonline.com/', 5, 2),
    ('https://certificadocursosonline.com/', 6, 3);

/// POVOANDO FILME 

INSERT INTO Filme (titulo, duracao, status_cartaz, ano_lancamento) VALUES 
    ('Os Vingadores: Ultimato', '03:01:00', 1, '2019-04-26'),
    ('Parasita', '02:12:00', 1, '2019-05-30'),
    ('Coringa', '02:02:00', 1, '2019-10-04'),
    ('A Origem', '02:28:00', 0, '2010-07-16'),
    ('O Poderoso Chefão', '02:55:00', 0, '1972-03-24'),
    ('Interestelar', '02:49:00', 0, '2014-11-07'),
    ('Titanic', '03:15:00', 0, '1997-12-19');

/// POVOANDO Sala_filme

INSERT INTO Sala_filme (sala_id, filme_id) VALUES
    (1,1),
    (2,2),
    (3,3);

/// POVOANDO ATORES

INSERT INTO Atores (nome, nacionalidade, data_nascimento) VALUES 
    ('Tom Hanks', 'Estados Unidos', '1956-07-09'),
    ('Meryl Streep', 'Estados Unidos', '1949-06-22'),
    ('Leonardo DiCaprio', 'Estados Unidos', '1974-11-11'),
    ('Scarlett Johansson', 'Estados Unidos', '1984-11-22'),
    ('Denzel Washington', 'Estados Unidos', '1954-12-28'),
    ('Julia Roberts', 'Estados Unidos', '1967-10-28'),
    ('Robert Downey Jr.', 'Estados Unidos', '1965-04-04'),
    ('Natalie Portman', 'Israel', '1981-06-09'),
    ('Brad Pitt', 'Estados Unidos', '1963-12-18'),
    ('Cate Blanchett', 'Austrália', '1969-05-14'),
    ('Johnny Depp', 'Estados Unidos', '1963-06-09'),
    ('Angelina Jolie', 'Estados Unidos', '1975-06-04'),
    ('Will Smith', 'Estados Unidos', '1968-09-25'),
    ('Emma Stone', 'Estados Unidos', '1988-11-06'),
    ('Joaquin Phoenix', 'Estados Unidos', '1974-10-28');



/// POVOANDO ATORES E FILMES 

INSERT INTO Atores_filme (ator_id, filme_id) VALUES 
    (1, 1),  
    (3, 1),  
    (2, 2),  
    (4, 2),  
    (5, 3),  
    (6, 3),  
    (7, 4),  
    (8, 4),  
    (9, 5),  
    (10, 5), 
    (11, 6), 
    (12, 6), 
    (13, 7),
    (14, 7), 
    (15, 7); 

/// POVOANDO Genero

INSERT INTO Genero (nome) VALUES 
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficção Científica'),
    ('Romance'),
    ('Suspense'),
    ('Terror');

/// POVOANDO GENERO_FILME 

INSERT INTO Genero_filme (genero_id, filme_id) VALUES 
    (1, 1),  
    (4, 1),  
    (3, 2),  
    (7, 2),  
    (3, 3),  
    (6, 3),  
    (4, 4),  
    (6, 4),  
    (2, 5), 
    (3, 5),  
    (4, 6),  
    (6, 6),  
    (5, 7),  
    (6, 7),  
    (7, 7);  

/// POVOANDO SESSAO 

INSERT INTO Sessao (data_horario, filme_id) VALUES 
    ('2023-06-16 18:00:00', 1),  
    ('2023-06-16 20:30:00', 2),  
    ('2023-06-16 17:30:00', 3);

/// POVOANDO CLIENTE

INSERT INTO Cliente (nome, email, cpf, telefone, tipo) VALUES 
    ('João Silva', 'joao.silva@example.com', '12345678901', '999999999', 'Convencional'),
    ('Maria Santos', 'maria.santos@example.com', '98765432109', '888888888', 'Doador'),
    ('Pedro Oliveira', 'pedro.oliveira@example.com', '45678912301', '777777777', 'Estudante');

/// POVOANDO ESTUDANTE 

INSERT INTO Estudante (declaracao, cliente_id) VALUES 
    ('imgv2-2-f.scribdassets.com/img/document', 3);

/// POVOANDO DOADOR 

INSERT INTO Doador (carteira_doador, cliente_id) VALUES 
    ('imgv2-2-f.scribdassets.com/img/document', 2);

/// POVOANDO PEDIDOS

INSERT INTO Pedidos (data_hora, valor, cliente_id) VALUES 
    ('2023-06-16 13:00:00', 40, 2),
    ('2023-06-14 11:00:00', 20, 1),
    ('2023-06-15 15:00:00', 60, 3);

/// POVANDO BILHETE 

INSERT INTO Bilhete (assento, preco, status_venda, sessao_id, pedido_id) VALUES 
    ('045', 20, 1, 1, 1),
    ('046', 20, 1, 1, 1),
    ('120', 20, 1, 2, 2),
    ('078', 20, 1, 3, 3),
    ('079', 20, 1, 3, 3),
    ('080', 20, 1, 3, 3);