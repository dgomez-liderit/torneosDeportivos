page 50100 "Lista Torneos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Torneo;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo Torneo"; Rec."Codigo Torneo")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Deporte; Rec.Deporte)
                {
                    ApplicationArea = All;
                }
                field("Fecha Inicio"; Rec."Fecha Inicio")
                {
                    ApplicationArea = All;
                }
                field("Fecha fin"; Rec."Fecha fin")
                {
                    ApplicationArea = All;
                }
                field("País Sede"; Rec."País Sede")
                {
                    ApplicationArea = All;
                }
                field(Moneda; Rec.Moneda)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(CosteTorneo; Rec.CosteTorneo)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(CosteBase; Rec.CosteBase)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        calculadoraCostes: Codeunit "Calculadora Costes";
    begin
        calculadoraCostes.calcularCosteTorneo(Rec);
    end;
}