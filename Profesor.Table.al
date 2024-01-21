table 50107 "Profesor"
{
    Caption = 'Profesor';
    DrillDownPageId = Profesores;

    fields
    {
        field(1; "Id Profesor"; Code[10])
        {
            Caption = 'Id Profesor';
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            Caption = 'Nombre';
            NotBlank = true;
        }
        field(3; Salario; Decimal)
        {
            Caption = 'Salario';
            NotBlank = true;
        }
        field(4; "Fecha Contratacion"; Date)
        {
            Caption = 'Fecha Contratación';
            NotBlank = true;
        }
        field(5; "Id Departamento"; Code[10])
        {
            Caption = 'Departamento';
            TableRelation = Departamento;
        }
        field(6; Telefono; BigInteger)
        {
            Caption = 'Teléfono';
        }
        field(7; Direccion; Text[100])
        {
            Caption = 'Dirección';
        }
        field(8; "Cod. Pais"; Code[10])
        {
            Caption = 'Cód. país/región';
            TableRelation = "Country/Region";
        }
        field(9; Poblacion; Text[100])
        {
            Caption = 'Población';
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            // "Cod. Pais" no es vacío
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(10; Region; Text[100])
        {
            Caption = 'Región/Comunidad Autónoma';
        }
        field(11; "Codigo postal"; Code[10])
        {
            Caption = 'Código postal';
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code"
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code"
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        // Filtrar el numero de cursos que imparte cada profesor por día de la semana
        field(12; "Num. Cursos"; Integer)
        {
            Caption = 'Num. Cursos';
            FieldClass = FlowField;
            CalcFormula = COUNT(Curso WHERE("Id Profesor" = FILTER(<> ''),
            "Id Profesor" = FIELD("Id Profesor")));
            //"Linea Horario" WHERE("Dias Semana" = FIELD("Dias Semana")));
        }
        field(13; "Num. Ayudantes"; Integer)
        {
            Caption = 'Num. Ayudantes';
            FieldClass = FlowField;
            CalcFormula = COUNT("No Docente" WHERE("Id Profesor" = FILTER(<> ''),
            "Id Profesor" = FIELD("Id Profesor")));
        }
        field(14; "Dias Semana"; Enum "Dias Semana")
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
        fieldgroup(DropDown; "Id Profesor", Nombre, Poblacion, "Codigo postal") { Caption = 'Profesor'; }
    }

}