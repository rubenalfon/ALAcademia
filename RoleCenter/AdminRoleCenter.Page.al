page 50118 "Admin. Academia Role Center"
{
    Caption = 'Role Center Admin.', comment = 'ESP="Admin. Role Center"';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part("Headline RC Admin Academia"; "Headline RC Admin Academia")
            {
                ApplicationArea = All;
            }
            part("Admin Cues"; "Administrative Activities")
            {
                ApplicationArea = All;
            }
            part("Cursos part"; "Cursos part")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(embedding)
        {
            action(Profesores)
            {
                ApplicationArea = All;
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                RunObject = Page Profesores;
            }
            action(NoDocentes)
            {
                ApplicationArea = All;
                Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                RunObject = Page "No Docentes";
            }
            action(Departamentos)
            {
                ApplicationArea = All;
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                RunObject = Page Departamentos;
            }
            action(Cursos)
            {
                ApplicationArea = All;
                Caption = 'Courses', comment = 'ESP="Cursos"';
                RunObject = Page Cursos;
            }
            action(Horarios)
            {
                ApplicationArea = All;
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                RunObject = Page Horarios;
            }
            action(Alumnos)
            {
                ApplicationArea = All;
                Caption = 'Students', comment = 'ESP="Alumnos"';
                RunObject = Page Alumnos;
            }
            action(Matriculas)
            {
                ApplicationArea = All;
                Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                RunObject = Page Matriculas;
            }
        }
        area(Sections)
        {
            group(Personal)
            {
                Caption = 'Staff', comment = 'ESP="Personal"';
                action(Profesores2)
                {
                    ApplicationArea = All;
                    Caption = 'Teachers', comment = 'ESP="Profesores"';
                    RunObject = Page Profesores;
                }
                action(NoDocentes2)
                {
                    ApplicationArea = All;
                    Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                    RunObject = Page "No Docentes";
                }
            }
            group("Departamentos y Cursos")
            {
                Caption = 'Departments & Courses', comment = 'ESP="Departamentos y Cursos"';
                action(Departamentos2)
                {
                    ApplicationArea = All;
                    Caption = 'Departments', comment = 'ESP="Departamentos"';
                    RunObject = Page Departamentos;
                }
                action(Cursos2)
                {
                    ApplicationArea = All;
                    Caption = 'Courses', comment = 'ESP="Cursos"';
                    RunObject = Page Cursos;
                }
            }
            group("Horarios Lineas Horario")
            {
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                action(Horarios2)
                {
                    ApplicationArea = All;
                    Caption = 'Schedules', comment = 'ESP="Horarios"';
                    RunObject = Page Horarios;
                }
                action(LineasHorario2)
                {
                    ApplicationArea = All;
                    Caption = 'Schedule Lines', comment = 'ESP="Líneas Horario"';
                    RunObject = Page "Lineas Horario";
                }
            }
            group("Alumnos Matriculas")
            {
                Caption = 'Students & Tuitions', comment = 'ESP="Alumnos y Matrículas"';
                action(Alumnos2)
                {
                    ApplicationArea = All;
                    Caption = 'Students', comment = 'ESP="Alumnos"';
                    RunObject = Page Alumnos;
                }
                action(Matriculas2)
                {
                    ApplicationArea = All;
                    Caption = 'Tuitions', comment = 'ESP="Matrículas"';
                    RunObject = Page Matriculas;
                }
            }
            group(SetupAndExtensions)
            {
                Caption = 'Setup & Extensions', comment = 'ESP="Configuración y Extensiones"';
                Image = Setup;
                action("Assisted Setup")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Assisted Setup', comment = 'ESP="Configuración Asistida"';
                    Image = QuestionaireSetup;
                    RunObject = Page "Assisted Setup";
                }
                action("Manual Setup")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Manual Setup', comment = 'ESP="Configuración Manual"';
                    RunObject = Page "Manual Setup";
                }
                action("Service Connections")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Service Connections', comment = 'ESP="Conexiones de Servicio"';
                    Image = ServiceTasks;
                    RunObject = Page "Service Connections";
                }
                action(Extensions)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Extensions', comment = 'ESP="Extensiones"';
                    Image = NonStockItemSetup;
                    RunObject = Page "Extension Management";
                }
                action(Workflows)
                {
                    ApplicationArea = Suite;
                    Caption = 'Workflows', comment = 'ESP="Flujos de trabajo"';
                    RunObject = Page Workflows;
                }
            }
        }
        area(Processing)
        {
            action("Nuevo Alumno")
            {
                ApplicationArea = All;
                Caption = 'Student', comment = 'ESP="Alumno"';
                Image = Add;
                RunObject = Page "Ficha Alumno";
                RunPageMode = Create;
            }

            group(Empleados)
            {
                Caption = 'Staff', comment = 'ESP="Empleados"';
                action(Profesor)
                {
                    ApplicationArea = All;
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                    RunObject = Page "Ficha Profesor";
                    RunPageMode = Create;
                }
                action("Non-Teachers")
                {
                    Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                    ApplicationArea = All;
                    RunObject = Page "Ficha No Docente";
                    RunPageMode = Create;
                }
            }
            action(Curso)
            {
                Caption = 'Course', comment = 'ESP="Curso"';
                ApplicationArea = All;
                RunObject = Page "Ficha Curso";
                RunPageMode = Create;
            }
            action(Matricula)
            {
                Caption = 'Tuition', comment = 'ESP="Matrícula"';
                ApplicationArea = All;
                Image = Create;
                RunObject = Page "Ficha Matricula";
                RunPageMode = Create;
            }
        }
    }
}