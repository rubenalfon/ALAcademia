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
            trigger OnValidate()
            var
                Horario: Record Horario;
                Curso: Record Curso;
                Profesor: Record Profesor;
            begin
                Horario.Get(Rec."Id Horario");
                Curso.Get(Horario."Id Curso");
                Rec."Nombre Curso" := Curso.Nombre;
                Rec."Id Profesor Curso" := Curso."Id Profesor";
                Profesor.Get(Curso."Id Profesor");
                rec."Nombre Profesor Curso" := Profesor.Nombre;
            end;
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
        field(7; "Nombre Curso"; Text[100])
        {
            NotBlank = true;
        }
        field(8; "Id Profesor Curso"; Code[10])
        {
            TableRelation = Profesor;

            trigger OnValidate()
            var
                Profesor: Record Profesor;
            begin
                Profesor.Get(Rec."Id Profesor Curso");
                rec."Nombre Profesor Curso" := Profesor.Nombre;
            end;
        }
        field(9; "Nombre Profesor Curso"; Text[100])
        {
            TableRelation = Profesor;
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
        fieldgroup(DropDown; "Id Linea Horario", "Id Horario", Dia, "Hora Inicio", "Hora Fin")
        {
            Caption = 'Schedule Lines', comment = 'ESP="Líneas Horario"';
        }
    }
}