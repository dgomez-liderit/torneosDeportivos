
report 50101 EventosDelPartido
{

    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'EventosPartido.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Partido; Partido)
        {
            column(Codigo_Torneo; "Codigo Torneo") { }
            column(Equipo_Local; "Equipo Local") { }
            column(Equipo_Visitante; "Equipo Visitante") { }
            column(Estadio; Estadio) { }
            column(Resultado; Resultado) { }
            column(Estado; Estado) { }

            dataitem(EventoSPartidos; EventoSPartidos)
            {
                DataItemLink = "Id Partido" = field("Id Partido");

                column(Id_Partido; "Id Partido") { }
                column(Minuto; Minuto) { }
                column(Tipo_Evento; "Tipo Evento") { }
            }

            trigger OnPreDataItem()
            begin
                if numPartido <> 0 then begin
                    SetRange("Id Partido", numPartido);
                end;
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group("Buscar partido")
                {

                    field(numPartido; numPartido)
                    {
                        ApplicationArea = All;
                        TableRelation = Partido."Id Partido";
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }



    var
        numPartido: Integer;

}
