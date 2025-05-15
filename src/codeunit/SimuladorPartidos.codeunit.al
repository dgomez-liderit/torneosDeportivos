codeunit 50100 "Simulador Partidos"
{
    procedure SimuladorPartidos(partido: Record Partido)
    var
        eventos: Record EventoSPartidos;
        i: Integer;
        golesLocal: Integer;
        golesVisitante: Integer;

    begin

        for i := 1 to 23
do begin
            eventos.Init();

            eventos."Id Partido" := partido."Id Partido";
            eventos."Id Evento" := eventos.calcularIdEvento();
            eventos.Minuto := Random(90);
            eventos."Tipo Evento" := GetRandomEventType();
            eventos.Insert();

        end;
        golesLocal := Random(9);
        golesVisitante := Random(9);
        partido.Resultado := Format(golesLocal) + '-' + Format(golesVisitante);
        eventos.SetRange("Id Partido", partido."Id Partido");
        eventos.SetRange("Tipo Evento", eventos."Tipo Evento"::"Tarjeta Roja");
        if (eventos.Count >= 3) then
            Message('El partido ha sido suspendido por que ha habido %1 tarjetas rojas', eventos.Count());
        partido.Estado := partido.Estado::Suspendido;


        if (eventos.Count < 3) then begin
            partido.Estado := partido.Estado::Finalizado;
        end;

        partido.Modify();
    end;

    procedure GetRandomEventType(): Enum "Tipos Eventos"
    var
        evento: Enum "Tipos Eventos";
        rndm: Integer;
    begin
        rndm := Random(5);
        if (rndm = 1) then begin
            exit(evento::Cambio);
        end;
        if (rndm = 2) then begin
            exit(evento::Falta);
        end;
        if (rndm = 3) then begin
            exit(evento::Gol);
        end;
        if (rndm = 4) then begin
            exit(evento::"Tarjeta Roja");
        end;
        if (rndm = 5) then begin
            exit(evento::"Tarjeta Amarilla");
        end;

    end;
}