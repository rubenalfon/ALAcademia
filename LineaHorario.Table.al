table 50102 "Linea Horario"
{
    Caption = 'Línea Horario';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Linea Horario"; Code[10])
        {
            Caption = 'Id Línea Horario';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Id Curso Horario"; Code[10])
        {
            Caption = 'Curso';
            FieldClass = FlowField;
            CalcFormula = LOOKUP(Horario."Id Curso" WHERE("Id Horario" = FIELD("Id Horario")));
        }
        field(3; "Dia"; Enum "Dias Semana")
        {
            Caption = 'Día';
            NotBlank = true;
        }
        field(4; "Hora Inicio"; Time)
        {
            Caption = 'Hora Inicio';
            NotBlank = true;
        }
        field(5; "Hora Fin"; Time)
        {
            Caption = 'Hora Fin';
            NotBlank = true;
        }
        field(6; "Id Horario"; Code[10])
        {
            Caption = 'Horario';
            DataClassification = ToBeClassified;
            TableRelation = Horario;
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