table 50100 Alumno
{
    DataClassification = ToBeClassified;
    Caption = 'Alumno';
    LookupPageId = Alumnos;

    fields
    {
        field(1; "Id Alumno"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Nombre; Text[100]) { NotBlank = true; }
        field(3; Sexo; Option)
        {
            OptionMembers = Masculino,Femenino,Otro,"S/N";
            NotBlank = true;
        }
        field(4; Telefono; BigInteger)
        {
            Caption = 'Teléfono';
            NotBlank = true;
        }
        field(5; "Fecha Nacimiento"; Date)
        {
            Caption = 'Fecha Nacimiento';
            NotBlank = true;
        }
        field(6; Direccion; Text[100]) { Caption = 'Dirección'; }
        field(7; "Cod. Pais"; Code[10])
        {
            Caption = 'Cód. país/región';
            TableRelation = "Country/Region";
        }
        field(8; "Poblacion"; Text[100])
        {
            Caption = 'Población';
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            // "Cod. Pais" no es vacío
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(9; "Region"; Text[100])
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
    }
    keys
    {
        key(pk; "Id Alumno")
        {
            Clustered = true;
        }
    }
}