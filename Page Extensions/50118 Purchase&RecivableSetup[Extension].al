pageextension 50118 PurchaseandPayableSetup_SG extends "Purchases & Payables Setup"
{
    layout
    {
        addafter("Debit Acc. for Non-Item Lines")
        {
            field("Sherweb Vendor Code"; Rec."Sherweb Vendor Code")
            {
                ToolTip = 'Specify vendor you want to create purchse order from sherweb';
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