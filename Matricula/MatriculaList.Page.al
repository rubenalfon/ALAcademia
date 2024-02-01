page 50102 "Matriculas"
{
    Caption = 'Tuitions', comment = 'ESP="Matrículas"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = Matricula;
    CardPageId = "Ficha Matricula";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Matricula"; Rec."Id Matricula")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field("Fecha Matricula"; Rec."Fecha Matricula")
                {
                    Caption = 'Tuition Date', comment = 'ESP="Fecha Matrícula"';
                    ApplicationArea = All;
                }
                field("Hora Matricula"; Rec."Hora Matricula")
                {
                    Caption = 'Tuition Hour', comment = 'ESP="Hora Matrícula"';
                    ApplicationArea = All;
                }
                field("Alumno Referencia"; Rec."Alumno Referencia")
                {
                    Caption = 'Student No.', comment = 'ESP="Nº Alumno"';
                    ApplicationArea = All;
                }
                field("Curso Referencia"; Rec."Curso Referencia")
                {
                    Caption = 'Course No.', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                }
            }
        }
    }
}