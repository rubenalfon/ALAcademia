page 50111 "Ficha Curso"
{
    Caption = 'Course Card', comment = 'ESP="Ficha Curso"';
    PageType = Card;
    UsageCategory = None;
    SourceTable = Curso;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';
                field("Id Curso"; Rec."Id Curso")
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
                    ShowMandatory = true;
                }
                field(Descripcion; Rec.Descripcion)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Horas Totales"; Rec."Horas Totales")
                {
                    Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
                {
                    Caption = 'Lab Fee', comment = 'ESP="Tarifa laboratorio"';
                    ApplicationArea = All;
                    Importance = Additional;
                }

                field("Id Horario"; Rec."Id Horario")
                {
                    Caption = 'Schedule No.', comment = 'ESP="Nº horario"';
                }
            }
            group(Profesor)
            {
                Caption = 'Teacher', comment = 'ESP="Profesor"';
                field("Id Profesor"; Rec."Id Profesor")
                {
                    Caption = 'Teacher No.', comment = 'ESP="Nº Profesor"';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Id Dept. Profesor"; Rec."Id Dept. Profesor")
                {
                    Caption = 'Teacher Dept. No.', comment = 'ESP="Nº Dept. Profesor"';
                    ApplicationArea = All;
                }
            }
            part("Lineas Horario Subpage"; "Lineas Horario Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Id Horario" = field("Id Horario");
            }
        }
        area(FactBoxes)
        {
            part("Curso Card Factbox"; "Curso Card Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Id Curso" = field("Id Curso");
            }
            systempart(Notas; Notes)
            {
                Caption = 'Notes', comment = 'ESP="Notas"';
                ApplicationArea = Notes;
            }
        }

    }

    actions
    {
        area(Creation)
        {
            action(Horarios)
            {
                Caption = 'New Schedule', comment = 'ESP="Nuevo horario"';
                ApplicationArea = All;
                RunObject = page Horarios;
                RunPageMode = Create;
                Image = New;
            }
        }
        area(Reporting)
        {
            action(Alumnos)
            {
                Caption = 'Enrolled Students', comment = 'ESP="Alumnos Matriculados"';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    AlumnosMatriculados();
                end;

            }
        }
    }

    local procedure AlumnosMatriculados()
    var
        Matricula: Record Matricula;
        Alumno: Record Alumno;
        filtro: Text;
        LabelMensaje: Label 'There is no enrolled student.', Comment = 'ESP="No hay ningún alumno matriculado."';
    begin
        Matricula.SetFilter("Curso Referencia", '=%1', Rec."Id Curso");
        if Matricula.findset() then
            repeat
                filtro += Matricula."Alumno Referencia" + '|';
            until Matricula.next() = 0;
        if (StrLen(filtro) > 0) then begin
            filtro := filtro.Substring(1, filtro.LastIndexOf('|') - 1);
            alumno.SetFilter("Id Alumno", filtro);
            Page.RunModal(Page::Alumnos, alumno);
        end else
            Message(LabelMensaje);
    end;
}