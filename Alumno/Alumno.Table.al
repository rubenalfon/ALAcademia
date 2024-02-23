table 50100 Alumno
{
    DrillDownPageId = Alumnos;
    LookupPageId = Alumnos;
    DataCaptionFields = "Id Alumno", Nombre;

    fields
    {
        field(1; "Id Alumno"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
        }
        field(3; Sexo; Enum Sexo)
        {
            NotBlank = true;
        }
        field(4; Telefono; BigInteger)
        {
            NotBlank = true;
        }
        field(5; "Fecha Nacimiento"; Date)
        {
            NotBlank = true;
        }
        field(6; Direccion; Text[100])
        {
        }
        field(7; "Cod. Pais"; Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(8; "Poblacion"; Text[100])
        {
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(9; "Region"; Text[100])
        {
        }
        field(10; "Codigo postal"; Code[10])
        {
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code"
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code"
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(11; Dni; Text[9])
        {
            NotBlank = true;

            trigger OnValidate()
            var
                Dni: codeunit "Comprobar DNI";
                LabelMensaje: Label ' is not valid ', Comment = 'ESP=" no es válido "';
            begin
                if (Dni.ComprobarDNI(Rec.Dni)) then
                    FieldError(Rec.Dni, LabelMensaje);
            end;
        }
        field(12; "Sum. Tarifas"; Decimal)
        {
            Editable = false;
        }
    }
    keys
    {
        key(pk; "Id Alumno")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Alumno", Nombre, Sexo, Telefono, "Codigo postal")
        {
            Caption = 'Students', comment = 'ESP="Alumnos"';
        }
    }
}
