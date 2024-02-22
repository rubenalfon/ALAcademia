codeunit 50100 Alumno
{
    trigger OnRun()
    begin

    end;

    procedure CalcSumaTarifas(AlumnoRecord: Record Alumno): Decimal
    var
        Curso: Record Curso;
        Matricula: Record Matricula;
        Total: Decimal;
    begin
        Matricula.SetFilter("Alumno Referencia", '%1', AlumnoRecord."Id Alumno");
        if Matricula.findset() then
            repeat
                Curso.SetFilter("Id Curso", '%1', Matricula."Curso Referencia");
                if Curso.findset() then
                    repeat
                        Total += Curso."Tarifa Laboratorio"
                    until Curso.next() = 0;
            until Matricula.next() = 0;
        exit(Total);
    end;

    procedure DrillDownSumaTarifas(AlumnoRecord: Record Alumno)
    var
        Curso: Record Curso;
        CursoAux: Record Curso;
        Matricula: Record Matricula;
        Filter: Text[100];
    begin
        Matricula.SetFilter("Alumno Referencia", '%1', AlumnoRecord."Id Alumno");
        if Matricula.findset() then
            repeat
                Filter := Filter + Format(Matricula."Curso Referencia") + '|';
            until Matricula.next() = 0;
        Filter := Filter.Substring(1, Filter.LastIndexOf('|') - 1);
        CursoAux.SetFilter("Id Curso", Filter);
        Page.Run(Page::Cursos, CursoAux);
    end;
}