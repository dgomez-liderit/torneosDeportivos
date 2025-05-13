table 50103 EventoPartido
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Evento"; Integer)
        {
            DataClassification = ToBeClassified;

            Editable = false;
        }
        field(2; "Id Partido"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Partido;
        }
        field(3; Minuto; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Tipo Evento"; Enum "Tipos Eventos")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Id Evento")
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
        v: Record Partido;
    begin
        v.Get(v."Id Partido");
        "Id Partido" := v."Id Partido";
        "Id Evento" := Rec.Count() + 1;

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