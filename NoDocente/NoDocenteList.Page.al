page 50108 "No Docentes"
{
    Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = "No Docente";
    CardPageID = "Ficha No Docente";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id No Docente"; Rec."Id No Docente")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Telefono; Rec.Telefono)
                {
                    Caption = 'Phone No.', comment = 'ESP="Nº Teléfono"';
                    ApplicationArea = All;
                }
                field(Puesto; Rec.Puesto)
                {
                    Caption = 'Position', comment = 'ESP="Puesto"';
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                }

            }
        }
    }
}