page 50104 Horarios
{
    Caption = 'Schedules', comment = 'ESP="Horarios"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Horario;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Horario"; Rec."Id Horario")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'No. Course', comment = 'ESP="Nº Curso"';
                    ApplicationArea = All;
                }
            }
        }
    }
}