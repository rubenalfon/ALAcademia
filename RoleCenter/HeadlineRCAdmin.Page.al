page 50119 "Headline RC Admin Academia"
{
    Caption = 'Cabecera', comment = 'ESP="Headline"';
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            group(Control1)
            {
                ShowCaption = false;
                Visible = UserGreetingVisible;
                field(GreetingText; GreetingText)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Greeting Headline', comment = 'ESP="Título Saludo"';
                    Editable = false;
                }
            }
            group(Control2)
            {
                ShowCaption = false;
                field(GreetingText2; GreetingText2)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Greeting Headline', comment = 'ESP="Título Saludo"';
                    Editable = false;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        RCHeadlinesPageCommon.HeadlineOnOpenPage(Page::"Headline RC Admin Academia");
        DefaultFieldsVisible := RCHeadlinesPageCommon.AreDefaultFieldsVisible();
        UserGreetingVisible := RCHeadlinesPageCommon.IsUserGreetingVisible();
    end;

    var
        [InDataSet]
        DefaultFieldsVisible: Boolean;
        [InDataSet]
        UserGreetingVisible: Boolean;
        RCHeadlinesPageCommon: Codeunit "RC Headlines Page Common";
        GreetingText: Label 'Hello', comment = 'ESP="Hola"';
        GreetingText2: Label 'Welcome', comment = 'ESP="Bienvenido"';

}

