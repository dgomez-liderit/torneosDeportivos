pageextension 50101 ExtItemCard extends "Item Card"
{
    layout
    {
        addafter(Blocked)
        {
            field("Motivo de bloqueo"; Rec."Motivo de bloqueo")
            {
                ApplicationArea = All;
                ToolTip = 'Informe de por que esta bloqueado el item ';
                Editable = Rec.Blocked;
            }
        }
    }


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}