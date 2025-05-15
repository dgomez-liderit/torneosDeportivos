page 50106 Salas
{
    ApplicationArea = All;
    Caption = 'Salas';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = MeetingRoom;
    CardPageId = "Ficha sala";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Codigo Sala"; Rec."Codigo Sala")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Ubicacion; Rec.Ubicacion)
                {
                    ApplicationArea = All;
                }
                field(Capacidad; Rec.Capacidad)
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
}