-- Análise 2.3: Produtos Menos Vendidos (por Quantidade) - Agregado por Nome Limpo
SELECT
    p.Nome_Produto,
    COUNT(va.ID_Venda) AS total_vendas_transacoes,
    SUM(va.Quantidade) AS total_quantidade_vendida,
    SUM(va.Quantidade * va.Preco_Unitario) AS receita_total
FROM vendas_atualizado va
JOIN produtos p ON va.ID_Produto = p.ID_Produto
GROUP BY p.Nome_Produto
ORDER BY total_quantidade_vendida ASC
LIMIT 10;