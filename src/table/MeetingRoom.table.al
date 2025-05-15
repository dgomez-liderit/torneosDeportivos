table 50106 MeetingRoom
{
    Caption = 'Meeting Room';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Codigo Sala"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Codigo Sala';
            DataClassification = ToBeClassified;
            ToolTip = 'Codigo de la sala';

        }
        field(2; Nombre; Text[50])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(3; Capacidad; Integer)
        {
            Caption = 'Capacidad';
            DataClassification = ToBeClassified;
            ToolTip = 'Indica la capacidad de la sala';
        }
        field(4; Ubicacion; Text[50])
        {
            Caption = 'Ubicacion';
            DataClassification = ToBeClassified;
        }
        field(5; Reservada; Boolean)
        {
            Caption = 'Reservada';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Codigo Sala")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}