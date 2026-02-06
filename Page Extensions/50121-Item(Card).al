pageextension 50121 "Item EXT" extends "Item Card"
{
    layout
    {
        addafter(Blocked)
        {
            field("Exclude Item"; Rec."Exclude Item")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}