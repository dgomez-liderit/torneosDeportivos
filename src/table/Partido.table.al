table 50102 Partido
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Partido"; Integer)
        {
            DataClassification = ToBeClassified;

            Editable = false;
        }
        field(2; "Codigo Torneo"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Torneo;
        }
        field(3; "Equipo Local"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Equipo;
        }
        field(4; "Equipo Visitante"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Equipo;
        }
        field(5; "Fecha/Hora"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(6; Estadio; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Resultado; Text[5])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Estado; Enum "Estados Partido")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Id Partido")
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
    var
    begin
        "Id Partido" := Rec.Count() + 1;
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