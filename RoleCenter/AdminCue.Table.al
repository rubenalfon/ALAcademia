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
        field(4; "Curso Max Tarifa"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = max(Curso."Tarifa Laboratorio" where("Id Curso" = field("Id Curso Filter"),
            "Tarifa Laboratorio" = filter(> 0)));
        }
        field(5; "Curso Media Tarifas"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Curso."Tarifa Laboratorio" where("Id Curso" = field("Id Curso Filter"),
            "Tarifa Laboratorio" = filter(> 0)));
        }
        field(6; "Num Cursos Horario"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id Horario" = const('')));
        }
        field(7; "Cursos Matriculas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Num Alumnos" = const(0)));
        }
        // Departamentos
        field(8; "Num Depts"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Departamento where("Id Departamento" = field("Id Dept. Filter")));
        }
        field(9; "Depts con Tarifas"; Integer)
        {
            AccessByPermission = TableData Departamento = R;
            FieldClass = FlowField;
            CalcFormula = count(Departamento where("Promedio Tarifas" = filter(> 0),
            "Id Departamento" = field("Id Dept. Filter")));
        }
        // Matriculas
        field(10; "Num Matriculas"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Matricula where("Alumno Referencia" = field("Id Alumno Filter"),
            "Curso Referencia" = field("Id Curso Filter")));
        }
        // No Docentes
        field(11; "Num No Docentes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Id No Docente" = field("Id No Docente Filter")));
        }
        field(12; "Num Ayudantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("No Docente" where("Id Profesor" = filter(> 0),
            "Id Profesor" = field("Id Profesor Filter")));
        }
        field(13; "Sum Sal No Docentes"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("No Docente".Salario);
        }
        field(14; "Media Sal No Docentes"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average("No Docente".Salario);
        }
        // Profesores
        field(15; "Num Profesores"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Profesor where("Id Departamento" = field("Id Dept. Filter")));
        }
        // Esto no se si funcionara
        field(16; "Profesores Jefes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Profesor where("Profesor Jefe" = filter(true)));
        }
        field(17; "Sum Sal Profesores"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum(Profesor.Salario);
        }
        field(18; "Media Sal Profesores"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(Profesor.Salario);
        }
        // Filters
        field(19; "Id Alumno Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(20; "Id Curso Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(21; "Id Dept. Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(22; "Id No Docente Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(23; "Id Profesor Filter"; Code[10])
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