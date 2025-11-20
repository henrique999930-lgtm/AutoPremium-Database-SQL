-- --- UPDATES ---
-- 1. Veículo vendido
UPDATE VEICULO SET Status_Atual = 'Vendido' WHERE Chassi = '9BW1234567890ABCD';

-- 2. Inflação nas peças
UPDATE PECA SET Preco_Unitario = Preco_Unitario * 1.10 WHERE Nome_Peca LIKE '%Pastilha%';

-- 3. Atualizar telefone cliente
UPDATE CLIENTE SET Telefone = '1197777-6666' WHERE ID_Cliente = 1;

-- --- DELETES ---
-- 1. Excluir OS errada
DELETE FROM ORDEM_SERVICO WHERE ID_OS = 501 AND Status_OS = 'Aguardando Peça';

-- 2. Limpar estoque zerado
DELETE FROM PECA WHERE Qtd_Estoque = 0;

-- 3. Cancelar venda
DELETE FROM PEDIDO_VENDA WHERE ID_Pedido = 9999;