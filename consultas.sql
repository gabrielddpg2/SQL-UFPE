

-- selecionar todos os dados de uma tabela   

SELECT * FROM Perfil;

-- --------------------------------------------------------------------------------------------------
-- Consulta sem Duplicatas
SELECT DISTINCT DATA_CADASTRO
FROM PERFIL 
-- --------------------------------------------------------------------------------------------------
-- Consulta sem iniciada por algum termo
SELECT *
FROM PERFIL
WHERE SOBRENOME LIKE 'S%'
-- --------------------------------------------------------------------------------------------------
-- Consulta DE DATA DE CADASTRO AGRUPADAS POR DATA DE CADASTRO
SELECT pf.data_cadastro, COUNT (pf.data_cadastro)
FROM perfil pf
GROUP BY data_cadastro  

-- --------------------------------------------------------------------------------------------------
-- View a partir de 2 tabelas diferentes, relacionando cada topico com a data de cadastro do usuario,
-- e group by de topicos com data dos cadastros

CREATE VIEW Data_Topico AS
SELECT pf.Data_Cadastro, ac.Topico_Associado
FROM perfil pf
INNER JOIN acompanha ac ON PF.EMAIL = ac.usuario_associado

SELECT *
FROM Data_Topico

SELECT COUNT(Data_Cadastro), Topico_Associado
FROM Data_Topico
GROUP BY Topico_Associado
-- --------------------------------------------------------------------------------------------------
-- Realizar consulta de seleção-projeção-junção
SELECT P.nome, P.sobrenome, U.data_assinatura
FROM Perfil P
INNER JOIN Usuario U ON P.email = U.email_usuario
WHERE U.data_assinatura >= TO_DATE('2023-09-25', 'YYYY-MM-DD');
-- --------------------------------------------------------------------------------------------------


-- utilizar função de agregação

SELECT P.id, P.titulo_da_postagem, SUM(C.num_curtidas) AS total_curtidas
FROM Postagem P
LEFT JOIN Associa1 A1 ON P.id = A1.postagem
LEFT JOIN Comentario C ON A1.comentario = C.id
WHERE P.id = 1
GROUP BY P.id, P.titulo_da_postagem;

-- --------------------------------------------------------------------------------------------------

-- Criar regra para execução de comandos DDL
CREATE OR REPLACE PROCEDURE ddl_exec_rule AS
BEGIN
  IF (ora_dict_obj_type IN ('TABLE', 'VIEW', 'SEQUENCE', 'PROCEDURE', 'FUNCTION', 'TRIGGER')) THEN
    RAISE_APPLICATION_ERROR(-20001, 'Ação não permitida: Comandos DDL não são permitidos neste contexto.');
  END IF;
END;
/
-- --------------------------------------------------------------------------------------------------


-- criar usuário que possua a regra padrão para comandos DDL (criada anteriormente)
-- Crie um usuário com a regra padrão para comandos DDL
CREATE USER seu_usuario IDENTIFIED BY sua_senha;

-- Atribua a regra para comandos DDL ao usuário
GRANT EXECUTE ON ddl_exec_rule TO seu_usuario;

-- Defina a regra como padrão para comandos DDL para o usuário
ALTER USER seu_usuario DEFAULT ROLE ddl_exec_rule;

-- Conceda privilégios adicionais ao usuário, conforme necessário
-- Por exemplo:
-- GRANT CONNECT, RESOURCE TO seu_usuario;

-- --------------------------------------------------------------------------------------------------


-- criar uma transação única

DECLARE
  v_comentario_id VARCHAR2(10) := '1';
  v_incremento INT := 1;
BEGIN
  -- Iniciar a transação
  SAVEPOINT inicio_transacao;

  -- Atualizar o número de curtidas no comentário
  UPDATE Comentario
  SET num_curtidas = num_curtidas + v_incremento
  WHERE id = v_comentario_id;

  -- Se a atualização for bem-sucedida, confirmar a transação
  COMMIT;
  
  DBMS_OUTPUT.PUT_LINE('Transação concluída com sucesso!');
EXCEPTION
  WHEN OTHERS THEN
    -- Em caso de erro, desfazer a transação
    ROLLBACK TO inicio_transacao;
    DBMS_OUTPUT.PUT_LINE('Erro durante a transação. Transação desfeita.');
END;
/

