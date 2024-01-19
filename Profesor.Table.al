table 50107 "Profesor"
{
    Caption = 'Profesor';
    DataClassification = ToBeClassified;
    DrillDownPageId = Profesores;

    fields
    {
        field(1; "Id Profesor"; Code[10]) { NotBlank = true; }
        field(2; Nombre; Text[100]) { NotBlank = true; }
        field(3; Salario; Decimal) { NotBlank = true; }
        field(4; "Fecha Contratacion"; Date) { NotBlank = true; }
        field(5; Telefono; BigInteger) { Caption = 'Teléfono'; }
        field(6; Direccion; Text[100]) { Caption = 'Dirección'; }
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
        field(11; "Ayudante Profesor"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No Docente";
        }
    }

    keys
    {
        key(pk; "Id Profesor")
        {
            Clustered = true;
        }
    }

}