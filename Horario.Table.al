table 50103 Horario
{
    DrillDownPageId = Horarios;

    fields
    {
        field(1; "Id Horario"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100])
        {
            NotBlank = true;
        }
        field(3; "Id Curso"; Code[10])
        {
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