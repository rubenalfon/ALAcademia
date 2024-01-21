table 50101 "Matricula"
{
    Caption = 'Matr��cula';
    DataClassification = ToBeClassified;
    DrillDownPageID = "Matriculas";

    fields
    {
        field(1; "Id Matricula"; Code[10])
        {
            Caption = 'Id Matr��cula';
            NotBlank = true;
        }
        field(2; "Fecha Matricula"; Date)
        {
            Caption = 'Fecha Matr��cula';
            NotBlank = true;
        }
        field(3; "Hora Matricula"; Time)
        {
            Caption = 'Hora Matr��cula';
            NotBlank = true;
        }
        field(4; "Alumno Referencia"; Code[10])
        {
            Caption = 'Alumno Referencia';
            DataClassification = ToBeClassified;
            TableRelation = Alumno;
        }
        field(5; "Curso Referencia"; Code[10])
        {
            Caption = 'Curso Referencia';
            DataClassification = ToBeClassified;
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
}