-- Análise 2.1: Distribuição de Vendas por Região Geográfica Ampla
SELECT
    CASE
        WHEN l.Pais IN ('Canadá', 'México', 'Estados Unidos', 'Brasil', 'Peru') THEN 'América'
        WHEN l.Pais IN ('China', 'Coreia do Sul') THEN 'Ásia'
        WHEN l.Pais IN ('Rússia', 'Turquia', 'Portugal', 'França', 'Espanha') THEN 'Europa'
        WHEN l.Pais IN ('Austrália') THEN 'Oceania'
        ELSE 'Outras Regiões'
    END AS Regiao_Geografica_Ampla,
    COUNT(va.ID_Venda) AS total_vendas,
    SUM(va.Quantidade * va.Preco_Unitario) AS receita_total
FROM vendas_atualizado va
JOIN lojas l ON va.ID_Loja = l.ID_Loja
GROUP BY Regiao_Geografica_Ampla
ORDER BY receita_total DESC;