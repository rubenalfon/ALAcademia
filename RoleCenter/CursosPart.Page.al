page 50120 "Cursos part"
{
    Caption = 'Courses', comment = 'ESP="Cursos"';
    PageType = ListPart;
    SourceTable = Curso;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'Course No.', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field("Num Alumnos"; Rec."Num Alumnos")
                {
                    Caption = 'Student Number', comment = 'ESP="Num. Alumnos"';
                    ApplicationArea = All;
                }
            }
        }
    }
}