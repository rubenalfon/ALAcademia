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
                    ShowMandatory = true;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                    ShowMandatory = true;
                }
                field(Descripcion; Rec.Descripcion)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'Lab Fee', comment = 'ESP="Tarifa laboratorio"';
                    ApplicationArea = All;
                    Importance = Additional;
                }

                field("Id Horario"; Rec."Id Horario")
                {
                    Caption = 'Schedule No.', comment = 'ESP="Nº horario"';
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
                    Caption = 'Teacher Dept. No.', comment = 'ESP="Nº Dept. Profesor"';
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
            systempart(Notas; Notes)
            {
                Caption = 'Notes', comment = 'ESP="Notas"';
                ApplicationArea = Notes;
            }
        }

    }
}