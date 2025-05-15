tableextension 50100 ExtCustomer extends Customer
{
    fields
    {

        field(1001; NivelRiesgo; Option)
        {
            Caption = 'Nivel de riesgo';
            DataClassification = ToBeClassified;
            OptionMembers = Bajo,Medio,Alto;
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