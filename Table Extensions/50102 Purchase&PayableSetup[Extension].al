tableextension 50102 PurchaseandPaySetu_SG extends "Purchases & Payables Setup"
{
    fields
    {
        field(50100; "Sherweb Vendor Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
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