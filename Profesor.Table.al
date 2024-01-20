table 50107 "Profesor"
{
    Caption = 'Profesor';
    DataClassification = ToBeClassified;
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
        field(5; Telefono; BigInteger)
        {
            Caption = 'Teléfono';
        }
        field(6; Direccion; Text[100])
        {
            Caption = 'Dirección';
        }
        field(7; "Cod. Pais"; Code[10])
        {
            Caption = 'Cód. país/región';
            TableRelation = "Country/Region";
        }
        field(8; Poblacion; Text[100])
        {
            Caption = 'Población';
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            // "Cod. Pais" no es vacío
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(9; Region; Text[100])
        {
            Caption = 'Región/Comunidad Autónoma';
        }
        field(10; "Codigo postal"; Code[10])
        {
            Caption = 'Código postal';
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code"
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code"
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(11; "Num. Ayudantes"; Integer)
        {
            Caption = 'Num. Ayudantes';
            FieldClass = FlowField;
            CalcFormula = COUNT("No Docente" WHERE("Id Profesor" = FILTER(<> ''), "Id Profesor" = FIELD("Id Profesor")));
        }
        field(12; "Num. Cursos"; Integer)
        {
            Caption = 'Num. Cursos';
            FieldClass = FlowField;
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