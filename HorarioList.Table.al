page 50104 Horario
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
                field("Id Horario"; Rec."Id Horario") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
            }
        }
        area(Factboxes)
        {

        }
    }
}