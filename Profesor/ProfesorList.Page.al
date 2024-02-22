page 50109 Profesores
{
    Caption = 'Teachers', comment = 'ESP="Profesores"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = Profesor;
    CardPageID = "Ficha Profesor";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Profesor"; Rec."Id Profesor")
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
                field("Id Departamento"; Rec."Id Departamento")
                {
                    Caption = 'Dept. No.', comment = 'ESP="Nº Dept."';
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    Caption = 'Salary', comment = 'ESP="Salario"';
                    ApplicationArea = All;
                }
                field("Fecha Contratacion"; Rec."Fecha Contratacion")
                {
                    Caption = 'Hire Date', comment = 'ESP="Fecha Contratación"';
                    ApplicationArea = All;
                }
                field("Num. Lineas Horario"; Rec."Num. Lineas Horario")
                {
                    Caption = 'No. of Courses', comment = 'ESP="Nº de Cursos"';
                    ApplicationArea = All;
                }
                field("Total Tarifas"; Rec."Total Tarifas")
                {
                    Caption = 'Total Fees', comment = 'ESP="Total Tarifas"';
                    ApplicationArea = All;
                }
            }
        }
    }
}