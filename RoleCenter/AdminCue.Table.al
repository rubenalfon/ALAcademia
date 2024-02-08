table 50108 "Admin Cue"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        // Alumnos
        field(2; "Num Alumnos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Alumno where("Id Alumno" = field("Id Alumno Filter")));
        }
        // Cursos
        field(3; "Num Cursos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id Curso" = field("Id Curso Filter"),
            "Id Dept. Profesor" = field("Id Dept. Filter")));
        }
        field(4; "Num Cursos Pagos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Tarifa Laboratorio" = filter(> 0)));
        }
        field(5; "Num Cursos Horario"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id Horario" = filter('')));
        }
        field(6; "Cursos Max Matriculas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = max(Curso."Num Alumnos");
        }
        // Departamentos
        field(7; "Num. Depts"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Departamento where("Id Departamento" = field("Id Dept. Filter")));
        }
        field(8; "Depts con Tarifas"; Integer)
        {
            AccessByPermission = TableData Departamento = R;
            FieldClass = FlowField;
            CalcFormula = count(Departamento where("Promedio Tarifas" = filter(> 0),
            "Id Departamento" = field("Id Dept. Filter")));
        }
        field(9; "Depts Max Tarifas"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = max(Departamento."Promedio Tarifas" where("Id Departamento" = field("Id Dept. Filter")));
        }
        field(10; "Depts Media Tarifas"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Departamento."Promedio Tarifas" where("Id Departamento" = field("Id Dept. Filter")));
        }
        // Matriculas
        field(11; "Num Matriculas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Matricula where("Alumno Referencia" = field("Id Alumno Filter"),
            "Curso Referencia" = field("Id Curso Filter")));
        }
        // No Docentes
        field(12; "Num No Docentes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Id No Docente" = field("Id No Docente Filter")));
        }
        field(13; "Num Ayudantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Id Profesor" = filter(> 0),
            "Id Profesor" = field("Id Profesor Filter")));
        }
        field(14; "Sum Sal No Docentes"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("No Docente".Salario);
        }
        field(15; "Media Sal No Docentes"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average("No Docente".Salario);
        }
        // Profesores
        field(16; "Num Profesores"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Profesor where("Id Departamento" = field("Id Dept. Filter")));
        }
        // Esto no se si funcionara
        field(17; "Profesores Jefes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Profesor where("Profesor Jefe" = filter(true)));
        }
        field(18; "Sum Sal Profesores"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(Profesor.Salario);
        }
        field(19; "Media Sal Profesores"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Profesor.Salario);
        }
        // Filters
        field(20; "Id Alumno Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(21; "Id Curso Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(22; "Id Dept. Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(23; "Id No Docente Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(24; "Id Profesor Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(pk; "Primary Key")
        {
            Clustered = true;
        }
    }
}