table 50103 Horario
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Horario"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100]) { }
    }

    keys
    {
        key(pk; "Id Horario")
        {
            Clustered = true;
        }
    }
}