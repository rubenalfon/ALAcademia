page 50106 "Carta No Docente"
{
    Caption = 'Carta No Docente';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "No Docente";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Id No Docente"; Rec."Id No Docente")
                {
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Telefono; Rec.Telefono)
                {
                    ApplicationArea = All;
                }
                field(Puesto; Rec.Puesto)
                {
                    ApplicationArea = All;
                }
                field(Salario; Rec.Salario)
                {
                    ApplicationArea = All;
                }
                field("Id Profesor"; Rec."Id Profesor")
                {
                    Caption = 'Profesor';
                    ApplicationArea = All;
                }
            }
            group(GroupDireccion)
            {
                Caption = 'Dirección';
                field(Direccion; Rec.Direccion)
                {
                    Caption = 'Dirección';
                    ApplicationArea = All;
                }
                field("Cod. Pais"; Rec."Cod. Pais")
                {
                    ApplicationArea = All;
                }
                field(Poblacion; Rec.Poblacion)
                {
                    ApplicationArea = All;
                }
                field(Region; Rec.Region)
                {
                    ApplicationArea = All;
                }
                field("Codigo postal"; Rec."Codigo postal")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}