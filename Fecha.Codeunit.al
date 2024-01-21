codeunit 50100 Fecha
{
    trigger OnRun()
    begin
    end;

    procedure FechaSistema()
    var
        Registro: Record Matricula;
    begin
        Registro."Fecha Matricula" := DT2Date(CurrentDateTime);
    end;

    var
        myInt: Integer;
}