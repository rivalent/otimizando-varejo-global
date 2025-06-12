-- Análise 2.5: Distribuição Geográfica das Compras dos Clientes Mais Valiosos
WITH TopValuableCustomers AS (
    SELECT
        va.ID_Cliente,
        SUM(va.Quantidade * va.Preco_Unitario) AS receita_total_cliente
    FROM vendas_atualizado va
    GROUP BY va.ID_Cliente
    ORDER BY receita_total_cliente DESC
    LIMIT 10
)
SELECT
    l.pais,
    l.regiao,
    COUNT(DISTINCT va.ID_Cliente) AS numero_clientes_valiosos_nesta_localidade,
    COUNT(va.ID_Venda) AS total_vendas_desses_clientes_nesta_localidade,
    SUM(va.Quantidade * va.Preco_Unitario) AS receita_desses_clientes_nesta_localidade
FROM vendas_atualizado va
JOIN TopValuableCustomers tvc ON va.ID_Cliente = tvc.ID_Cliente
JOIN lojas l ON va.ID_Loja = l.ID_Loja
GROUP BY l.Pais, l.Regiao
ORDER BY receita_desses_clientes_nesta_localidade DESC;