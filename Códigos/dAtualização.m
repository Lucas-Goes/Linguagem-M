let
    Fonte = #table({"Ultima Atualização"},
{{DateTime.LocalNow()}}),
    #"Tipo Alterado" = Table.TransformColumnTypes(Fonte,{{"Ultima Atualização", type number}}),
    #"Personalização Adicionada" = Table.AddColumn(#"Tipo Alterado", "UTC", each ([Ultima Atualização])-3/24),
    #"Tipo Alterado1" = Table.TransformColumnTypes(#"Personalização Adicionada",{{"UTC", type datetime}, {"Ultima Atualização", type datetime}})
in
    #"Tipo Alterado1"
    