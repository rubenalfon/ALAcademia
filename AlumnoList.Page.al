page 50100 "Alumnos"
{
    Caption = 'Alumnos';
    PageType = List;
    Editable = false; // Para obligar a meter datos en card
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Alumno;
    CardPageId = Alumno; // De lista a card

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Alumno"; Rec."Id Alumno") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Sexo; Rec.Sexo) { ApplicationArea = All; }
                field(Telefono; Rec.Telefono) { ApplicationArea = All; }
            }
        }
    }
}