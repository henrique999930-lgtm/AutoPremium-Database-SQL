-- 1. Listar veículos disponíveis
SELECT Modelo, Marca, Ano_Fabricacao, Placa 
FROM VEICULO 
WHERE Status_Atual = 'Disponível'
ORDER BY Modelo ASC;

-- 2. Relatório de Vendas (Cliente + Carro + Vendedor)
SELECT 
    C.Nome_Completo AS Cliente,
    V.Modelo AS Veiculo_Comprado,
    VD.Nome_Vendedor AS Vendedor,
    P.Valor_Final
FROM PEDIDO_VENDA P
INNER JOIN CLIENTE C ON P.FK_ClienteFK = C.ID_Cliente
INNER JOIN VEICULO V ON P.FK_ChassiFK = V.Chassi
INNER JOIN VENDEDOR VD ON P.FK_VendedorFK = VD.ID_Vendedor;

-- 3. Estoque crítico de peças
SELECT Nome_Peca, SKU_Codigo, Qtd_Estoque 
FROM PECA 
WHERE Qtd_Estoque < 15;

-- 4. Ordens de Serviço em aberto
SELECT OS.ID_OS, OS.Data_Abertura, OS.Status_OS, M.Nome_Tecnico
FROM ORDEM_SERVICO OS
LEFT JOIN MECANICO M ON OS.FK_MecanicoFK = M.ID_Mecanico
WHERE OS.Status_OS != 'Finalizada';