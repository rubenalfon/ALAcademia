page 50111 "Carta Curso"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Curso;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Id Curso"; Rec."Id Curso")
                {
                    Caption = 'Id Curso';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                }
                field(Descripcion; Rec.Descripcion)
                {
                    Caption = 'Descripción';
                    ApplicationArea = All;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Horas Totales';
                    ApplicationArea = All;
                }
                field("Id Profesor"; Rec."Id Profesor")
                {
                    Caption = 'Profesor';
                    ApplicationArea = All;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    Caption = 'Departamento';
                    ApplicationArea = All;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'Tarifa Laboratorio';
                    ApplicationArea = All;
                }
            }
        }
    }
}