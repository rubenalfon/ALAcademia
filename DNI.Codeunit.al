codeunit 50100 "Comprobar DNI"
{
    trigger OnRun()
    begin
    end;

    procedure ComprobarDNI(dni: Text): Boolean
    var
        ParteNumericaTexto: Text;
        ParteNumerica: Integer;
        IndexLetra: Integer;
        LetrasDni: Text;
    begin
        if (StrLen(dni) <> 9) then
            exit(true)
        else begin
            ParteNumericaTexto := dni.Substring(1, strlen(dni) - 1);
            if (ComprobarCadenaNumero(ParteNumericaTexto)) then begin
                EVALUATE(ParteNumerica, ParteNumericaTexto);
                IndexLetra := ParteNumerica mod 23;
                LetrasDni := 'TRWAGMYFPDXBNJZSQVHLCKE';
                if (LetrasDni.Substring(IndexLetra + 1, 1) = dni.Substring(9, 1)) then
                    exit(false)
                else
                    exit(true);
            end else
                exit(true);
        end;
    end;


    [TryFunction]
    local procedure ComprobarCadenaNumero(Cadena: text)
    var
        Numero: Integer;
    begin
        EVALUATE(Numero, cadena);
    end;


}