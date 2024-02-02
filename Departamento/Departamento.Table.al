table 50105 Departamento
{
    DrillDownPageId = Departamentos;
    LookupPageId = Departamentos;
    DataCaptionFields = "Id Departamento", Nombre;

    fields
    {
        field(1; "Id Departamento"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
        }
        field(3; Despacho; Text[100])
        {
            NotBlank = true;
        }
        field(5; "Profesor Jefe"; Code[10])
        {
            TableRelation = Profesor where("Id Departamento" = field("Id Departamento"));

        }
        field(4; "Promedio Tarifas"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = AVERAGE(Curso."Tarifa Laboratorio"
            WHERE("Id Dept. Profesor" = FIELD("Id Departamento")));
        }
    }

    keys
    {
        key(pk; "Id Departamento")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Departamento", Nombre, Despacho, "Profesor Jefe")
        {
            Caption = 'Departments', comment = 'ESP="Departamentos"';
        }
    }

}