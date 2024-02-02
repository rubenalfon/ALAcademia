page 50112 "Curso Card Factbox"
{
    Caption = 'Course Statistics', comment = 'ESP="Estadisticas Curso"';
    PageType = CardPart;
    SourceTable = Curso;


    layout
    {
        area(Content)
        {
            field("Num Alumnos"; Rec."Num Alumnos")
            {
                Caption = 'Student No.', comment = 'ESP="Nº Alumnos"';
                ApplicationArea = All;
            }
            field("Horas Totales"; Rec."Horas Totales")
            {
                Caption = 'Total Hours', comment = 'ESP="Horas Totales"';
                ApplicationArea = All;
            }
            field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio")
            {
                Caption = 'Laboratory Fee', comment = 'ESP="Tarifa Laboratorio"';
                ApplicationArea = All;
            }
        }
    }
}