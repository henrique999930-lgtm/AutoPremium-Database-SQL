-- 1. Inserindo Clientes
INSERT INTO CLIENTE (ID_Cliente, Nome_Completo, CPF_CNPJ, Telefone, Email, Endereco_Completo) VALUES
(1, 'Roberto Justos', '123.456.789-00', '1199999-0001', 'roberto@email.com', 'Av. Paulista, 1000 - SP'),
(2, 'Ana Hickmann', '987.654.321-11', '1198888-0002', 'ana@email.com', 'Rua Oscar Freire, 500 - SP'),
(3, 'Tech Solutions LTDA', '12.345.678/0001-99', '113333-4444', 'contato@tech.com', 'Av. Berrini, 200 - SP');

-- 2. Inserindo Vendedores
INSERT INTO VENDEDOR (ID_Vendedor, Nome_Vendedor, Matricula, Meta_Vendas) VALUES
(1, 'Carlos Henrique', 'V001', 500000.00),
(2, 'Fernanda Lima', 'V002', 450000.00);

-- 3. Inserindo Veículos
INSERT INTO VEICULO (Chassi, Placa, Modelo, Marca, Ano_Fabricacao, Status_Atual) VALUES
('9BW1234567890ABCD', 'ABC-1234', 'Jetta GLI 350 TSI', 'Volkswagen', 2024, 'Disponível'),
('8CD9876543210EFGH', 'XYZ-9876', 'Civic Touring', 'Honda', 2023, 'Vendido'),
('7EF1239874560IJKL', 'BMW-3201', '320i M Sport', 'BMW', 2024, 'Manutenção');

-- 4. Inserindo Peças
INSERT INTO PECA (ID_Peca, Nome_Peca, SKU_Codigo, Qtd_Estoque, Preco_Unitario) VALUES
(1, 'Filtro de Óleo Sintético', 'SKU-FLT-01', 50, 120.00),
(2, 'Pastilha de Freio Cerâmica', 'SKU-BRK-99', 20, 850.00);

-- 5. Inserindo Mecânicos
INSERT INTO MECANICO (ID_Mecanico, Nome_Tecnico, Especialidade, Valor_Hora) VALUES
(1, 'Mestre João', 'Motor e Câmbio', 250.00),
(2, 'Doutor Auto', 'Elétrica e Suspensão', 200.00);

-- 6. Inserindo Pedidos e OS
INSERT INTO PEDIDO_VENDA (ID_Pedido, Data_Venda, Valor_Final, FK_ClienteFK, FK_VendedorFK, FK_ChassiFK) VALUES
(1001, '2025-10-15', 210000.00, 2, 1, '8CD9876543210EFGH');

INSERT INTO ORDEM_SERVICO (ID_OS, Data_Abertura, Status_OS, Valor_Total_Servico, FK_ChassiFK, FK_MecanicoFK) VALUES
(500, '2025-11-01', 'Finalizada', 1450.00, '9BW1234567890ABCD', 1);

INSERT INTO ITEM_OS (ID_Item, FK_OrdemServicoFK, FK_PecaFK, Quantidade_Usada, Subtotal_Item) VALUES
(1, 500, 1, 1, 120.00);