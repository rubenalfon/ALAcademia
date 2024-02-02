page 50111 "Ficha Curso"
{
    Caption = 'Course Card', comment = 'ESP="Ficha Curso"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Curso;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Descripcion; Rec.Descripcion)
                {
                    Caption = 'Descripion', comment = 'ESP="Descripción"';
                    ApplicationArea = All;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total hours', comment = 'ESP="Horas totales"';
                    ApplicationArea = All;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'Lab fee', comment = 'ESP="Tarifa laboratorio"';
                    ApplicationArea = All;
                    Importance = Additional;
                }

                field("Id Horario"; Rec."Id Horario")
                {
                    Caption = 'Schedule no.', comment = 'ESP="Nº horario"';
                }
            }
            group(Profesor)
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Id Profesor"; Rec."Id Profesor")
                {
                    Caption = 'Teacher No.', comment = 'ESP="Nº Profesor"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
                    ApplicationArea = All;
                }
            }




            part("Lineas Horario Subpage"; "Lineas Horario Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Id Horario" = field("Id Horario");
            }
        }
        area(FactBoxes)
        {
            part("Curso Card Factbox"; "Curso Card Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Id Horario" = field("Id Horario");
            }
        }

    }
}