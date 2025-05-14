table 50105 EventoSPartidos
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
        key(PK; "Id Partido", "Id Evento")
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
        "Id Evento" := calcularIdEvento();
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

    procedure calcularIdEvento(): Integer
    var
        v: Record EventoSPartidos;
        contador: Integer;
    begin
        v.SetRange("Id Partido", Rec."Id Partido");
        if v.FindLast() then
            contador := v."Id Evento"
        else
            contador := 0;


        exit(contador + 1);
    end;
}