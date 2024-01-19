page 50104 "No Docentes"
{
    Caption = 'No Docentes';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "No Docente";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id No Docente"; Rec."Id No Docente") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Telefono; Rec.Telefono) { ApplicationArea = All; }
                field(Salario; Rec.Salario) { ApplicationArea = All; }
                field(Puesto; Rec.Puesto) { ApplicationArea = All; }
            }
        }
    }
}