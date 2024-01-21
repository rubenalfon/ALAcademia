table 50102 "Linea Horario"
{
    Caption = 'L√≠nea Horario';
    DrillDownPageId = "Lineas Horario";

    fields
    {
        field(1; "Id Linea Horario"; Code[10])
        {
            Caption = 'Id L√≠nea Horario';
            NotBlank = true;
        }
        field(2; "Id Horario"; Code[10])
        {
            Caption = 'Horario';
            TableRelation = Horario;
        }
        field(3; "Id Curso Horario"; Code[10])
        {
            Caption = 'Curso';
            FieldClass = FlowField;
            CalcFormula = LOOKUP(Horario."Id Curso"
            WHERE("Id Horario" = FIELD("Id Horario")));
        }
        field(4; "Dia"; Enum "Dias Semana")
        {
            Caption = 'DÌ≠a';
            NotBlank = true;
        }
        field(5; "Hora Inicio"; Time)
        {
            Caption = 'Hora Inicio';
            InitValue = 000000T;
            NotBlank = true;
        }
        field(6; "Hora Fin"; Time)
        {
            Caption = 'Hora Finalizaci√≥n';
            InitValue = 000000T;
            NotBlank = true;
        }

    }

    keys
    {
        key(pk; "Id Linea Horario")
        {
            Clustered = true;
        }
    }
}