table 50104 "Venta Entradas"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Num Venta"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Id Partido"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Partido;
        }
        field(3; "Tipo Entrata"; Enum "Tipos Entradas")
        {
            DataClassification = ToBeClassified;
        }
        field(4; Precio; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Moneda; Enum "Monedas")
        {
            DataClassification = ToBeClassified;
        }
        field(6; Cliente; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(7; "Fecha Compra"; Date)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Num Venta")
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
        "Fecha Compra" := Today();
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