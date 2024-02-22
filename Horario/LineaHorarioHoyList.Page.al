page 50122 "Lineas Horario Hoy"
{
    Caption = 'Schedule Lines Today', comment = 'ESP="Líneas Horario Hoy"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Linea Horario";
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;

                field("Nombre Curso"; Rec."Nombre Curso")
                {
                    Caption = 'Course Name', comment = 'ESP="Nombre Curso"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Hora Inicio"; Rec."Hora Inicio")
                {
                    Caption = 'Start Hour', comment = 'ESP="Hora Inicio"';
                    ApplicationArea = All;
                }
                field("Hora Fin"; Rec."Hora Fin")
                {
                    Caption = 'Fin. Hour', comment = 'ESP="Hora Fin."';
                    ApplicationArea = All;
                }

                field("Nombre Profesor Curso"; Rec."Nombre Profesor Curso")
                {
                    Caption = 'Teacher Name', comment = 'ESP="Nombre Profesor"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }
            }
        }
    }
}