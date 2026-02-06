tableextension 50113 "Item EXt" extends Item
{
    fields
    {
        field(50100; "Exclude Item"; Boolean)
        {
            DataClassification = ToBeClassified;
            ToolTip = 'This Item will be excluded from invoice generation through the Sherweb invoicing';
            trigger OnValidate()
            var
                invoSG: Record "Invoice SG";
            begin
                invoSG.Reset();
                invoSG.SetRange(SKU, Rec."No.");
                if invoSG.FindSet() then
                    repeat
                        invoSG.Validate("Exclude Item", Rec."Exclude Item");
                        invoSG.Modify();
                    until invoSG.Next() = 0;
            end;
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