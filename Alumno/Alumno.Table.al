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
            // "Cod. Pais" no es vacío
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
        field(11; "Sum. Tarifas"; Decimal)
        {
            FieldClass = FlowField;
        }
        field(12; Campo; Decimal)
        {
            FieldClass = FlowFilter;
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

    // Funciona fino, ahora toca mirar donde webos va
    procedure CalcSumaTarifas(): Decimal
    var
        Curso: Record Curso;
        Matricula: Record Matricula;
        Total: Decimal;
    begin
        Matricula.SetFilter("Alumno Referencia", '=%1', Rec."Id Alumno");
        if Matricula.findset() then
            repeat
                Curso.SetFilter("Id Curso", '=%1', Matricula."Curso Referencia");
                if Curso.findset() then
                    repeat
                        Total += Curso."Tarifa Laboratorio"
                    until Curso.next() = 0;
            until Matricula.next() = 0;
        Message(Format(Total));
        exit(Total);
    end;
}