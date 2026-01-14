

page 50105 "Sherweb_Invoices(Archived)"
{
    ApplicationArea = All;
    Caption = 'Sherweb Invoices Archived';
    PageType = List;
    ;
    SourceTable = "Invoice SG(Archived)";
    // CardPageId = "Sherweb Invoices";
    AutoSplitKey = true;
    DelayedInsert = true;
    Editable = false;
    SaveValues = true;
    SourceTableView = sorting(InvoiceNo);
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(InvoiceNo; Rec.InvoiceNo)
                {
                    ToolTip = 'Specifies the value of the InvoiceNo field.', Comment = '%';
                }
                field(Organization; Rec.Organization)
                {
                    ToolTip = 'Specifies the value of the Organization field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(InvoicingDate; Rec.InvoicingDate)
                {
                    ToolTip = 'Specifies the value of the InvoicingDate field.', Comment = '%';
                }
                field(InvoicePeriodFrom; Rec.InvoicePeriodFrom)
                {
                    ToolTip = 'Specifies the value of the InvoicePeriodFrom field.', Comment = '%';
                }
                field(InvoicePeriodTo; Rec.InvoicePeriodTo)
                {
                    ToolTip = 'Specifies the value of the InvoicePeriodTo field.', Comment = '%';
                }
                field(ServicePeriodFrom; Rec.ServicePeriodFrom)
                {
                    ToolTip = 'Specifies the value of the ServicePeriodFrom field.', Comment = '%';
                }
                field(ServicePeriodTo; Rec.ServicePeriodTo)
                {
                    ToolTip = 'Specifies the value of the ServicePeriodTo field.', Comment = '%';
                }
                field(Qty; Rec.Qty)
                {
                    ToolTip = 'Specifies the value of the Qty field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field(SKU; Rec.SKU)
                {
                    ToolTip = 'Specifies the value of the SKU field.', Comment = '%';
                }
                field("Customer List Price"; Rec."Customer List Price")
                {
                    ToolTip = 'Specifies the value of the Customer List Price field.', Comment = '%';
                    Editable = true;
                    DecimalPlaces = 0 : 4;
                }
                field(ListPrice; Rec.ListPrice)
                {
                    ToolTip = 'Specifies the value of the ListPrice field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("Discounted Price NotProrated"; Rec."Discounted Price NotProrated")
                {
                    ToolTip = 'Specifies the value of the Discounted Price NotProrated field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the UnitPrice field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field(LineTotal; Rec.LineTotal)
                {
                    ToolTip = 'Specifies the value of the LineTotal field.', Comment = '%';


                }
                field("Organization SubTotal"; Rec."Organization SubTotal")
                {
                    ToolTip = 'Specifies the value of the Organization SubTotal field.', Comment = '%';

                }
                field("Reseller SubTotal"; Rec."Reseller SubTotal")
                {
                    ToolTip = 'Specifies the value of the Reseller SubTotal field.', Comment = '%';

                }
                field("Invoice SubTotal"; Rec."Invoice SubTotal")
                {
                    ToolTip = 'Specifies the value of the Invoice SubTotal field.', Comment = '%';

                }
                field(HST; Rec.HST)
                {
                    ToolTip = 'Specifies the value of the HST field.', Comment = '%';

                }
                field(PST; Rec.PST)
                {
                    ToolTip = 'Specifies the value of the PST field.', Comment = '%';

                }
                field(GST; Rec.GST)
                {
                    ToolTip = 'Specifies the value of the GST field.', Comment = '%';

                }
                field("Grand Total"; Rec."Grand Total")
                {
                    ToolTip = 'Specifies the value of the Grand Total field.', Comment = '%';

                }
                field(Currency; Rec.Currency)
                {
                    ToolTip = 'Specifies the value of the Currency field.', Comment = '%';
                }
                field("Apply tax(es)"; Rec."Apply tax(es)")
                {
                    ToolTip = 'Specifies the value of the Apply tax(es) field.', Comment = '%';
                }
                field("MD - STATE SALES/USE TAX"; Rec."MD - STATE SALES/USE TAX")
                {
                    ToolTip = 'Specifies the value of the MD - STATE SALES/USE TAX field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US - FEDERAL TELECOM "; Rec."US - FEDERAL TELECOM ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELECOM RELAY SERVICE SURCHARGE field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US - FEDERAL TELEPHONE EXCISE"; Rec."US - FEDERAL TELEPHONE EXCISE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELEPHONE EXCISE TAX field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US - FEDERAL UNIVERSAL SERVICE"; Rec."US - FEDERAL UNIVERSAL SERVICE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL UNIVERSAL SERVICE FUND SURCHARGE field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US - FEDERAL NUMBERING "; Rec."US - FEDERAL NUMBERING ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL NUMBERING PLAN SURCHARGE field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US-FEDERAL COMMUNICATIONS"; Rec."US-FEDERAL COMMUNICATIONS")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL COMMUNICATIONS COMMISSION REGULATORY FEE field.', Comment = '%';
                    DecimalPlaces = 0 : 4;
                }
                field("US - FEDERAL TELECOM RELAY"; Rec."US - FEDERAL TELECOM RELAY")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELECOM RELAY SERVICE SURCHARGE IP field.', Comment = '%';
                }
                field("MD - STATE E911 FEES"; Rec."MD - STATE E911 FEES")
                {
                    ToolTip = 'Specifies the value of the MD - STATE E911 FEES field.', Comment = '%';
                }
                field("MD - STATE UNIVERSAL SERVICE"; Rec."MD - STATE UNIVERSAL SERVICE")
                {
                    ToolTip = 'Specifies the value of the MD - STATE UNIVERSAL SERVICE FUND SURCHARGE field.', Comment = '%';
                }
                field("MD - STATE PUBLIC UTILITY"; Rec."MD - STATE PUBLIC UTILITY")
                {
                    ToolTip = 'Specifies the value of the MD - STATE PUBLIC UTILITY COMMISSION FEE field.', Comment = '%';
                }
                field("MD - STATE PUBLIC SERVICE TAX"; Rec."MD - STATE PUBLIC SERVICE TAX")
                {
                    ToolTip = 'Specifies the value of the MD - STATE PUBLIC SERVICE COMPANY TAX field.', Comment = '%';
                }
                field("MD-MONTGOMERY COUNTY,TELEPHONE"; Rec."MD-MONTGOMERY COUNTY,TELEPHONE")
                {
                    ToolTip = 'Specifies the value of the MD - MONTGOMERY COUNTY, TELEPHONE TAX field.', Comment = '%';
                }
                field(SI; Rec.SI)
                {
                    ToolTip = 'Specifies whether the SI field is selected.', Comment = '%';
                }
                field(PSI; Rec.PSI)
                {
                    ToolTip = 'Specifies whether the PSI field is selected.', Comment = '%';
                }
                field(PI; Rec.PI)
                {
                    ToolTip = 'Specifies whether the PI field is selected.', Comment = '%';
                }
                field(PPI; Rec.PPI)
                {
                    ToolTip = 'Specifies whether the PPI field is selected.', Comment = '%';
                }

            }
        }
    }

    actions
    {


    }







}

