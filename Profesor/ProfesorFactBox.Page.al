page 50115 "FactBox Profesor"
{
    Caption = 'Statistics', comment = 'ESP="Estadísticas"';
    PageType = CardPart;
    SourceTable = Profesor;

    layout
    {
        area(Content)
        {
            field("Num. Ayudantes"; Rec."Num. Ayudantes")
            {
                Caption = 'No. of Assistants', comment = 'ESP="Nº de Ayudantes"';
                ApplicationArea = All;
            }
            field("Num. Lineas Horario"; Rec."Num. Lineas Horario")
            {
                Caption = 'No. of Courses', comment = 'ESP="Nº de Cursos"';
                ApplicationArea = All;
            }
        }
    }
}

