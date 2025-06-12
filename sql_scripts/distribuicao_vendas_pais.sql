-- Análise 2.1: Distribuição de Vendas por País e Região
SELECT
    l.Pais,
    l.Regiao,
    COUNT(va.ID_Venda) AS total_vendas,
    SUM(va.Quantidade * va.Preco_Unitario) AS receita_total
FROM vendas_atualizado va
JOIN lojas l ON va.ID_Loja = l.ID_Loja
GROUP BY l.Pais, l.Regiao
ORDER BY l.Pais, l.Regiao;