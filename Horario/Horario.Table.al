table 50103 Horario
{
    DrillDownPageId = Horarios;
    LookupPageId = Horarios;
    DataCaptionFields = "Id Horario", Nombre;

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

    fieldgroups
    {
        fieldgroup(DropDown; "Id Horario", Nombre)
        {
            Caption = 'Schedules', comment = 'ESP="Horarios"';
        }
    }
}