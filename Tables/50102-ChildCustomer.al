table 50102 "Child Customer_SG"
{
    Caption = 'Child Customer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                ChildCust: Record "Child Customer_SG";
            begin
                if Rec.Code <> '' then begin
                    ChildCust.Reset();
                    ChildCust.SetRange(Code, Rec.Code);
                    if ChildCust.FindFirst() then
                        Error('Same Code %1 is already registerd against Customer No %2', Code, ChildCust."Customer No");
                end;
            end;
        }
        field(2; "Customer No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Excluded Customer"; Boolean)
        {
            DataClassification = ToBeClassified;
            ToolTip = 'Excluded Customer from Sherweb Invoice.';
        }
    }

    keys
    {
        key(Key1; "Customer No", Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}