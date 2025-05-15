report 50102 "Informe de Reservas de Salas"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'ReservasSalas.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(MeetingRoom; MeetingRoom)
        {
            column(Codigo_Sala; "Codigo Sala") { }
            column(Nombre; Nombre) { }
            column(Ubicacion; Ubicacion) { }
            column(Capacidad; Capacidad) { }
            dataitem(RoomReservation; RoomReservation)
            {
                DataItemLink = "Sala asociada" = field("Codigo Sala");
                column(Id_Reserva; "Id Reserva") { }
                column(Sala_asociada; "Sala asociada") { }
                column(Fecha_inicio; "Fecha inicio") { }
                column(Fecha_fin; "Fecha fin") { }
                column(Personsa_que_reserva; "Personsa que reserva") { }
            }
            trigger OnPreDataItem()

            begin
                if (codSala <> 0) then begin

                    SetRange("Codigo Sala", codSala);
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
                group(Filtros)
                {
                    field("Filtro por Codigo Sala"; codSala)
                    {
                        ApplicationArea = All;
                        Caption = 'Codigo de sala';
                        TableRelation = MeetingRoom."Codigo Sala";
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
        codSala: Integer;
}