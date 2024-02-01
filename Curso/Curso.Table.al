table 50104 Curso
{
    Caption = 'Curso';
    DrillDownPageId = Cursos;
    LookupPageId = "Cursos";
    DataCaptionFields = "Id Curso", Nombre;

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
        field(7; "Id Horario"; Code[10])
        {
            Caption = 'Horario';
            TableRelation = Horario;
        }
        field(8; "Id Dept. Profesor"; Code[10])
        {
            Caption = 'Departamento';
            FieldClass = FlowField;
            CalcFormula = LOOKUP(Profesor."Id Departamento"
            WHERE("Id Profesor" = FIELD("Id Profesor")));
        }
    }

    keys
    {
        key(Key1; "Id Curso")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Curso", Nombre, Descripcion, "Horas Totales") { }
    }

}
