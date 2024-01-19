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
        field(2; Nombre; Text[100]) { NotBlank = true; }
        field(3; Despacho; Text[100]) { NotBlank = true; }
        field(4; Salario; Decimal) { NotBlank = true; }
        field(5; "Profesor Jefe"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Profesor;
        }
    }

    keys
    {
        key(pk; "Id Departamento")
        {
            Clustered = true;
        }
    }

}