table 50102 "Linea Horario"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Linea Horario"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Dia"; Text[100]) { NotBlank = true; }
        field(3; "Hora Inicio"; Time) { NotBlank = true; }
        field(4; "Hora Fin"; Time) { NotBlank = true; }
        field(5; "Id Horario"; Code[10])
        {
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