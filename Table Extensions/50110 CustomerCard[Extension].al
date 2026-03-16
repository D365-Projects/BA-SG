tableextension 50110 CustomerCard_SG extends Customer
{
    fields
    {
        field(50100; "Sherweb Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Excluded Customer"; Boolean)
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Excluded Parent Customer from Sherweb Invoice.';
            trigger OnValidate()
            var
                ChildCust: Record "Child Customer_SG";
            begin
                ChildCust.Reset();
                ChildCust.SetRange("Customer No", Rec."No.");
                if ChildCust.FindSet() then
                    repeat
                        ChildCust.Validate("Excluded Customer", Rec."Excluded Customer");
                        ChildCust.Modify();
                    until ChildCust.Next() = 0;
            end;
        }
        field(50102; "PO Reference No"; Text[35])
        {
            DataClassification = ToBeClassified;
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