page 50103 "Lineas Horario"
{
    Caption = 'Schedule Lines', comment = 'ESP="Líneas Horario"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Linea Horario";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Linea Horario"; Rec."Id Linea Horario")
                {
                    Caption = 'Line', comment = 'ESP="Línea"';
                    ApplicationArea = All;
                }
                field("Id Horario"; Rec."Id Horario")
                {
                    Caption = 'Schedule No.', comment = 'ESP="Nº Horario"';
                    ApplicationArea = All;
                    DrillDownPageId = Horarios;
                }
                field("Nombre Curso"; Rec."Nombre Curso")
                {
                    Caption = 'Course Name', comment = 'ESP="Nombre Curso"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                    Visible = false;
                }
                field("Dia"; Rec."Dia")
                {
                    Caption = 'Day', comment = 'ESP="Día"';
                    ApplicationArea = All;
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
                field("Id Profesor Curso"; Rec."Id Profesor Curso")
                {
                    Caption = 'Teacher No.', comment = 'ESP="Nº Profesor"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                    Visible = false;
                }
            }
        }
    }
}