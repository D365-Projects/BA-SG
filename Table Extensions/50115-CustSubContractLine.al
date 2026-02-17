tableextension 50115 "Cust. Sub. Contract Line EXT" extends "Cust. Sub. Contract Line"
{
    fields
    {
        field(50100; "Organization"; Text[100])
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