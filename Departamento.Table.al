table 50104 Departamento
{
    Caption = 'Departamento';
    DataClassification = ToBeClassified;
    DrillDownPageId = Departamentos;

    fields
    {
        field(1; "Id Departamento"; Code[10])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Nombre; Text[100]) { }
        field(4; Despacho; Text[100]) { }
        field(3; Salario; Decimal) { }
    }

    keys
    {
        key(pk; "Id Departamento")
        {
            Clustered = true;
        }
    }

}