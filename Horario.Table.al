table 50103 Horario
{
    Caption = 'Horario';

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
        field(3; "Id Curso"; Code[10])
        {
            Caption = 'Curso';
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