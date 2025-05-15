codeunit 50104 SalesLineInsertControl
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", OnBeforeInsertEvent, '', false, false)]
    local procedure MyProcedure(var Rec: Record "Sales Line")
    var
        v: Record Item;
    begin
        v.Get(Rec."No.");
        if (v.Blocked) then begin
            Error('No se puede usar este objeto por que esta bloqueado : %1', v."Motivo de bloqueo");
        end;
    end;
}