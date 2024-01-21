page 50101 Alumno
{
    Caption = 'Carta Alumno';
    PageType = Card;
    SourceTable = Alumno;
    RefreshOnActivate = true;


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Id Alumno"; Rec."Id Alumno") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Sexo; Rec.Sexo) { ApplicationArea = All; }
                field(Telefono; Rec.Telefono) { ApplicationArea = All; }
                field("Fecha Nacimiento"; Rec."Fecha Nacimiento") { ApplicationArea = All; }
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
}