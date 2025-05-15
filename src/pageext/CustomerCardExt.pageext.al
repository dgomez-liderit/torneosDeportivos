pageextension 50100 ExstCustomerCard extends "Customer Card"
{
    layout
    {
        addbefore("Address & Contact")
        {
            field(NivelRiesgo; Rec.NivelRiesgo)
            {
                Caption = 'Nivel de riesgo de saldo del cliente';
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        addfirst(processing)
        {
            action("Ver estadisticas de credito")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = ViewServiceOrder;
                trigger OnAction()
                begin

                    Message('El saldo actual es de %1,el limite de credito es de %2 y el riesgo monetario es %3', Rec."Balance (LCY)", Rec."Credit Limit (LCY)", Rec.NivelRiesgo);
                end;
            }
        }
    }

    var
        myInt: Integer;

}