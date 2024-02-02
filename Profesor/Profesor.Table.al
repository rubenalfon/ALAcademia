table 50107 "Profesor"
{
    Caption = 'Profesor';
    DrillDownPageId = Profesores;
    LookupPageId = "Profesores";
    DataCaptionFields = "Id Profesor", Nombre;

    fields
    {
        field(1; "Id Profesor"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
        }
        field(3; Salario; Decimal)
        {
            NotBlank = true;
        }
        field(4; "Fecha Contratacion"; Date)
        {
            NotBlank = true;
        }
        field(5; "Id Departamento"; Code[10])
        {
            TableRelation = Departamento;
        }
        field(6; Telefono; BigInteger)
        {
            NotBlank = true;
        }
        field(7; Direccion; Text[100])
        {
        }
        field(8; "Cod. Pais"; Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(9; Poblacion; Text[100])
        {
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            // "Cod. Pais" no es vacío
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(10; Region; Text[100])
        { }
        field(11; "Codigo postal"; Code[10])
        {
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code"
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code"
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(12; "Num. Cursos"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = COUNT(Curso WHERE("Id Profesor" = FILTER(<> ''),
            "Id Profesor" = FIELD("Id Profesor")));
            //"Linea Horario" WHERE("Dias Semana" = FIELD("Dias Semana")));
        }
        field(13; "Num. Ayudantes"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = COUNT("No Docente" WHERE("Id Profesor" = FILTER(<> ''),
            "Id Profesor" = FIELD("Id Profesor")));
        }
        field(14; "Total Tarifas"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = SUM(Curso."Tarifa Laboratorio"
            WHERE("Id Profesor" = FIELD("Id Profesor"),
            "Tarifa Laboratorio" = FIELD("Tarifas Filter")));
        }
        field(15; "Tarifas Filter"; Decimal)
        {
            FieldClass = FlowFilter;
        }

        field(16; "Dias Semana"; Enum "Dias Semana")
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(pk; "Id Profesor")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Profesor", Nombre, "Id Departamento", Telefono, "Codigo postal")
        {
            Caption = 'Teacher', comment = 'ESP="Profesor"';
        }
    }

}