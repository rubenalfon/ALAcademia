page 50120 "Administrative Activities"
{
    Caption = 'Administrative Activities', comment = 'ESP="Actividades Administrativas"';
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "Admin Cue";

    layout
    {
        area(Content)
        {
            cuegroup(Departamento)
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                //CuegroupLayout = Wide;
                field("Num Cursos Dept."; Rec."Num Cursos Dept.")
                {
                    Caption = 'No. of Courses', comment = 'ESP="Nº de Cursos"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }

                field("Num Dept Tarifa"; Rec."Num Dept Tarifa")
                {
                    Caption = 'Depts. with Fees', comment = 'ESP="Depts. con Tarifas"';
                    ApplicationArea = All;
                    DrillDownPageId = Departamentos;
                }

            }

            cuegroup(Profesor)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                field("Ayudantes Profesor"; Rec."Ayudantes Profesor")
                {
                    Caption = 'Total Helpers', comment = 'ESP="Ayudantes Totales"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docentes";

                }
            }

            cuegroup(Alumno)
            {
                Caption = 'Students', comment = 'ESP="Alumnos"';
                field("Num Alumnos"; Rec."Num Alumnos")
                {
                    Caption = 'Total Students', comment = 'ESP="Alumnos Totales"';
                    ApplicationArea = All;
                    DrillDownPageId = Alumnos;
                }
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

    trigger OnOpenPage()
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end;
    end;
}