tableextension 50103 SalesLineExtension extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_lrec: Record Item;
                Saleshdr: Record "Sales Header";
            begin
                Item_lrec.SetRange("No.", rec."No.");
                if Item_lrec.Findfirst() then
                    Rec.SKU := Item_lrec."Vendor Item No.";
                rec.UPC_SG := Item_lrec.GTIN;
                Saleshdr.Reset();
                Saleshdr.SetRange("No.", Rec."Document No.");
                Saleshdr.SetRange("Document Type", Rec."Document Type");
                if Saleshdr.FindFirst() then begin
                    Rec."Service Period From" := Saleshdr."Service Period From";
                    Rec.Validate("Service Period To", Saleshdr."Service Period To");
                end;
            end;
        }
        field(50101; "SKU"; Text[50])
        {
            Caption = 'SKU';
            DataClassification = ToBeClassified;
        }
        field(50102; "Service Period From"; Date)
        {
            Caption = 'Service Period From';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50103; "Service Period To"; Date)
        {
            Caption = 'Service Period To';
            Editable = false;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                ItemRec: Record Item;
                TotalDaysInMonth: Integer;
                CalcDuration: Integer;
            begin
                if rec."Document Type" = Rec."Document Type"::Invoice then begin
                    ItemRec.Reset();
                    ItemRec.SetRange("No.", Rec."No.");
                    if ItemRec.FindFirst() then begin
                        if ItemRec."Shareweb Item" then begin
                            TotalDaysInMonth := Date2DMY(CalcDate('<CM>', "Service Period From"), 1);
                            Validate(Duration, (("Service Period To" - "Service Period From") + 1) / TotalDaysInMonth);
                        end;
                    end;
                end;
            end;
        }
        field(50104; "Sales Margin_SG"; Decimal)
        {
            Caption = 'Sales Margin';
            DataClassification = ToBeClassified;
        }
        field(50105; "Net Price_SG"; Decimal)
        {
            Caption = 'Net Price';
            DataClassification = ToBeClassified;
        }
        field(50106; "UPC_SG"; Code[20])
        {
            Caption = 'UPC';
            DataClassification = ToBeClassified;
        }
        field(50107; "Direct_Cost"; Decimal)
        {
            Caption = 'Direct Cost';
            DataClassification = ToBeClassified;
        }
        field(50108; "Margin %"; Decimal)
        {
            Caption = 'Margin %';
            DataClassification = ToBeClassified;

        }
        field(50109; "Shipping Cost"; Decimal)
        {
            Caption = 'Shipping Cost';
            DataClassification = ToBeClassified;

        }
        field(50110; "Details"; Text[1000])
        {
            Caption = 'Details';
            DataClassification = ToBeClassified;
        }
        field(50111; "Contract Price"; Decimal)
        {
            Caption = 'Contract Price';
            DataClassification = ToBeClassified;
        }
        field(50112; "Milestone"; Text[50])
        {
            Caption = 'Milestone';
            DataClassification = ToBeClassified;
        }
        field(50113; "Milestone %"; Decimal)
        {
            Caption = 'Milestone %';
            DataClassification = ToBeClassified;
        }
        field(50114; "Organization"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50115; "Customer Subsc Contr"; Boolean)
        {
            Caption = 'Customer Subscription Contract';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50116; "Duration"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if (Quantity <> 0) and ("Unit Price" <> 0) then
                    Rec.Validate("Line Amount", (Quantity * "Unit Price" * Duration));
            end;
        }

    }

    keys
    {

    }

    fieldgroups
    {

    }

    var
        myInt: Integer;
}