tableextension 50103 SalesLineExtension extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_lrec: Record Item;
            begin
                Item_lrec.SetRange("No.", rec."No.");
                if Item_lrec.Findfirst() then
                    Rec.SKU := Item_lrec."Vendor Item No.";
                rec.UPC_SG := Item_lrec.GTIN;
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
        }
        field(50103; "Service Period To"; Date)
        {
            Caption = 'Service Period To';
            DataClassification = ToBeClassified;
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