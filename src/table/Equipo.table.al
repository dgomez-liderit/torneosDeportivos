table 50101 Equipo
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Cod Equipo"; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            AutoIncrement = true;
        }
        field(2; Nombre; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Pais; Enum Paises)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Entrenador; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;
        }
        field(5; Patrocinador; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Shipping Agent";
        }
    }

    keys
    {
        key(PK; "Cod Equipo")
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