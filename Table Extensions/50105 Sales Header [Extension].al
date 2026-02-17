tableextension 50105 SalesHederExt extends "Sales Header"
{
    fields
    {
        field(50100; "Quote Status"; Option)
        {
            Caption = 'Quote Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Under approval by the Manager","Under approval by the customer","On Hold","Draft","Approved by Customer","Approved by Manager","Decline by The Customer","Decline by The Manager","Waiting for Payment";
            OptionCaption = 'Under approval by the Manager,Under approval by the customer,On Hold,Draft,Approved by Customer,Approved by Manager,Decline by The Customer,Decline by The Manager,Waiting for Payment';
        }
        field(50101; "Follow Up Date"; Date)
        {
            Caption = 'Follow up Date';
            DataClassification = ToBeClassified;
        }
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
        field(50107; "Service Period From"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50108; "Service Period To"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50109; "Case 1"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50110; "Case 2"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50111; "Case 3"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        // modify("Due Date")
        // {
        //     trigger OnAfterValidate()
        //     var
        //         StartDate: Date;
        //         EndDate: Date;
        //     begin
        //         CalcMonthStartEnd();
        //         // Rec.Validate("Posting Date", "Due Date");
        //     end;
        // }
        // modify("Posting Date")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         if "Due Date" <> 0D then
        //             CalcMonthStartEnd();
        //     end;
        // }
        // modify("Payment Terms Code")
        // {
        //     trigger OnAfterValidate()
        //     begin
        //         if "Due Date" <> 0D then
        //             CalcMonthStartEnd();
        //     end;
        // }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
    local procedure CalcMonthStartEnd()
    var
        StartDate: Date;
        EndDate: Date;
    begin
        if "Due Date" <> 0D then begin
            StartDate := DMY2Date(1, Date2DMY("Due Date", 2), Date2DMY("Due Date", 3));
            EndDate := CalcDate('<1M>', StartDate) - 1;
            Rec.Validate("Service Period From", StartDate);
            Rec.Validate("Service Period To", EndDate);
            // Rec.Modify();
        end
        else begin
            Clear(Rec."Service Period From");
            Clear(Rec."Service Period To");
            // Rec.Modify();
        end;
    end;

    var
        myInt: Integer;
}