table 50100 Torneo
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Codigo Torneo"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }

        field(2; Nombre; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Deporte; Enum Deportes)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Fecha Inicio"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Fecha fin"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "País Sede"; Enum Paises)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            begin
                if "País Sede" = "País Sede"::"España" then begin
                    Moneda := Moneda::EUR;
                    CosteBase := 1200;
                end;
                if "País Sede" = "País Sede"::UK then begin
                    Moneda := Moneda::GBP;
                    CosteBase := 1400;
                end;
                if "País Sede" = "País Sede"::USA then begin
                    Moneda := Moneda::USD;
                    CosteBase := 800;
                end;
                if "País Sede" = "País Sede"::Japon then begin
                    Moneda := Moneda::JPY;
                    CosteBase := 16000;
                end;
            end;
        }
        field(7; Moneda; Enum Monedas)
        {
            DataClassification = ToBeClassified;
        }
        field(8; CosteTorneo; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; CosteBase; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Codigo Torneo")
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