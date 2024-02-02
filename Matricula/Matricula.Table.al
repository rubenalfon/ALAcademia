table 50101 "Matricula"
{
    DrillDownPageID = Matriculas;
    LookupPageId = "Matriculas";

    fields
    {
        field(1; "Id Matricula"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Fecha Matricula"; Date)
        {
            NotBlank = true;
        }
        field(3; "Hora Matricula"; Time)
        {
            NotBlank = true;
        }
        field(4; "Alumno Referencia"; Code[10])
        {
            TableRelation = Alumno;
        }
        field(5; "Curso Referencia"; Code[10])
        {
            TableRelation = Curso;
        }
    }

    keys
    {
        key(pk; "Id Matricula")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Matricula", "Curso Referencia", "Alumno Referencia")
        {
            Caption = 'Tuitions', comment = 'ESP="Matrículas"';
        }
    }

    trigger OnInsert()
    begin
        "Fecha Matricula" := Today();
        "Hora Matricula" := Time();
    end;
}


