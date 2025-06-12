-- Análise 2.2: Tendências de Vendas por Ano e Mês
SELECT
    YEAR(Data_Venda) AS Ano,
    MONTH(Data_Venda) AS Mes,
    COUNT(ID_Venda) AS total_vendas,
    SUM(Quantidade * Preco_Unitario) AS receita_total
FROM vendas_atualizado va
GROUP BY Ano, Mes
ORDER BY Ano, Mes;