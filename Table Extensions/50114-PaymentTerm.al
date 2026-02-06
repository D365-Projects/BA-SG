tableextension 50114 "PaymentTerm EXT" extends "Payment Terms"
{
    fields
    {
        field(50100; "Case 1"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Case 2"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50102; "Case 3"; Boolean)
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