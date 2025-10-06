tableextension 50108 MyExtension extends "Sales Invoice Header"
{
    fields
    {
        field(50102; "Project"; Boolean)
        {
            Caption = 'Project';
            DataClassification = ToBeClassified;


        }
        field(50103; "Device"; Boolean)
        {
            Caption = 'Device';
            DataClassification = ToBeClassified;

        }
        field(50104; "T&M"; Boolean)
        {
            Caption = 'T&M';
            DataClassification = ToBeClassified;
        }
        field(50106; "License"; Boolean)
        {
            Caption = 'License';
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