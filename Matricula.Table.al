table 50101 "Matricula"
{
    Caption = 'Matrícula';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Id Matricula"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Id Matrícula';
        }
        field(2; "Fecha Matricula"; Date)
        {
            Caption = 'Fecha Matrícula';
        }
        field(3; "Hora Matricula"; Time)
        {
            Caption = 'Hora Matrícula';
        }
        field(4; "Alumno Referencia"; Code[10])
        {
            Caption = 'Alumno Referencia';
            TableRelation = Alumno;
        }
        field(5; "Curso Referencia"; Code[10])
        {
            Caption = 'Curso Referencia';
            //TableRelation = Curso; TODO
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