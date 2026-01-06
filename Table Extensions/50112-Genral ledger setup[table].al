tableextension 50112 GenralLedgerSetup extends "General Ledger Setup"
{
    fields
    {

        field(50100; "Subscription Item Template"; Code[20])
        {
            Caption = 'Subscription Item Template';
            TableRelation = "Item Templ.".Code;
            DataClassification = CustomerContent;
        }



    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}