page 50108 "Reservas"
{
    Caption = 'Reservas';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RoomReservation;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Id Reserva"; Rec."Id Reserva")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Sala asociada"; Rec."Sala asociada")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Fecha inicio"; Rec."Fecha inicio")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Fecha fin"; Rec."Fecha fin")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Personsa que reserva"; Rec."Personsa que reserva")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Asunto; Rec.Asunto)
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