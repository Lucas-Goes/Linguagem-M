=if[FROTA]="F" and [NOVO_USADO]="M" then "Frota Montado" else
if[FROTA]="N" and [NOVO_USADO]="M" then "Montado" else
if[FROTA]="F" and [NOVO_USADO]="N" then "Frota Novo" else
if[FROTA]="N" and [NOVO_USADO]="M" then "M" else
if[FROTA]="N" and [NOVO_USADO]="N" then "Novo" else
if[FROTA]="N" and [NOVO_USADO]="U" then "Usado" else null

//Utilizar para view CARRERA_VW_PB_PROPOSTAS