table 50104 Curso
{
    DrillDownPageId = Cursos;
    LookupPageId = "Cursos";
    DataCaptionFields = "Id Curso", Nombre;

    fields
    {
        field(1; "Id Curso"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
        }
        field(3; Descripcion; Text[100])
        {
            NotBlank = true;
        }
        field(4; "Horas Totales"; Integer)
        {
            NotBlank = true;
        }
        field(5; "Tarifa Laboratorio"; Decimal)
        {
        }
        field(6; "Id Profesor"; Code[10])
        {
            TableRelation = Profesor;
        }
        field(7; "Id Horario"; Code[10])
        {
            TableRelation = Horario;
        }
        field(8; "Id Dept. Profesor"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = LOOKUP(Profesor."Id Departamento"
            WHERE("Id Profesor" = FIELD("Id Profesor")));
        }
        field(9; "Num Alumnos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Matricula WHERE("Curso Referencia" = FIELD("Id Curso")));
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
        fieldgroup(DropDown; "Id Curso", Nombre, Descripcion, "Horas Totales")
        {
            Caption = 'Courses', comment = 'ESP="Cursos"';
        }
    }

}
