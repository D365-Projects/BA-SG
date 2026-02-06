pageextension 50122 "PaymentTerms EXT" extends "Payment Terms"
{
    layout
    {
        addbefore(Description)
        {
            field("Case 1"; Rec."Case 1")
            {
                ApplicationArea = all;
            }
            field("Case 2"; Rec."Case 2")
            {
                ApplicationArea = all;
            }
            field("Case 3"; Rec."Case 3")
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