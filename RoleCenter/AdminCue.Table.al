table 50108 "Admin Cue"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Num Cursos Dept."; Integer)
        {
            AccessByPermission = TableData Curso = R;
            FieldClass = FlowField;
            CalcFormula = count(Curso where("Id Dept. Profesor" = field("Id Dept. Filter")));
        }
        field(3; "Num Dept Tarifa"; Integer)
        {
            AccessByPermission = TableData Departamento = R;
            FieldClass = FlowField;
            CalcFormula = count(Departamento where("Promedio Tarifas" = filter(> 0)));
        }
        field(4; "Num Alumnos"; Integer)
        {
            AccessByPermission = TableData Alumno = R;
            FieldClass = FlowField;
            CalcFormula = count(Alumno);
        }
        field(5; "Prof Ayudantes"; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Id Dept. Filter"; Code[10])
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

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}