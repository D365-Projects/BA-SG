pageextension 50120 GenralLedgerSetup_ext extends "General Ledger Setup"
{
    layout
    {
        addafter("Gen. Journal Templates")
        {
            field("Subscription Item Template"; Rec."Subscription Item Template")
            {
                ApplicationArea = All;
                Caption = 'Subscription Item Template';
                ToolTip = 'Specifies the item template to be used for subscription items.';
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