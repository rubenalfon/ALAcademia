page 50105 "Cursos"
{
    Caption = 'Cursos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = Curso;
    CardPageId = "Carta Curso";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Curso"; Rec."Id Curso")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Descripcion; Rec.Descripcion)
                {
                    ApplicationArea = All;
                    Caption = 'Descripción';
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    ApplicationArea = All;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    ApplicationArea = All;
                }
                field(Profesor; Rec."Id Profesor")
                {
                    ApplicationArea = All;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}