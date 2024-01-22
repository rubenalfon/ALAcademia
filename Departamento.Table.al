table 50105 Departamento
{
    Caption = 'Departamento';
    DrillDownPageId = Departamentos;
    LookupPageId = Departamentos;

    fields
    {
        field(1; "Id Departamento"; Code[10])
        {
            Caption = 'Id Departamento';
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            Caption = 'Nombre';
            NotBlank = true;
        }
        field(3; Despacho; Text[100])
        {
            Caption = 'Despacho';
            NotBlank = true;
        }
        field(5; "Profesor Jefe"; Code[10])
        {
            Caption = 'Profesor Jefe';
            TableRelation = Profesor;
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
        fieldgroup(DropDown; "Id Departamento", Nombre, Despacho, "Profesor Jefe") { }
    }

}