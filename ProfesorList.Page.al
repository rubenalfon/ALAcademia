page 50103 Profesores
{
    Caption = 'Profesores';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Profesor;
    CardPageID = "Carta Profesor";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Profesor"; Rec."Id Profesor") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Telefono; Rec.Telefono) { ApplicationArea = All; }
                field(Salario; Rec.Salario) { ApplicationArea = All; }
                field("Fecha Contratacion"; Rec."Fecha Contratacion") { ApplicationArea = All; }
            }
        }
    }


}