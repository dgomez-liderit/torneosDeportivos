codeunit 50101 "Calculadora Costes"
{
    procedure calcularCosteTorneo(v: Record "Torneo"): Decimal
    var
        partido: Record Partido;
    begin
        partido.SetRange("Codigo Torneo", v."Codigo Torneo");
        partido.SetFilter(Estado, '<>%1', partido.Estado::Suspendido);
        v.CosteTorneo := v.CosteBase * partido.Count();


        if (v."País Sede" = v."País Sede"::"España")
then begin

            v.CosteTorneo := v.CosteTorneo * 1.2;


        end;
        v.Modify();
        exit(v.CosteTorneo);
    end;
}