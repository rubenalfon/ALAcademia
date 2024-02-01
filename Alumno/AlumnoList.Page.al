page 50100 "Alumnos"
{
    Caption = 'Alumnos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Alumno;
    Editable = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    CardPageId = "Ficha Alumno";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Alumno"; Rec."Id Alumno")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Sexo; Rec.Sexo)
                {
                    ApplicationArea = All;
                }
                field(Telefono; Rec.Telefono)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}