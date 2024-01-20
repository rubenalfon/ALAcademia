table 50101 "Matricula"
{
    Caption = 'Matrícula';
    DataClassification = ToBeClassified;
    //DrillDownPageID = "lista Matricula";

    fields
    {
        field(1; "Id Matricula"; Code[10])
        {
            Caption = 'Id Matrícula';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Fecha Matricula"; Date)
        {
            Caption = 'Fecha Matrícula';
            NotBlank = true;
        }
        field(3; "Hora Matricula"; Time)
        {
            Caption = 'Hora Matrícula';
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