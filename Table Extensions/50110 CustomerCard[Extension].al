tableextension 50110 CustomerCard_SG extends Customer
{
    fields
    {
        field(50100; "Sherweb Customer Name"; Text[100])
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