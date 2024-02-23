table 50106 "No Docente"
{
    DrillDownPageId = "No Docentes";
    LookupPageId = "No Docentes";
    DataCaptionFields = "Id No Docente", Nombre;

    fields
    {
        field(1; "Id No Docente"; Code[10])
        {
            NotBlank = true;
        }
        field(2; Nombre; Text[100])
        {
            NotBlank = true;
        }
        field(3; "Puesto"; Enum "Puestos No Docente")
        {
            NotBlank = true;
        }
        field(4; Salario; Decimal)
        {
            NotBlank = true;
        }
        field(5; Telefono; BigInteger)
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
        field(8; Poblacion; Text[100])
        {
            TableRelation = IF ("Cod. Pais" = CONST('')) "Post Code".City
            ELSE
            IF ("Cod. Pais" = FILTER(<> '')) "Post Code".City
                WHERE("Country/Region Code" = FIELD("Cod. Pais"));
            ValidateTableRelation = false;
        }
        field(9; Region; Text[100])
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
        field(11; "Id Profesor"; Code[10])
        {
            TableRelation = Profesor;
        }
        field(12; Dni; Text[9])
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
    }

    keys
    {
        key(pk; "Id No Docente")
        {
            Clustered = true;
        }
    }


    fieldgroups
    {
        fieldgroup(DropDown; "Id No Docente", Nombre, Poblacion, "Codigo postal")
        {
            Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
        }
    }
}