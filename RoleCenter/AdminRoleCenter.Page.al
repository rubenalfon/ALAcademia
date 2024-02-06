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
            // part("Admin Cue"; "Admin Cue") {
            //     ApplicationArea = All;
            // }
        }
    }

    actions
    {
        area(embedding) // Pages list.
        {
            action(Profesores)
            {
                ApplicationArea = All;
                Caption = 'Teachers', comment = 'ESP="Profesores"';
                Image = "Order";
                RunObject = Page Profesores;
            }
            action(NoDocentes)
            {
                ApplicationArea = All;
                Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                Image = "Order";
                RunObject = Page "No Docentes";
            }
            action(Departamentos)
            {
                ApplicationArea = All;
                Caption = 'Departments', comment = 'ESP="Departamentos"';
                Image = "Order";
                RunObject = Page Departamentos;
            }
            action(Cursos)
            {
                ApplicationArea = All;
                Caption = 'Courses', comment = 'ESP="Cursos"';
                Image = "Order";
                RunObject = Page Cursos;
            }
            action(Horarios)
            {
                ApplicationArea = All;
                Caption = 'Schedules', comment = 'ESP="Horarios"';
                Image = "Order";
                RunObject = Page Horarios;
            }
            action(Alumnos)
            {
                ApplicationArea = All;
                Caption = 'Students', comment = 'ESP="Alumnos"';
                Image = "Order";
                RunObject = Page Alumnos;
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
                    Image = "Order";
                    RunObject = Page Profesores;
                }
                action(NoDocentes2)
                {
                    ApplicationArea = All;
                    Caption = 'Non-Teachers', comment = 'ESP="No Docentes"';
                    Image = "Order";
                    RunObject = Page "No Docentes";
                }
            }
            group("Departamentos y Cursos")
            {
                Caption = 'Courses & Departments', comment = 'ESP="Departamentos y Cursos"';
                action(Departamentos2)
                {
                    ApplicationArea = All;
                    Caption = 'Departments', comment = 'ESP="Departamentos"';
                    Image = "Order";
                    RunObject = Page Departamentos;
                }
                action(Cursos2)
                {
                    ApplicationArea = All;
                    Caption = 'Courses', comment = 'ESP="Cursos"';
                    Image = "Order";
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
                    Image = "Order";
                    RunObject = Page Horarios;
                }
                action(LineasHorario2)
                {
                    ApplicationArea = All;
                    Caption = 'Schedule lines', comment = 'ESP="Lineas Horario"';
                    Image = "Order";
                    RunObject = Page "Lineas Horario";
                }
            }
            group(AlumnosG)
            {
                Caption = 'Students', comment = 'ESP="Alumnos"';
                action(Alumnos2)
                {
                    ApplicationArea = All;
                    Caption = 'Students', comment = 'ESP="Alumnos"';
                    Image = "Order";
                    RunObject = Page Alumnos;
                }
            }
            group(SetupAndExtensions)
            {
                Caption = 'Setup & Extensions', comment = 'ESP="Configuracion y Extensiones"';
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
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page Workflows;
                }
            }
        }
        area(Processing) // Acciones de creación.
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
                    Caption = 'Non-Teachers', comment = 'ESP="No docentes"';
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
        }
    }
}