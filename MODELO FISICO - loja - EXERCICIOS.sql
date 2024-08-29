USE loja ;

SELECT * FROM clientes ;
SELECT * FROM pagamentos ;
SELECT * FROM pedidos ;

-- INSERIR CLIENTE COM A DATA DE NASCIMENTO PARA HOJE
INSERT INTO clientes (nome, data_nasc)
	VALUES ('Jeferson Alan',curdate()) ;

SELECT curdate() ;

-- ADICIONAR PEDIDO COM A DATA PARA AMANHA
INSERT INTO pedidos (id_cliente, data_pedido)
	VALUES ('1', date_add(CURDATE(), INTERVAL 1 DAY));
    
-- CALCULAR DIFERENCA ENTRE DUAS DATAS 
SELECT DATEDIFF('2024-08-01', CURDATE());

-- OBTER DATA  DOIS DIAS ANTES DE HOJE DE UM PAGAMENTO
SELECT DATE_SUB(CURDATE(), INTERVAL 2 DAY);

-- INSERIR UM PAGAMENTO PARA UMA DATA ESPECIFICA
INSERT INTO pagamentos (data_pagamento, valor_pagamento, id_pedido)
	VALUES ('2024-08-28 17:00:00', '105,50', '1'),
		   ('2024-08-28 17:25:00', '105,50', '2');
           
INSERT INTO pagamentos (data_pagamento, valor_pagamento, id_pedido)
	VALUES ('2024-08-28 17:10:00', '105.50', '2'),
		   ('2024-08-28 17:25:00', '108.50', '3');

-- LISTAR TODOS OS PEDIDOS DE HOJE 
SELECT * FROM pedidos 
	WHERE data_pedido = curdate() ;
    
-- Qual função SQL retorna a data atual e hora atual?
      SELECT curdate() AS data_atual, curtime() AS hora_atual;

-- COMO ADICIONAR UM MES APOS A DATA ATUAL
SELECT DATE_ADD(curdate(), INTERVAL 1 MONTH );

-- COMO ALTERAR A DATA DE NASCIMENTO DE UM CLIENTE PARA 15 ANOS ATRAS
UPDATE clientes 
	SET data_nasc = DATE_SUB(CURDATE(), INTERVAL 15 YEAR) 
		WHERE id = 1 ;
        
-- Como obter a diferença entre a data de pagamento e a data do pedido?
SELECT DATEDIFF('2024-08-01', '2024-07-25') AS dias_de_diferença;
