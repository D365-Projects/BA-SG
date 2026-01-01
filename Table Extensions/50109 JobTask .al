tableextension 50109 ProjectJobTask extends "Job Task"
{
    fields
    {
        field(50000; "SG ShortcutDim6Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 6 Code';
            CaptionClass = '1,2,6';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(6));
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                Rec.ValidateShortcutDimCode(6, "SG ShortcutDim6Code");
            end;
        }
        // Add changes to table fields here
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