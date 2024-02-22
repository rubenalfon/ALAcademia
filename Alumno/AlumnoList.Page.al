page 50100 "Alumnos"
{
    Caption = 'Students', comment = 'ESP="Alumnos"';
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
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Sexo; Rec.Sexo)
                {
                    Caption = 'Sex', comment = 'ESP="Sexo"';
                    ApplicationArea = All;
                }
                field(Telefono; Rec.Telefono)
                {
                    Caption = 'Phone No.', comment = 'ESP="Nº Teléfono"';
                    ApplicationArea = All;
                }
                field("Sum. Tarifas"; Rec."Sum. Tarifas")
                {
                    Caption = 'Total Fees', comment = 'ESP="Sum. Tarifas"';
                    ApplicationArea = All;
                }
            }
        }
    }
}