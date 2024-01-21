table 50103 Horario
{
    Caption = 'Horario';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Horario"; Code[10])
        {
            Caption = 'Id Horario';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100])
        {
            Caption = 'Nombre';
            NotBlank = true;
        }
        field(3; "Id Curso"; Code[10])
        {
            Caption = 'Curso';
            DataClassification = ToBeClassified;
            TableRelation = Curso;
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