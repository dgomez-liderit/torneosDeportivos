table 50107 RoomReservation
{
    Caption = 'Reserva de habitaciones';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Reserva"; Integer)
        {
            Caption = 'Id Reserva';
            DataClassification = ToBeClassified;

            ToolTip = 'Id de reserva asociada a una habitacion';
        }
        field(2; "Sala asociada"; Integer)
        {
            Caption = 'Sala asociada';
            DataClassification = ToBeClassified;
            TableRelation = MeetingRoom;
        }
        field(3; "Fecha inicio"; Date)
        {
            Caption = 'Fecha Inicio';
            DataClassification = ToBeClassified;
            ToolTip = 'Fecha de inicio de la reserva';

        }
        field(4; "Fecha fin"; Date)
        {
            Caption = 'Fecha Fin';
            DataClassification = ToBeClassified;
            ToolTip = 'Fecha de fin de la reserva';
        }
        field(5; "Personsa que reserva"; Code[20])
        {
            Caption = 'Persona que reserva';
            DataClassification = ToBeClassified;

        }
        field(6; Asunto; Text[100])
        {
            Caption = 'Asunto';
            DataClassification = ToBeClassified;
            ToolTip = 'Asunto de la reserva';
        }

    }

    keys
    {
        key(PK; "Id Reserva")
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

    procedure calcularId(v: Record RoomReservation): Integer
    begin

        v.SetRange("Personsa que reserva", 'ADMIN');
        exit(v.Count() + 1);
    end;
}