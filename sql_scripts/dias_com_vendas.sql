-- Verificando a completude dos dados: Número de dias com vendas por Ano e Mês
SELECT
    YEAR(Data_Venda) AS Ano,
    MONTH(Data_Venda) AS Mes,
    COUNT(DISTINCT DATE(Data_Venda)) AS Dias_com_venda
FROM vendas_atualizado
GROUP BY Ano, Mes
ORDER BY Ano, Mes;