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

                    CaptionML = ESP = 'Codigo', ENU = 'Match ID', FRA = 'Identifiant';
                    ApplicationArea = All;
                }
                field("Codigo Torneo"; Rec."Codigo Torneo")
                {
                    CaptionML = ESP = 'Torneo', ENU = 'Tourney', FRA = 'Tourneau';
                    ApplicationArea = All;
                }
                field("Equipo Local"; Rec."Equipo Local")
                {
                    CaptionML = ESP = 'Equipo Local', ENU = 'Local Team', FRA = 'Equipeur Local';
                    ApplicationArea = All;
                }
                field("Equipo Visitante"; Rec."Equipo Visitante")
                {
                    CaptionML = ESP = 'Equipo Visitante', ENU = 'Visitant Team', FRA = 'Equipe Visitant';
                    ApplicationArea = All;
                }
                field("Fecha/Hora"; Rec."Fecha/Hora")
                {
                    CaptionML = ESP = 'Dia', ENU = 'Day', FRA = 'Journe';
                    ApplicationArea = All;
                }
                field(Estadio; Rec.Estadio)
                {
                    CaptionML = ESP = 'Estadio', ENU = 'Stadium', FRA = 'Stade';
                    ApplicationArea = All;
                }
                field(Resultado; Rec.Resultado)
                {
                    CaptionML = ESP = 'Resultado', ENU = 'Result', FRA = 'Résultat';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Estado; Rec.Estado)
                {
                    CaptionML = ESP = 'Estado', ENU = 'State', FRA = 'Etat';
                    ApplicationArea = All;
                    // Editable = false;
                }
            }
            group("Eventos Partido")
            {

                CaptionML = ESP = 'Eventos Partido', ENU = 'Match Events', FRA = 'Events du match';
                part(Eventos; Eventos)
                {
                    ApplicationArea = All;
                    CaptionML = ESP = 'Eventos Partido', ENU = 'Match Events', FRA = 'Events du match';
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
            action("Simular Partido")
            {
                ApplicationArea = All;
                CaptionML = ESP = 'Simular Partido', ENU = 'Play Match', FRA = 'Jouer partit';
                Promoted = true;
                PromotedCategory = Process;
                Image = CopyFromBOM;

                trigger OnAction()
                var
                    simuladorPartidos: Codeunit "Simulador Partidos";
                begin
                    if (Rec.Estado = Rec.Estado::Finalizado) then Error('El partido ya ha sido simulado, han quedado %1', Rec.Resultado);
                    simuladorPartidos.SimuladorPartidos(Rec);
                    CurrPage.Update();
                end;
            }
        }
    }
}