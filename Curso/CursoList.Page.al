page 50105 "Cursos"
{
    Caption = 'Courses', comment = 'ESP="Cursos"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = Curso;
    CardPageId = "Ficha Curso";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
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
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    ApplicationArea = All;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'lab fee', comment = 'ESP="Tarifa laboratorio"';
                    ApplicationArea = All;
                }
                field(Profesor; Rec."Id Profesor")
                {
                    Caption = 'Teacher no.', comment = 'ESP="Nº profesor"';
                    ApplicationArea = All;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    Caption = 'Department no.', comment = 'ESP="Nº departamento"';
                    ApplicationArea = All;
                }
            }
        }
    }
}