page 50107 "Ficha Sala"
{
    Caption = 'Ficha Sala';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MeetingRoom;

    layout
    {
        area(Content)
        {
            group("Detalles de la sala")
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
            action("Reservar 1 noche")
            {
                ApplicationArea = All;
                Caption = 'Reservar por 1 noche';
                Image = AddToHome;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    v: Codeunit "Controlador Reservas";
                begin
                    v.calcularReserva(Rec, '<1D>');
                end;
            }
            action("Reservar 1 semana")
            {
                ApplicationArea = All;
                Caption = 'Reservar por 1 semana';
                Image = AddToHome;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    v: Codeunit "Controlador Reservas";
                begin
                    v.calcularReserva(Rec, '<1W>');
                end;

            }
            action("Reservar 1 mes")
            {
                ApplicationArea = All;
                Caption = 'Reservar por 1 mes';
                Image = AddToHome;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    v: Codeunit "Controlador Reservas";
                begin
                    v.calcularReserva(Rec, '<1M>');
                end;
            }
        }
    }
}