table 50100 "Invoice SG"
{
    Caption = 'Invoice Data';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "InvoiceNo"; Code[20]) { DataClassification = ToBeClassified; }
        field(2; "Organization"; Text[100]) { DataClassification = ToBeClassified; }
        field(3; "Description"; Text[500]) { DataClassification = ToBeClassified; }
        field(4; "InvoicingDate"; Date) { DataClassification = ToBeClassified; }
        field(5; "InvoicePeriodFrom"; Date) { DataClassification = ToBeClassified; }
        field(6; "InvoicePeriodTo"; Date) { DataClassification = ToBeClassified; }
        field(7; "ServicePeriodFrom"; Date) { DataClassification = ToBeClassified; }
        field(8; "ServicePeriodTo"; Date) { DataClassification = ToBeClassified; }
        field(9; "Qty"; Decimal) { DataClassification = ToBeClassified; }
        field(10; "SKU"; Code[20]) { DataClassification = ToBeClassified; }
        field(11; "ListPrice"; Decimal) { DataClassification = ToBeClassified; }
        field(12; "Discounted Price NotProrated"; Decimal) { DataClassification = ToBeClassified; }
        field(13; "Unit Cost"; Decimal) { DataClassification = ToBeClassified; }
        field(14; "LineTotal"; Decimal) { DataClassification = ToBeClassified; }
        field(15; "Organization SubTotal"; Decimal) { DataClassification = ToBeClassified; }
        field(16; "Reseller SubTotal"; Decimal) { DataClassification = ToBeClassified; }
        field(17; "Invoice SubTotal"; Decimal) { DataClassification = ToBeClassified; }
        field(18; "HST"; Decimal) { DataClassification = ToBeClassified; }
        field(19; "PST"; Decimal) { DataClassification = ToBeClassified; }
        field(20; "GST"; Decimal) { DataClassification = ToBeClassified; }
        field(21; "Grand Total"; Decimal) { DataClassification = ToBeClassified; }
        field(22; "Currency"; Text[100]) { DataClassification = ToBeClassified; }
        field(23; "Apply tax(es)"; Boolean) { DataClassification = ToBeClassified; }
        field(24; "MD - STATE SALES/USE TAX"; Decimal) { DataClassification = ToBeClassified; }
        field(25; "US - FEDERAL TELECOM "; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL TELECOM RELAY SERVICE SURCHARGE'; }
        field(26; "US - FEDERAL TELEPHONE EXCISE"; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL TELEPHONE EXCISE TAX '; }
        field(27; "US - FEDERAL UNIVERSAL SERVICE"; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL UNIVERSAL SERVICE FUND SURCHARGE'; }
        field(28; "US - FEDERAL NUMBERING "; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL NUMBERING PLAN SURCHARGE'; }
        field(29; "US-FEDERAL COMMUNICATIONS"; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL COMMUNICATIONS COMMISSION REGULATORY FEE'; }
        field(30; "US - FEDERAL TELECOM RELAY"; Decimal) { DataClassification = ToBeClassified; Caption = 'US - FEDERAL TELECOM RELAY SERVICE SURCHARGE IP'; }
        field(31; "MD - STATE E911 FEES"; Decimal) { DataClassification = ToBeClassified; }
        field(32; "MD - STATE UNIVERSAL SERVICE"; Decimal) { DataClassification = ToBeClassified; Caption = 'MD - STATE UNIVERSAL SERVICE FUND SURCHARGE'; }
        field(33; "MD - STATE PUBLIC UTILITY"; Decimal) { DataClassification = ToBeClassified; Caption = 'MD - STATE PUBLIC UTILITY COMMISSION FEE'; }
        field(34; "MD - STATE PUBLIC SERVICE TAX"; Decimal) { DataClassification = ToBeClassified; Caption = 'MD - STATE PUBLIC SERVICE COMPANY TAX'; }
        field(35; "MD-MONTGOMERY COUNTY,TELEPHONE"; Decimal) { DataClassification = ToBeClassified; Caption = 'MD - MONTGOMERY COUNTY, TELEPHONE TAX'; }
        field(36; "Line No"; Integer) { DataClassification = ToBeClassified; }
        field(37; "No."; Integer) { DataClassification = ToBeClassified; AutoIncrement = true; }
        field(38; "Customer List Price"; Decimal) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; "No.", "InvoiceNo", "Line No")
        {
            Clustered = true;
        }
    }
}
