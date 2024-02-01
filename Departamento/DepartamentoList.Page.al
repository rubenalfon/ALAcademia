page 50107 Departamentos
{
    Caption = 'Departments', comment = 'ESP="Departamentos"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = Departamento;
    CardPageId = "Ficha Departamento";

    layout
    {
        area(Content)
        {
            repeater(Departamento)
            {
                ShowCaption = false;
                field("Id Departamento"; Rec."Id Departamento")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                }
                field(Despacho; Rec.Despacho)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = All;
                }
                field("Profesor Jefe"; Rec."Profesor Jefe")
                {
                    Caption = 'Head of Dept.', comment = 'ESP="Jefe de Dept."';
                    ApplicationArea = All;
                }
                field("Promedio Tarifas"; Rec."Promedio Tarifas")
                {
                    Caption = 'Average Fee', comment = 'ESP="Tarifa Promedio"';
                    ApplicationArea = All;
                }
            }
        }
    }
}