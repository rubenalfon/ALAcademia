page 50104 Horarios
{
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
                    Caption = 'Id Horario';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                }
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'Curso';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}