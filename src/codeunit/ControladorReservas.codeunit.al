codeunit 50102 "Controlador Reservas"
{

    procedure ControlarFechas(habitacion: Record MeetingRoom)
    var
        reserva: Record RoomReservation;
    begin
        reserva.SetRange("Sala asociada", habitacion."Codigo Sala");
        reserva.SetFilter("Fecha fin", '>=%1', Today()); // solo reservas futuras o activas
        if reserva.FindFirst() then
            Error('No se puede reservar porque ya hay una reserva activa de esta sala hasta %1.', reserva."Fecha fin");
    end;

}