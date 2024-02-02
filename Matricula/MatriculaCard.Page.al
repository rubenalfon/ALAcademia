page 50113 "Ficha Matricula"
{
    Caption = 'Tuition Card', comment = 'ESP="Ficha Matrícula"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Matricula;
    RefreshOnActivate = true;
    PromotedActionCategories = 'Inicio, Acciones, Informes, Información, Estudiante';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Matricula"; Rec."Id Matricula")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field("Alumno Referencia"; Rec."Alumno Referencia")
                {
                    Caption = 'Student No.', comment = 'ESP="Nº Alumno"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Curso Referencia"; Rec."Curso Referencia")
                {
                    Caption = 'Course No.', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }

                field("Fecha Matricula"; Rec."Fecha Matricula")
                {
                    Caption = 'Tuition Date', comment = 'ESP="Fecha de Matrícula"';
                    ApplicationArea = All;
                }
                field("Hora Matricula"; Rec."Hora Matricula")
                {
                    Caption = 'Tuition Hour', comment = 'ESP="Hora Matrícula"';
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(InformacionCurso)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                ApplicationArea = All;
                RunObject = page "Ficha Curso";
                Image = Certificate;
                RunPageLink = "Id Curso" = field("Curso Referencia");
                Promoted = true;
                PromotedCategory = Category4;
            }

            action(DatosEstudiante)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                ApplicationArea = All;
                RunObject = page "Ficha Alumno";
                Image = User;
                RunPageLink = "Id Alumno" = field("Alumno Referencia");
                Promoted = true;
                PromotedCategory = Category5;
            }

            action(MatriculasEstudiante)
            {
                Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                ApplicationArea = All;
                RunObject = page Matriculas;
                Image = SocialSecurityLines;
                Promoted = true;
                PromotedCategory = Category5;
            }
        }
    }
}