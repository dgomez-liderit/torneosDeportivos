report 50100 "Informe dee Torneo"
{

    ApplicationArea = All;
    Caption = 'Informe del torneo';
    DefaultLayout = RDLC;
    RDLCLayout = 'InformeTorneos.rdl';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Torneo; Torneo)
        {
            column(Codigo_Torneo; "Codigo Torneo") { }
            column(NombreTorneo; Nombre) { }
            column(Deporte; Deporte) { }
            column("País_Sede"; "País Sede") { }
            column(CosteTorneo; CosteTorneo) { }

            dataitem(Partido; Partido)
            {
                DataItemLink = "Codigo Torneo" = field("Codigo Torneo");
                column(PerteneceTorneo; "Codigo Torneo") { }
                column(Equipo_Local; "Equipo Local") { }
                column(Equipo_Visitante; "Equipo Visitante") { }
                column(Resultado; Resultado) { }
                column(Estado; Estado) { }
            }
            trigger OnPreDataItem()
            begin
                if numTorneo <> '0' then
                    SetRange("Codigo Torneo", numTorneo);
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
                group("Filtros del Informe")
                {
                    field(NumTorneo; numTorneo)
                    {
                        ApplicationArea = All;
                        Caption = 'Filtro por N torneo';
                        TableRelation = Torneo."Codigo Torneo";
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
        numTorneo: Integer;
}