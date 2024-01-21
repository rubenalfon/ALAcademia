page 50102 "Matriculas"
{
    Caption = 'Matrí­culas';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Matricula;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Matricula"; Rec."Id Matricula") { ApplicationArea = All; }
                field("Fecha Matricula"; Rec."Fecha Matricula") { ApplicationArea = All; }
                field("Hora Matricula"; Rec."Hora Matricula") { ApplicationArea = All; }
                field("Alumno Referencia"; Rec."Alumno Referencia") { ApplicationArea = All; }
                field("Curso Referencia"; Rec."Curso Referencia") { ApplicationArea = All; }
            }
        }
    }
}