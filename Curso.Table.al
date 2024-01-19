table 50104 Curso
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Curso"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100]) { NotBlank = true; }
        field(3; Descripcion; Text[100]) { NotBlank = true; }
        field(4; "Horas Totales"; Integer) { NotBlank = true; }
        field(5; "Tarifa Laboratorio"; Decimal) { NotBlank = true; }
    }

    keys
    {
        key(Key1; "Id Curso")
        {
            Clustered = true;
        }
    }
}