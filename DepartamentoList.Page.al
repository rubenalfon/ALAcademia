page 50107 Departamentos
{
    Caption = 'Departamentos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departamento;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Departamento"; Rec."Id Departamento")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Despacho; Rec.Despacho)
                {
                    ApplicationArea = All;
                }
                field("Profesor Jefe"; Rec."Profesor Jefe")
                {
                    ApplicationArea = All;
                }
                field("Promedio Tarifas"; Rec."Promedio Tarifas")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}