table 50104 Curso
{
    Caption = 'Curso';
    DataClassification = ToBeClassified;
    DrillDownPageId = Cursos;

    fields
    {
        field(1; "Id Curso"; Code[10])
        {
            Caption = 'Id Curso';
            NotBlank = true;
        }
        field(2; "Nombre"; Text[100])
        {
            Caption = 'Nombre';
            NotBlank = true;
        }
        field(3; Descripcion; Text[100])
        {
            Caption = 'Descripción';
            NotBlank = true;
        }
        field(4; "Horas Totales"; Integer)
        {
            Caption = 'Horas Totales';
            NotBlank = true;
        }
        field(5; "Tarifa Laboratorio"; Decimal)
        {
            Caption = 'Tarifa Laboratorio';
        }
        field(6; "Id Profesor"; Code[10])
        {
            Caption = 'Profesor';
            TableRelation = Profesor;
        }
    }

    keys
    {
        key(Key1; "Id Curso")
        {
            Clustered = true;
        }
    }
}