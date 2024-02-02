page 50101 "Ficha Alumno"
{
    Caption = 'Student Card', comment = 'ESP="Ficha alumno"';
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
                Caption = 'Address & Contact', comment = 'ESP="Dirección y Contacto"';
                group(DetalleDireccion)
                {
                    Caption = 'Address', comment = 'ESP="Dirección"';

                    field(Direccion; Rec.Direccion)
                    {
                        Caption = 'Address', comment = 'ESP="Dirección"';
                        ApplicationArea = All;
                    }
                    field("Cod. Pais"; Rec."Cod. Pais")
                    {
                        Caption = 'Country Code', comment = 'ESP="Código País"';
                        ApplicationArea = All;
                    }
                    field(Poblacion; Rec.Poblacion)
                    {
                        Caption = 'City', comment = 'ESP="Población"';
                        ApplicationArea = All;
                    }
                    field(Region; Rec.Region)
                    {
                        Caption = 'Region', comment = 'ESP="Región"';
                        ApplicationArea = All;
                    }
                    field("Codigo postal"; Rec."Codigo postal")
                    {
                        Caption = 'Postal Code', comment = 'ESP="Código Postal"';
                        Importance = Promoted;
                        ApplicationArea = All;
                    }
                }
                group(DetalleContacto)
                {
                    Caption = 'Contact', comment = 'ESP="Contacto"';
                    field(Telefono; Rec.Telefono)
                    {
                        Caption = 'Phone No.', comment = 'ESP="Nº Teléfono"';
                        Importance = Promoted;
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
    actions
    {
        area(Creation)
        {
            action(NuevaMatricula)
            {
                Caption = 'New Tuition', comment = 'ESP="Nueva Matrícula"';
                ApplicationArea = All;
                RunObject = page "Ficha Matricula";
                RunPageMode = Create;
                Promoted = true;
                PromotedCategory = Process;
                Image = AddContacts;
            }

        }
        area(Navigation)
        {
            action(Matriculas)
            {
                Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                ApplicationArea = All;
                RunObject = page Matriculas;
                RunPageLink = "Alumno Referencia" = field("Id Alumno");
                Image = ShowList;
            }
        }
    }
}