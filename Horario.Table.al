table 50103 Horario
{
    Caption = 'Horario';
    DataClassification = ToBeClassified;
    DrillDownPageId = Horarios;

    fields
    {
        field(1; "Id Horario"; Code[10])
        {
            Caption = 'Id Horario';
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100])
        {
            Caption = 'Nombre';
            NotBlank = true;
        }
    }

    keys
    {
        key(pk; "Id Horario")
        {
            Clustered = true;
        }
    }
}