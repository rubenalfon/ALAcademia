page 50116 "Horario Subform"
{
    Caption = 'Horario', comment = 'ESP="Horario"';
    PageType = ListPart;
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
                field("Id Curso Horario"; Rec."Id Curso Horario")
                {
                    Caption = 'Course No.', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
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
            }
        }
    }
}