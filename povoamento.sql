-- Inserções de dados na tabela Perfil
INSERT INTO Perfil (email, nome, sobrenome, data_nascimento, data_cadastro, idade)
VALUES ('joao@email.com', 'João', 'Silva', TO_DATE('1990-05-15', 'YYYY-MM-DD'), TO_DATE('2023-09-25', 'YYYY-MM-DD'), 33);

INSERT INTO Perfil (email, nome, sobrenome, data_nascimento, data_cadastro, idade)
VALUES ('maria@email.com', 'Maria', 'Santos', TO_DATE('1985-12-10', 'YYYY-MM-DD'), TO_DATE('2023-09-25', 'YYYY-MM-DD'), 38);

INSERT INTO Perfil (email, nome, sobrenome, data_nascimento, data_cadastro, idade)
VALUES ('carlos@email.com', 'Carlos', 'Ferreira', TO_DATE('1978-08-20', 'YYYY-MM-DD'), TO_DATE('2023-09-25', 'YYYY-MM-DD'), 45);

-- Inserções de dados na tabela Usuario
INSERT INTO Usuario (email_usuario, data_assinatura)
VALUES ('joao@email.com', TO_DATE('2023-09-25', 'YYYY-MM-DD'));

INSERT INTO Usuario (email_usuario, data_assinatura)
VALUES ('maria@email.com', TO_DATE('2023-09-25', 'YYYY-MM-DD'));

INSERT INTO Usuario (email_usuario, data_assinatura)
VALUES ('carlos@email.com', TO_DATE('2023-09-25', 'YYYY-MM-DD'));

-- Inserções de dados na tabela Moderador
INSERT INTO Moderador (email_moderador)
VALUES ('joao@email.com');

-- Inserções de dados na tabela Anunciante
INSERT INTO Anunciante (email, valor_anuncio)
VALUES ('maria@email.com', 100.00);

-- Inserções de dados na tabela Patrocinador
INSERT INTO Patrocinador (email, valor_patrocinio)
VALUES ('carlos@email.com', 500.00);

-- Inserções de dados na tabela ConfigUser
INSERT INTO ConfigUser (email, tema, notificacao)
VALUES ('joao@email.com', 'Tema Escuro', 'Ativado');

-- Inserções de dados na tabela Postagem
INSERT INTO Postagem (usuario_associado, titulo_da_postagem, data_publicacao)
VALUES ('joao@email.com', 'Minha primeira postagem', TO_DATE('2023-09-25', 'YYYY-MM-DD'));

INSERT INTO Postagem (usuario_associado, titulo_da_postagem, data_publicacao)
VALUES ('maria@email.com', 'Dicas de culinária', TO_DATE('2023-09-24', 'YYYY-MM-DD'));

INSERT INTO Postagem (usuario_associado, titulo_da_postagem, data_publicacao)
VALUES ('carlos@email.com', 'Viagem de aventura', TO_DATE('2023-09-23', 'YYYY-MM-DD'));

-- Inserções de dados na tabela Topico
INSERT INTO Topico (nome_do_topico)
VALUES ('Tecnologia');

INSERT INTO Topico (nome_do_topico)
VALUES ('Culinária');

INSERT INTO Topico (nome_do_topico)
VALUES ('Viagens');

-- Inserções de dados na tabela Comentario
INSERT INTO Comentario (id, data_publicacao, mensagem, num_curtidas)
VALUES ('1', TO_DATE('2023-09-25', 'YYYY-MM-DD'), 'Ótimo artigo!', 10);

INSERT INTO Comentario (id, data_publicacao, mensagem, num_curtidas)
VALUES ('2', TO_DATE('2023-09-24', 'YYYY-MM-DD'), 'Gostei das receitas!', 8);

INSERT INTO Comentario (id, data_publicacao, mensagem, num_curtidas)
VALUES ('3', TO_DATE('2023-09-23', 'YYYY-MM-DD'), 'Que lugar incrível!', 15);

-- Inserções de dados na tabela Resposta
INSERT INTO Resposta (id_comentario, id_resposta, data_publicacao, mensagem)
VALUES ('1', '1a', TO_DATE('2023-09-25', 'YYYY-MM-DD'), 'Obrigado!');

INSERT INTO Resposta (id_comentario, id_resposta, data_publicacao, mensagem)
VALUES ('1', '1b', TO_DATE('2023-09-25', 'YYYY-MM-DD'), 'Fico feliz que tenha gostado.');

INSERT INTO Resposta (id_comentario, id_resposta, data_publicacao, mensagem)
VALUES ('2', '2a', TO_DATE('2023-09-24', 'YYYY-MM-DD'), 'Experimente a receita de bolo!');



-- Inserções de dados na tabela Usuario_Postagem com valor padrão para MODERADOR
-- Inserir dados fictícios na tabela Usuario_Postagem
-- Inserções de dados na tabela Usuario_Postagem com moderadores
INSERT INTO Usuario_Postagem (usuario, postagem, moderador) VALUES ('joao@email.com', 1, 'joao@email.com');
INSERT INTO Usuario_Postagem (usuario, postagem, moderador) VALUES ('joao@email.com', 2, 'joao@email.com');
-- INSERT INTO Usuario_Postagem (usuario, postagem, moderador) VALUES ('usuario3@example.com', 3, 'moderador3@example.com');
-- Adicione mais linhas conforme necessário

-- Adicione mais linhas conforme necessário



-- Inserções de dados na tabela Acompanha
INSERT INTO Acompanha (topico_associado, usuario_associado)
VALUES ('Tecnologia', 'joao@email.com');

INSERT INTO Acompanha (topico_associado, usuario_associado)
VALUES ('Culinária', 'maria@email.com');

INSERT INTO Acompanha (topico_associado, usuario_associado)
VALUES ('Viagens', 'carlos@email.com');

-- Inserções de dados na tabela Segue
INSERT INTO Segue (seguidor, seguido)
VALUES ('joao@email.com', 'maria@email.com');

INSERT INTO Segue (seguidor, seguido)
VALUES ('maria@email.com', 'joao@email.com');

-- Inserções de dados na tabela Associa1
INSERT INTO Associa1 (postagem, comentario)
VALUES (1, '1');

INSERT INTO Associa1 (postagem, comentario)
VALUES (2, '2');

INSERT INTO Associa1 (postagem, comentario)
VALUES (3, '3');

-- Inserções de dados na tabela Associa2
INSERT INTO Associa2 (postagem, topico)
VALUES (1, 'Tecnologia');

INSERT INTO Associa2 (postagem, topico)
VALUES (2, 'Culinária');

INSERT INTO Associa2 (postagem, topico)
VALUES (3, 'Viagens');

-- Inserções de dados na tabela Telefone
INSERT INTO Telefone (email_perfil, num_telefone)
VALUES ('joao@email.com', '1234567890');

INSERT INTO Telefone (email_perfil, num_telefone)
VALUES ('maria@email.com', '9876543210');

INSERT INTO Telefone (email_perfil, num_telefone)
VALUES ('carlos@email.com', '5555555555');
