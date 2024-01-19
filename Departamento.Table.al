table 50104 Departamento
{
    Caption = 'Departamento';
    DataClassification = ToBeClassified;
    DrillDownPageId = Departamentos;

    // Crear card?
    fields
    {
        field(1; "Id Departamento"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Nombre; Text[100]) { }
        field(3; Despacho; Text[100]) { }
        field(4; Salario; Decimal) { }
        // No se si hay que meterlo con FK
        field(5; "Profesor Jefe"; Code[10]) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(pk; "Id Departamento")
        {
            Clustered = true;
        }
    }

}