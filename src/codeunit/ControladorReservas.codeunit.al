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

    procedure calcularReserva(Rec: Record MeetingRoom; expresion: Text[20])
    var
        reserva: Record "RoomReservation";
        controlador: Codeunit "Controlador Reservas";
    begin
        reserva.Init();
        reserva."Id Reserva" := reserva.calcularId(reserva);
        reserva."Sala asociada" := Rec."Codigo Sala";
        reserva."Fecha inicio" := Today();
        reserva."Fecha fin" := CalcDate(expresion, reserva."Fecha inicio");
        reserva."Personsa que reserva" := 'ADMIN';
        controlador.ControlarFechas(Rec);
        reserva.Insert();
        Rec.Reservada := true;
        Message('Reserva por 1 mes realizada correctamente');
    end;

}