tableextension 50111 "JobPlanningLine EXT" extends "Job Planning Line"
{
    fields
    {
        field(50100; "Details"; Text[500])
        {
            Caption = 'Details';
            DataClassification = ToBeClassified;
        }
        field(50101; "Contract Price"; Decimal)
        {
            Caption = 'Contract Price';
            DataClassification = ToBeClassified;
        }
        field(50102; "Milestone"; Text[50])
        {
            Caption = 'Milestone';
            DataClassification = ToBeClassified;
        }
        field(50103; "Milestone %"; Decimal)
        {
            Caption = 'Milestone %';
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