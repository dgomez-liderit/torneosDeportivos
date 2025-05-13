page 50105 "Venta Entradas"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Venta Entradas";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Num Venta"; Rec."Num Venta")
                {
                    ApplicationArea = All;
                }
                field("Id Partido"; Rec."Id Partido")
                {
                    ApplicationArea = All;
                }
                field("Tipo Entrada"; Rec."Tipo Entrada")
                {
                    ApplicationArea = All;
                }
                field(Precio; Rec.Precio)
                {
                    ApplicationArea = All;
                }
                field(Moneda; Rec.Moneda)
                {
                    ApplicationArea = All;
                }
                field(Cliente; Rec.Cliente)
                {
                    ApplicationArea = All;
                }
                field("Fecha Compra"; Rec."Fecha Compra")
                {
                    ApplicationArea = All;
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
        v: Record Partido;
    begin
        v.Get(Rec."Id Partido");
        if v.Resultado = '5-5' then begin

            Rec.Precio := Rec.Precio * 1.1;
        end
    end;
}