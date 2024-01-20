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
        field(2; "Dia"; Text[100])
        {
            Caption = 'Día';
            NotBlank = true;
        }
        field(3; "Hora Inicio"; Time)
        {
            Caption = 'Hora Inicio';
            NotBlank = true;
        }
        field(4; "Hora Fin"; Time)
        {
            Caption = 'Hora Fin';
            NotBlank = true;
        }
        field(5; "Id Horario"; Code[10])
        {
            Caption = 'Id Horario';
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