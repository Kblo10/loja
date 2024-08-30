USE loja;

SELECT * FROM clientes ;
SELECT * FROM pagamentos ;
SELECT * FROM pedidos ;

-- 1. Listar todos os clientes que nasceram antes de 2000.
SELECT clientes.nome, clientes.data_nasc FROM clientes
	 WHERE data_nasc < '2000-01-01' ;

-- 2. Listar todos os pedidos feitos no último mês.
SELECT pedidos.id, pedidos.data_pedido FROM pedidos
	 WHERE YEAR(data_pedido) = '2024'
     AND MONTH(data_pedido) = '8' ;

-- 3. Atualizar o valor de um pagamento para 100,00 onde o ID do pagamento é 3.
UPDATE pagamentos SET valor_pagamento = '100.00'
	WHERE id = '3' ;

-- 4. Excluir todos os pedidos feitos antes de 2023.
SELECT * FROM pedidos;
INSERT INTO pedidos (data_pedido, id_cliente)
	 VALUES ('2022-01-05 13:00:00','2');
     
SET SQL_SAFE_UPDATES = 1 ;

DELETE FROM pedidos
	 WHERE data_pedido <= '2023-01-01 00:00:00' ;

-- 5. Listar todos os pagamentos feitos após uma data específica.
SELECT * FROM pagamentos
	 WHERE data_pagamento > '2024-02-08 00:00:00' ;

-- 6. Exibir apenas a data atual sem a hora.
SELECT curdate() AS data_atual ;

-- 7. Calcular a idade de todos os clientes com base na data de nascimento.
SELECT nome, timestampdiff(YEAR, data_nasc, CURDATE()) FROM clientes;

-- 8. Listar todos os clientes que têm pelo menos um pedido.
SELECT clientes.nome, pedidos.id, data_pedido FROM pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id ;

-- 9. Calcular o valor total de pagamentos realizados por um pedido específico.
 SELECT SUM(valor_pagamento) FROM pagamentos;

-- 10. Listar todos os pedidos que foram pagos e têm um valor superior a 150.
SELECT pedidos.id, pagamentos.valor_pagamento FROM pedidos
INNER JOIN pagamentos ON pagamentos.id_pedido = pedidos.id
	 WHERE valor_pagamento > 100 ;