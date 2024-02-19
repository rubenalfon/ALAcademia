codeunit 50100 "Codeunit Alumno"
{

    trigger OnRun()
    begin
    end;

    var
        myInt: Integer;

    procedure AlumnosPorDiaSemana()
    var
        DiaSemana: Integer;
        Lineashorario: Record "Linea Horario";
        Cursos: Record Curso;
        CursosHoy: Integer;
        Cadena: Text[100];
    begin
        DiaSemana := Date2DWY(WorkDate(), 1);

        Cadena += 'Cursos hoy: \';
        if Lineashorario.findset() then
            repeat
                if (Format(Lineashorario.Dia, 1, '<Number>') = Format(DiaSemana)) then begin

                    if Cursos.findset() then
                        repeat
                            if (Cursos."Id Horario" = Lineashorario."Id Horario") then
                                Cadena += '  · ' + Cursos.Nombre + '\';
                            CursosHoy += 1;
                        until Cursos.next() = 0;
                end;
            until Lineashorario.next() = 0;

        Cadena += 'Hoy hay ' + Format(CursosHoy) + ' líneas de horario.';
        Message(Cadena);

    end;
}