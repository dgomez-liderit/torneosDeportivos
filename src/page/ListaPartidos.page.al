page 50102 "Partidos"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Partido;
    CardPageId = "Ficha del partido";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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