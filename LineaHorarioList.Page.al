page 50103 "Lineas Horario"
{
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
                    Caption = 'Línea Horario';
                    ApplicationArea = All;
                }
                field("Id Horario"; Rec."Id Horario")
                {
                    ApplicationArea = All;
                    DrillDownPageId = Horarios;
                }
                field("Id Curso Horario"; Rec."Id Curso Horario")
                {
                    Caption = 'Curso';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Dia"; Rec."Dia") { ApplicationArea = All; }
                field("Hora Inicio"; Rec."Hora Inicio")
                {
                    ApplicationArea = All;
                }
                field("Hora Fin"; Rec."Hora Fin")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}