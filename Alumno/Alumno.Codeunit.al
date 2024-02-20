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
        Curso: Record Curso;
        CursosHoy: Integer;
        Cadena: Text[100];
    begin
        DiaSemana := Date2DWY(Today(), 1);

        Cadena += 'Cursos hoy: \';

        Lineashorario.SetFilter(Dia, '=%1', DiaSemana);
        //Cursos.SetFilter("Id Horario", '=%1', Lineashorario."Id Horario");

        //PAGE.RunModal(PAGE::"Cursos part", Cursos);

        if Lineashorario.findset() then
            repeat
                Cursos.SetFilter("Id Horario", '=%1', Lineashorario."Id Horario");
                if Cursos.findset() then
                    repeat
                        Cadena += '  · ' + Cursos.Nombre + '\';
                        CursosHoy += 1;
                    until Cursos.next() = 0;
            until Lineashorario.next() = 0;

        Cursos.SetFilter("Id Horario", '=%1', Lineashorario."Id Horario");
        if Cursos.findset() then
            repeat
                Message(Cursos.Nombre);
            until Cursos.next() = 0;



        Cadena += 'Hoy hay ' + Format(CursosHoy) + ' líneas de horario.';
        Message(Cadena);

    end;
}