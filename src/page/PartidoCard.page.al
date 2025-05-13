page 50103 "Ficha del partido"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Partido;

    layout
    {
        area(Content)
        {
            group("Detalles del partido")
            {
                field("Id Partido"; Rec."Id Partido")
                {
                    ApplicationArea = All;
                }
                field("Codigo Torneo"; Rec."Codigo Torneo")
                {
                    ApplicationArea = All;
                }
                field("Equipo Local"; Rec."Equipo Local")
                {
                    ApplicationArea = All;
                }
                field("Equipo Visitante"; Rec."Equipo Visitante")
                {
                    ApplicationArea = All;
                }
                field("Fecha/Hora"; Rec."Fecha/Hora")
                {
                    ApplicationArea = All;
                }
                field(Estadio; Rec.Estadio)
                {
                    ApplicationArea = All;
                }
                field(Resultado; Rec.Resultado)
                {
                    ApplicationArea = All;
                }
                field(Estado; Rec.Estado)
                {
                    ApplicationArea = All;
                }
            }
            group("Eventos Partido")
            {
                part(Eventos; Eventos)
                {
                    ApplicationArea = All;
                    SubPageLink = "Id Partido" = field("Id Partido");
                }
            }
            group("Estadisticas")
            {

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