page 50112 "FactBox Profesor"
{
    Caption = 'Details', comment = 'ESP="Detalles"';
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
            field("Num. Cursos"; Rec."Num. Cursos")
            {
                Caption = 'No. of Courses', comment = 'ESP="Nº de Cursos"';
                ApplicationArea = All;
            }
        }
    }
}

