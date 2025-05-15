codeunit 50103 SubscriptionCustomerLimit
{
    [EventSubscriber(ObjectType::Table, Database::Customer, OnAfterValidateEvent, 'Credit Limit (LCY)', false, false)]
    local procedure CheckCreditLimit(var Rec: Record Customer; xRec: Record Customer)
    begin
        if (Rec.NivelRiesgo = Rec.NivelRiesgo::Alto) and
           (Rec."Credit Limit (LCY)" > xRec."Credit Limit (LCY)") then begin
            Error('No se puede aumentar el límite de crédito cuando el nivel de riesgo es Alto.');
        end;
    end;
}
