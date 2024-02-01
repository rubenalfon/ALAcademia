page 50116 "Subpagina Cursos Dept."
{
    Caption = 'Offered Courses', comment = 'ESP="Cursos Ofertados"';
    PageType = ListPart;
    SourceTable = Curso;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'Course No.', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                    Width = 0;
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
                    Width = 0;
                }

                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                    Width = 0;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
        }
    }
}