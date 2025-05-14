codeunit 50101 "Calculadora Costes"
{
    procedure calcularCosteTorneo(v: Record "Torneo")
    var
        partido: Record Partido;
    begin
        partido.SetRange("Codigo Torneo", v."Codigo Torneo");
        v.CosteTorneo := v.CosteBase * partido.Count;
        if (v."País Sede" = v."País Sede"::"España")
then
            v.CosteTorneo := v.CosteTorneo * 1.2;
    end;
}