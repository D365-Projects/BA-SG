pageextension 50123 "CustomerContractLineSubp. EXT" extends "Customer Contract Line Subp."
{
    layout
    {
        addafter("No.")
        {
            field("Organization"; Rec."Organization")
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