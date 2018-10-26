let
    Fonte = List.Dates(#date(2014, 1, 1), 3024, #duration(1, 0, 0, 0)),
    #"Convertido para Tabela" = Table.FromList(Fonte, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Tipo Alterado" = Table.TransformColumnTypes(#"Convertido para Tabela",{{"Column1", type datetime}}),
    #"Linhas Classificadas" = Table.Sort(#"Tipo Alterado",{{"Column1", Order.Descending}}),
    #"Colunas Renomeadas" = Table.RenameColumns(#"Linhas Classificadas",{{"Column1", "Data"}}),
    #"Data Extraída" = Table.TransformColumns(#"Colunas Renomeadas",{{"Data", DateTime.Date, type date}}),
    #"Ano Inserido" = Table.AddColumn(#"Data Extraída", "Ano", each Date.Year([Data]), Int64.Type),
    #"Nome do Mês Inserido" = Table.AddColumn(#"Ano Inserido", "Nome do Mês", each Date.MonthName([Data]), type text),
    #"Mês Inserido" = Table.AddColumn(#"Nome do Mês Inserido", "Mês", each Date.Month([Data]), Int64.Type),
    #"Início do Mês Inserido" = Table.AddColumn(#"Mês Inserido", "Início do Mês", each Date.StartOfMonth([Data]), type date)
in
    #"Início do Mês Inserido"

    