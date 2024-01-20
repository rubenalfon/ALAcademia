page 50110 "Carta Profesor"
{
    Caption = 'Carta Profesor';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Profesor;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Id Profesor"; Rec."Id Profesor") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Telefono; Rec.Telefono) { ApplicationArea = All; }
                field(Salario; Rec.Salario) { ApplicationArea = All; }
                field("Fecha Contratacion"; Rec."Fecha Contratacion") { ApplicationArea = All; }
                field("Num. Ayudantes"; Rec."Num. Ayudantes")
                {
                    ApplicationArea = All;
                }
                field("Num. Cursos"; Rec."Num. Cursos")
                {
                    ApplicationArea = All;
                }
            }
            group(GroupDireccion)
            {
                Caption = 'Dirección';
                field(Direccion; Rec.Direccion) { ApplicationArea = All; }
                field("Cod. Pais"; Rec."Cod. Pais") { ApplicationArea = All; }
                field(Poblacion; Rec.Poblacion) { ApplicationArea = All; }
                field(Region; Rec.Region) { ApplicationArea = All; }
                field("Codigo postal"; Rec."Codigo postal") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;

}