page 50113 "Carta Matricula"
{
    Caption = 'Tuition Card', comment = 'ESP="Ficha Matrícula"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Matricula;

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
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}