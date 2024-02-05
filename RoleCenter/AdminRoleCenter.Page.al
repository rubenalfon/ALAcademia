page 50118 "Admin. Academia Role Center"
{
    Caption = 'Role Center Admin.', comment = 'ESP="Admin. Role Center"';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part("Headline RC Admin Academia"; "Headline RC Admin Academia")
            {
                ApplicationArea = All;
            }
            // part("Admin Cue"; "Admin Cue") {
            //     ApplicationArea = All;
            // }
            part(Control1907692008; "My Customers")
            {
                ApplicationArea = Basic, Suite;
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


            }
        }
    }

    var
        myInt: Integer;
}