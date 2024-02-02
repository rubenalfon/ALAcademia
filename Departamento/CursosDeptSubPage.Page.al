page 50117 "Subpagina Cursos Dept."
{
    Caption = 'Dept. Courses', comment = 'ESP="Cursos Dept."';
    PageType = ListPart;
    SourceTable = Curso;

    layout
    {
        area(Content)
        {
            repeater(Group)
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
                field(Descripcion; Rec.Descripcion)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    ApplicationArea = All;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Curso)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                Image = Line;
                action(Matriculas)
                {
                    Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                    ApplicationArea = All;
                    RunObject = page Matriculas;
                    RunPageMode = Create;
                    Image = ProfileCalendar;
                }

                action(Datos)
                {
                    Caption = 'Data', comment = 'ESP="Datos"';
                    ApplicationArea = All;
                    RunObject = page "Ficha Curso";
                    RunPageLink = "Id Curso" = field("Id Curso");
                    Image = LineDescription;
                }
            }

        }
    }
}