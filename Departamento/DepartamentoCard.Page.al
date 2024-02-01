page 50114 "Ficha Departamento"
{
    Caption = 'Department Card', comment = 'ESP="Ficha Departamento"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Departamento;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Departamento"; Rec."Id Departamento")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Nombre; Rec.Nombre)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
            }
            part("Subpagina Cursos Dept."; "Subpagina Cursos Dept.")
            {
                SubPageLink = "Id Dept. Profesor" = field("Id Departamento");
            }
            group(Communication)
            {
                Caption = 'Communication', comment = 'ESP="Comunicación"';
                field(Despacho; Rec.Despacho)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = All;
                    Importance = Promoted;
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

    actions
    {
        area(Navigation)
        {
            action(Profesores)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                ApplicationArea = All;
                Image = CustomerList;
                RunObject = page Profesores;
                RunPageLink = "Id Departamento" = field("Id Departamento");
            }

            action(Coordinador)
            {
                Caption = 'Head of Dept.', comment = 'ESP="Jefe de Dept."';
                ApplicationArea = All;
                //Promoted = true;
                //PromotedCategory = Process;
                //PromotedIsBig = true;
                Image = AbsenceCategory;
                RunObject = page "Ficha Profesor";
                RunPageLink = "Id Profesor" = field("Profesor Jefe");
            }
        }

        area(Creation)
        {
            action(NuevoCurso)
            {
                Caption = 'New Course', comment = 'ESP="Nuevo Curso"';
                ApplicationArea = All;
                RunObject = page "Ficha Curso";
                RunPageMode = Create;
                Promoted = true;
                PromotedCategory = Process;
                Image = Add;
            }
        }
    }
}