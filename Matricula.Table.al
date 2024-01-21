table 50101 "Matricula"
{
    Caption = 'MatrÃ­cula';
    DrillDownPageID = Matriculas;

    fields
    {
        field(1; "Id Matricula"; Code[10])
        {
            Caption = 'Id MatrÃ­cula';
            NotBlank = true;
        }
        field(2; "Fecha Matricula"; Date)
        {
            Caption = 'Fecha Matrí­cula';
            NotBlank = true;
        }
        field(3; "Hora Matricula"; Time)
        {
            Caption = 'Hora Matrí­cula';
            NotBlank = true;
        }
        field(4; "Alumno Referencia"; Code[10])
        {
            Caption = 'Alumno Referencia';
            TableRelation = Alumno;
        }
        field(5; "Curso Referencia"; Code[10])
        {
            Caption = 'Curso Referencia';
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

    trigger OnInsert()
    begin
        "Fecha Matricula" := Today();
        "Hora Matricula" := Time();
    end;
}


