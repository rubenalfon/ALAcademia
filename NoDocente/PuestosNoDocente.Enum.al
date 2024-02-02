enum 50100 "Puestos No Docente"
{
    Extensible = true;

    value(0; " ") { Caption = ''; }
    value(1; "Ayudante")
    {
        Caption = 'Helper', comment = 'ESP="Ayudante"';
    }
    value(2; "Becario")
    {
        Caption = 'Intern', comment = 'ESP="Becario/a"';
    }
    value(3; "Conserje")
    {
        Caption = 'Janitor', comment = 'ESP="Conserje"';
    }
    value(4; "Secretario")
    {
        Caption = 'Secretary', comment = 'ESP="Secretario/a"';
    }
    value(5; "Limpiador")
    {
        Caption = 'Cleaner', comment = 'ESP="Limpiador/a"';
    }
}