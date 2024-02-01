page 50112 "Curso Card Factbox"
{
    Caption = 'Course stadistics', comment = 'ESP="Estadisticas curso"';
    PageType = CardPart;
    SourceTable = Curso;


    layout
    {
        area(Content)
        {
            field("Num Alumnos"; Rec."Num Alumnos")
            {
                Caption = 'Student no.', comment = 'ESP="Nº alumnos"';
                ApplicationArea = All;
            }
            field("Horas Totales"; Rec."Horas Totales")
            {
                Caption = 'Total hours', comment = 'ESP="Horas totales"';
                ApplicationArea = All;
            }
            field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
            {
                Caption = 'Lab fee', comment = 'ESP="Tarifa laboratorio"';
                ApplicationArea = All;
            }
        }
    }
}