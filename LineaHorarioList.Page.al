page 50103 "Lineas Horario"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Linea Horario";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Linea Horario"; Rec."Id Linea Horario") { ApplicationArea = All; }
                field("Dia"; Rec."Dia") { ApplicationArea = All; }
                field("Hora Inicio"; Rec."Hora Inicio") { ApplicationArea = All; }
                field("Hora Fin"; Rec."Hora Fin") { ApplicationArea = All; }
                field("Id Horario"; Rec."Id Horario") { ApplicationArea = All; }
            }
        }
    }
}