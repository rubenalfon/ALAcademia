page 50113 "Carta Matricula"
{
    Caption = 'Tuition Card', comment = 'ESP="Ficha Matrícula"';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Matricula;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Id Matricula"; Rec."Id Matricula")
                {
                    Caption = 'No.', comment = 'ESP="Nº"';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}