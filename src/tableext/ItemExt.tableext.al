tableextension 50101 ItemExt extends Item
{
    fields
    {
        field(1000; "Motivo de bloqueo"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Motivo del bloqueo';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}