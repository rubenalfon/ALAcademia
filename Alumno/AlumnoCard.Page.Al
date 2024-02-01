page 50101 "Ficha Alumno"
{
    Caption = 'Student card', comment = 'ESP="Ficha alumno"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Alumno;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Alumno"; Rec."Id Alumno")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Sexo; Rec.Sexo)
                {
                    Caption = 'Sex', comment = 'ESP="Sexo"';
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Fecha Nacimiento"; Rec."Fecha Nacimiento")
                {
                    Caption = 'Birth date', comment = 'ESP="Fecha de nacimiento"';
                    ApplicationArea = All;
                }
            }
            group(DireccionContacto)
            {
                Caption = 'Address & contact', comment = 'ESP="Dirección y contacto"';
                group(DetalleDireccion)
                {
                    Caption = 'Address', comment = 'ESP="Dirección"';
                    field(Direccion; Rec.Direccion)
                    {
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
                        Importance = Promoted;
                    }
                }
                group(DetalleContacto)
                {
                    Caption = 'Contact', comment = 'ESP="Contacto"';
                    field(Telefono; Rec.Telefono)
                    {
                        Caption = 'Phone number', comment = 'ESP="Nº teléfono"';
                        ApplicationArea = All;
                        Importance = Promoted;
                    }
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(NuevaMatricula)
            {
                Caption = 'New tuition', comment = 'ESP="Nueva matrícula"';
                ApplicationArea = All;
            }

        }
        area(Processing)
        {
            action(Mariculas)
            {
                Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                ApplicationArea = All;
                RunObject = page Matriculas;
            }
        }
    }
}