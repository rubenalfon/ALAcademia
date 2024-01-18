table 50100 "Alumno"
{
    DataClassification = ToBeClassified;
    Caption = 'Alumno';

    fields
    {
        field(1; "Id Alumno"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Nombre; Text[100]) { }
        field(3; Sexo; Option)
        {
            OptionMembers = Masculino,Femenino,Otro,"S/N";
        }
        field(4; Telefono; Integer) { Caption = 'Teléfono'; }
        field(5; "Fecha Nacimiento"; Date) { }
        field(6; Direccion; Text[100]) { Caption = 'Dirección'; }
        field(7; "Cod. Pais"; Text[100])
        {
            Caption = 'Cód. país/región';
        }
        field(8; "Poblacion"; Text[100])
        {
            Caption = 'Población';
        }
        field(9; "Region"; Text[100])
        {
            Caption = 'Región';
        }
        field(10; "Codigo postal"; Code[10])
        {
            Caption = 'Código postal';
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