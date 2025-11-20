# 🏎️ AutoPremium Motors - Database Ecosystem

![Status](https://img.shields.io/badge/STATUS-CONCLUDED-brightgreen?style=for-the-badge)
![Language](https://img.shields.io/badge/LANGUAGE-SQL-blue?style=for-the-badge&logo=mysql&logoColor=white)
![License](https://img.shields.io/badge/LICENSE-MIT-orange?style=for-the-badge)

> **Ecossistema de Gestão Integrada para Concessionária de Veículos Premium.**
> Projeto acadêmico focado em Modelagem de Dados, Normalização (3FN) e Scripts SQL.

---

## 📋 Sobre o Projeto

Este repositório contém a implementação física do banco de dados relacional para a **AutoPremium Motors**. O sistema gerencia o ciclo de vida completo de veículos de luxo, integrando:

* ✅ **Showroom:** Gestão de estoque, vendas e CRM.
* ✅ **Oficina:** Controle de ordens de serviço, mecânicos e peças.
* ✅ **Peças:** Controle de inventário e requisições.

---

## 🎨 Arquitetura do Banco de Dados (DER)

O diagrama abaixo representa o **Modelo Lógico Normalizado**, renderizado nativamente pelo GitHub.

```mermaid
erDiagram
    CLIENTE ||--o{ PEDIDO_VENDA : "gera (1:N)"
    CLIENTE {
        int ID_Cliente PK
        string Nome_Completo
        string CPF_CNPJ
        string Telefone
        string Email
    }
    VENDEDOR ||--o{ PEDIDO_VENDA : "gerencia (1:N)"
    VENDEDOR {
        int ID_Vend PK
        string Nome
        string Matricula
        decimal Meta
    }
    VEICULO ||--o{ PEDIDO_VENDA : "consta_em (1:N)"
    VEICULO {
        string Chassi PK
        string Placa
        string Modelo
        string Marca
        int Ano
        string Status
    }
    VEICULO ||--o{ ORDEM_SERVICO : "recebe (1:N)"
    MECANICO ||--o{ ORDEM_SERVICO : "executa (1:N)"
    MECANICO {
        int ID_Mec PK
        string Nome
        string Especialidade
        decimal Valor_Hora
    }
    ORDEM_SERVICO ||--|{ ITEM_OS : "possui (1:N)"
    ORDEM_SERVICO {
        int ID_OS PK
        date Data_Abertura
        string Status
        float Total
    }
    PECA ||--o{ ITEM_OS : "abastece (1:N)"
    PECA {
        int ID_Peca PK
        string Nome
        int Estoque
        float Preco
    }
    ITEM_OS {
        int ID_Item PK
        int FK_OrdemServico
        int FK_Peca
        int Qtd
        float Subtotal
    }
