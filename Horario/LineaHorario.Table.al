table 50102 "Linea Horario"
{
    DrillDownPageId = "Lineas Horario";

    fields
    {
        field(1; "Id Linea Horario"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Id Horario"; Code[10])
        {
            TableRelation = Horario;
        }
        field(4; "Dia"; Enum "Dias Semana")
        {
            NotBlank = true;
        }
        field(5; "Hora Inicio"; Time)
        {
            InitValue = 000000T;
            NotBlank = true;
        }
        field(6; "Hora Fin"; Time)
        {
            InitValue = 000000T;
            NotBlank = true;
        }

    }

    keys
    {
        key(pk; "Id Linea Horario")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Id Linea Horario", "Id Horario")
        {
            Caption = 'Schedule Lines', comment = 'ESP="Líneas Horario"';
        }
    }
}