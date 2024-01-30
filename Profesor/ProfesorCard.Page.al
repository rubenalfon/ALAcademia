page 50110 "Carta Profesor"
{
    Caption = 'Teacher Card', comment = 'ESP="Ficha Profesor"';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Profesor;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Profesor"; Rec."Id Profesor")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    Importance = Promoted;
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
            group(Laboral)
            {
                field("Id Departamento"; Rec."Id Departamento")
                {
                    Caption = 'Department No.', comment = 'ESP="Nº Departamento"';
                    Importance = Promoted;
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
                field("Num. Ayudantes"; Rec."Num. Ayudantes")
                {
                    Caption = 'No. of Assistants', comment = 'ESP="Nº de Ayudantes"';
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Num. Cursos"; Rec."Num. Cursos")
                {
                    Caption = 'No. of Courses', comment = 'ESP="Nº de Cursos"';
                    Importance = Additional;
                    ApplicationArea = All;
                }
            }
        }

        area(FactBoxes)
        {
            part("FactBox Profesor"; "FactBox Profesor")
            {
                ApplicationArea = All;
                SubPageLink = "Id Profesor" = field("Id Profesor");
            }
        }
    }
}