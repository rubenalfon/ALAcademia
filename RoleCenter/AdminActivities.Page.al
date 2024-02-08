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
            cuegroup(General)
            {
                CuegroupLayout = Wide;
                field("Num Cursos Horario"; Rec."Num Cursos Horario")
                {
                    Caption = 'Courses w/o Schedule', comment = 'ESP="Cursos sin Horario"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
            }
            cuegroup(Cursos)
            {

            }
            cuegroup(Departamentos)
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                //CuegroupLayout = Wide;
                field("Num. Depts"; Rec."Num. Depts")
                {
                    Caption = 'No. of Departments', comment = 'ESP="Nº de Departamentos"';
                    ApplicationArea = All;
                    DrillDownPageId = Departamentos;
                }
            }

            cuegroup(Profesores)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                field("Profesores Jefes"; Rec."Profesores Jefes")
                {
                    Caption = 'Heads of Dept.', comment = 'ESP="Jefes de Dept."';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }
            }

            cuegroup(Alumnos)
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