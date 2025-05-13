page 50104 Eventos
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EventoPartido;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id Evento"; Rec."Id Evento")
                {
                    ApplicationArea = All;
                }
                field("Id Partido"; Rec."Id Partido")
                {
                    ApplicationArea = All;
                }
                field(Minuto; Rec.Minuto)
                {
                    ApplicationArea = All;
                }
                field("Tipo Evento"; Rec."Tipo Evento")
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