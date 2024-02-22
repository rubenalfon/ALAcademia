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
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'Lab. Fee', comment = 'ESP="Tarifa Lab."';
                    ApplicationArea = All;
                }
                field(Profesor; Rec."Id Profesor")
                {
                    Caption = 'Teacher No.', comment = 'ESP="Nº Profesor"';
                    ApplicationArea = All;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    Caption = 'Department No.', comment = 'ESP="Nº Departamento"';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Cursos Hoy")
            {
                Caption = 'Today''s Course List', comment = 'ESP="Lista de Cursos de Hoy"';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    CursosPorDiaSemana();
                end;
            }
        }
    }
    procedure CursosPorDiaSemana()
    var
        DiaSemana: Integer;
        LineaHorario: Record "Linea Horario";
        LabelMensaje: Label 'Today no course is being taught.', Comment = 'ESP="Hoy no se imparte ningún curso"';
    begin
        DiaSemana := Date2DWY(Today(), 1);
        LineaHorario.SetFilter(Dia, '=%1', DiaSemana);
        if (LineaHorario.FindFirst()) then
            PAGE.RunModal(PAGE::"Lineas Horario Hoy", LineaHorario)
        else
            Message(LabelMensaje);
    end;
}