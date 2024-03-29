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
                field("Profesores Jefes"; Rec."Profesores Jefes")
                {
                    Caption = 'Heads of Department', comment = 'ESP="Jefes de Departamento"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                    StyleExpr = JefesDeptStyle;
                }
                field("Num Alumnos"; Rec."Num Alumnos")
                {
                    Caption = 'Students', comment = 'ESP="Alumnos"';
                    ApplicationArea = All;
                    DrillDownPageId = Alumnos;
                }
                field("Num Matriculas"; Rec."Num Matriculas")
                {
                    Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                    ApplicationArea = All;
                    DrillDownPageId = Matriculas;
                }
                field("Num Cursos Horario"; Rec."Num Cursos Horario")
                {
                    Caption = 'Courses without Schedule', comment = 'ESP="Cursos sin Horario"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                    StyleExpr = CursosHorarioStyle;
                }
            }
            cuegroup(Cursos)
            {
                Caption = 'Courses', comment = 'ESP="Cursos"';
                field("Num Cursos"; Rec."Num Cursos")
                {
                    Caption = 'Courses', comment = 'ESP="Cursos"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Cursos Matriculas"; Rec."Cursos Matriculas")
                {
                    Caption = 'Courses without Students', comment = 'ESP="Cursos sin Alumnos"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                    StyleExpr = CursosMatriculasStyle;
                }
                field("Curso Max Tarifa"; Rec."Curso Max Tarifa")
                {
                    Caption = 'Maximum Fee', comment = 'ESP="Tarifa Máxima"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
                field("Curso Media Tarifas"; Rec."Curso Media Tarifas")
                {
                    Caption = 'Average Fee', comment = 'ESP="Media de Tarifas"';
                    ApplicationArea = All;
                    DrillDownPageId = Cursos;
                }
            }

            cuegroup(Departamentos)
            {
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                field("Num Depts"; Rec."Num Depts")
                {
                    Caption = 'Departments', comment = 'ESP="Departamentos"';
                    ApplicationArea = All;
                    DrillDownPageId = Departamentos;
                }

                field("Depts con Tarifas"; Rec."Depts con Tarifas")
                {
                    Caption = 'Departments with Fees', comment = 'ESP="Departamentos con Tarifas"';
                    ApplicationArea = All;
                    DrillDownPageId = Departamentos;
                }
            }
            cuegroup(Profesores)
            {
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                field("Num Profesores"; Rec."Num Profesores")
                {
                    Caption = 'Teachers', comment = 'ESP="Profesores"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                    StyleExpr = ProfesoresStyle;
                }
                field("Sum Sal Profesores"; Rec."Sum Sal Profesores")
                {
                    Caption = 'Total Salaries', comment = 'ESP="Total de Salarios"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }
                field("Media Sal Profesores"; Rec."Media Sal Profesores")
                {
                    Caption = 'Average Salary', comment = 'ESP="Media de Salarios"';
                    ApplicationArea = All;
                    DrillDownPageId = Profesores;
                }
            }
            cuegroup(NoDocentes)
            {
                Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                field("Num No Docentes"; Rec."Num No Docentes")
                {
                    Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docentes";
                }
                field("Num Ayudantes"; Rec."Num Ayudantes")
                {
                    Caption = 'Assistants', comment = 'ESP="Ayudantes"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docentes";
                    StyleExpr = AyudantesStyle;
                }
                field("Sum Sal No Docentes"; Rec."Sum Sal No Docentes")
                {
                    Caption = 'Total Salaries', comment = 'ESP="Total de Salarios"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docentes";
                }
                field("Media Sal No Docentes"; Rec."Media Sal No Docentes")
                {
                    Caption = 'Average Salary', comment = 'ESP="Media de Salarios"';
                    ApplicationArea = All;
                    DrillDownPageId = "No Docentes";
                }
            }
            cuegroup(Acciones)
            {
                Caption = 'Actions', comment = 'ESP="Acciones"';
                CuegroupLayout = Wide;
                actions
                {
                    action("Nuevo Alumno")
                    {
                        ApplicationArea = All;
                        Caption = 'New Student', comment = 'ESP="Nuevo Alumno"';
                        Image = TileNew;
                        RunObject = Page "Ficha Alumno";
                        RunPageMode = Create;
                    }
                    action(Profesor)
                    {
                        ApplicationArea = All;
                        Caption = 'New Teacher', comment = 'ESP="Nuevo Profesor"';
                        Image = TileNew;
                        RunObject = Page "Ficha Profesor";
                        RunPageMode = Create;
                    }
                    action("Non-Teachers")
                    {
                        Caption = 'New Non-Teacher', comment = 'ESP="Nuevo No Docente"';
                        ApplicationArea = All;
                        Image = TileNew;
                        RunObject = Page "Ficha No Docente";
                        RunPageMode = Create;
                    }
                    action(Curso)
                    {
                        Caption = 'New Course', comment = 'ESP="Nuevo Curso"';
                        ApplicationArea = All;
                        Image = TileNew;
                        RunObject = Page "Ficha Curso";
                        RunPageMode = Create;
                    }
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Editar)
            {
                Caption = 'Cues Configuration', comment = 'ESP="Configuración de Pilas"';
                ApplicationArea = All;
                Image = Setup;
                trigger OnAction()
                begin
                    CuesAndKPIs.OpenCustomizePageForCurrentUser(50108);
                end;
            }
        }
    }

    var
        CuesAndKPIs: Codeunit "Cues And KPIs";
        CursosMatriculasStyle: Text[20];
        CursosHorarioStyle: Text[20];
        ProfesoresStyle: Text[20];
        AyudantesStyle: Text[20];
        JefesDeptStyle: Text[20];

    trigger OnOpenPage()
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end;
    end;

    trigger OnAfterGetRecord()
    begin
        CheckFieldsAndSetStyle();
    end;

    local procedure CheckFieldsAndSetStyle()
    begin
        if (Rec."Cursos Matriculas" = 0) then
            CursosMatriculasStyle := 'Favorable'
        else
            if (Rec."Cursos Matriculas" > 5) then
                CursosMatriculasStyle := 'Unfavorable'
            else
                CursosMatriculasStyle := 'Ambiguous';

        if (Rec."Num Cursos Horario" = 0) then
            CursosHorarioStyle := 'Favorable'
        else
            CursosHorarioStyle := 'Unfavorable';

        if (Rec."Num Profesores" < Rec."Num Depts") then
            ProfesoresStyle := 'Unfavorable'
        else
            if (Rec."Num Profesores" = Rec."Num Depts") then
                ProfesoresStyle := 'Ambiguous'
            else
                ProfesoresStyle := 'Favorable';

        if (Rec."Num Ayudantes" = 0) then
            AyudantesStyle := 'Unfavorable'
        else
            if (Rec."Num Ayudantes" < Rec."Num Profesores" / 2) then
                AyudantesStyle := 'Ambiguous'
            else
                AyudantesStyle := 'Favorable';

        if (Rec."Profesores Jefes" < Rec."Num Depts") then
            JefesDeptStyle := 'Unfavorable'
        else
            JefesDeptStyle := 'Favorable';
    end;
}