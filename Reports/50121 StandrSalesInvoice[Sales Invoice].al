report 50121 "Sales Invoice_SG"
{
    Caption = 'Sales - Invoice';
    EnableHyperlinks = true;
    Permissions = TableData "Sales Shipment Buffer" = rimd;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;
    DefaultRenderingLayout = "StandardSalesInvoice_SG.rdlc";

    dataset
    {
        dataitem(Header; "Sales Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Sales Invoice';




            column(CompanyPicture; DummyCompanyInfo.Picture)
            {
            }
            column(CompanyName; DummyCompanyInfo.Name)
            {

            }
            column(CompanyEmail; DummyCompanyInfo."E-Mail") { }
            column(DummyCompanyInfo; DummyCompanyInfo."Home Page") { }

            column(Order_Date; "Order Date") { }
            column(Document_Date; "Document Date") { }
            column(Address1and2; Address1and2) { }
            column(CSZcode; CSZcode) { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_County; "Sell-to County") { }
            column(Sell_to_Post_Code; "Sell-to Post Code") { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Address_2; "Sell-to Address 2") { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Bill_to_County; "Bill-to County") { }
            column(Bill_to_Post_Code; "Bill-to Post Code") { }

            column(CustomerPostalBarCode; FormatAddr.PostalBarCode(1))
            {
            }
            column(InvoiceNo_; "No.") { }
            column(External_Document_No_; "External Document No.") { }
            column(Due_Date; "Due Date") { }
            column(Amount; Amount) { }


            column(ShipmentDate; Format("Shipment Date", 0, 4))
            {
            }
            column(ShipmentDate_Lbl; FieldCaption("Shipment Date"))
            {
            }


            column(ShipToPhoneNo; Header."Ship-to Phone No.")
            {
            }


            column(SellToContactPhoneNo; SellToContact."Phone No.")
            {
            }
            column(SellToContactMobilePhoneNo; SellToContact."Mobile Phone No.")
            {
            }
            column(SellToContactEmail; SellToContact."E-Mail")
            {
            }
            column(BillToContactPhoneNo; BillToContact."Phone No.")
            {
            }
            column(BillToContactMobilePhoneNo; BillToContact."Mobile Phone No.")
            {
            }
            column(BillToContactEmail; BillToContact."E-Mail")
            {
            }


            column(BilltoCustumerNo; "Bill-to Customer No.")
            {
            }
            column(BilltoCustomerNo_Lbl; FieldCaption("Bill-to Customer No."))
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(DocumentDate_Lbl; FieldCaption("Document Date"))
            {
            }
            column(DueDate; "Due Date")
            {
            }
            column(DueDate_Lbl; FieldCaption("Due Date"))
            {
            }
            column(DocumentNo; "No.")
            {
            }

            column(SalesInvoiceNo_; "No.") { }

            column(OrderDate; "Order Date")
            {
            }
            column(OrderDate_Lbl; FieldCaption("Order Date"))
            {
            }
            column(PricesIncludingVAT; "Prices Including VAT")
            {
            }
            column(PricesIncludingVAT_Lbl; FieldCaption("Prices Including VAT"))
            {
            }
            column(PricesIncludingVATYesNo; Format("Prices Including VAT"))
            {
            }

            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(SelltoCustomerNo_Lbl; FieldCaption("Sell-to Customer No."))
            {
            }
            column(VATRegistrationNo; GetCustomerVATRegistrationNumber())
            {
            }
            column(VATRegistrationNo_Lbl; GetCustomerVATRegistrationNumberLbl())
            {
            }
            column(GlobalLocationNumber; GetCustomerGlobalLocationNumber())
            {
            }
            column(GlobalLocationNumber_Lbl; GetCustomerGlobalLocationNumberLbl())
            {
            }
            column(SellToFaxNo; GetSellToCustomerFaxNo())
            {
            }
            column(SellToPhoneNo; "Sell-to Phone No.")
            {
            }

            column(LegalEntityType; Cust.GetLegalEntityType())
            {
            }
            column(LegalEntityType_Lbl; Cust.GetLegalEntityTypeLbl())
            {
            }

            column(VATClause_Lbl; VATClause.TableCaption())
            {
            }
            column(PackageTrackingNo; "Package Tracking No.")
            {
            }
            column(PackageTrackingNo_Lbl; FieldCaption("Package Tracking No."))
            {
            }
            column(ShippingAgentCode; "Shipping Agent Code")
            {
            }
            column(ShippingAgentCode_Lbl; FieldCaption("Shipping Agent Code"))
            {
            }

            column(CustomerPONumber; "External Document No.")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(ExternalDocumentNo_Lbl; FieldCaption("External Document No."))
            {
            }

            dataitem(Line; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemLinkReference = Header;
                DataItemTableView = sorting("Document No.", "Line No.");
                column(LineNo_Line; "Line No.")
                {
                }
                column(AmountExcludingVAT_Line; Amount)
                {

                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl; FieldCaption(Amount))
                {
                }
                column(AmountIncludingVAT_Line; "Amount Including VAT")
                {

                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl; FieldCaption("Amount Including VAT"))
                {

                    AutoFormatType = 1;
                }
                column(Description_Line; Description)
                {
                }
                column(Description_Line_Lbl; FieldCaption(Description))
                {
                }
                column(LineDiscountPercent_Line; "Line Discount %")
                {
                }


                column(LineAmount_Line_Lbl; FieldCaption("Line Amount"))
                {
                }
                column(ItemNo_Line; "No.")
                {
                }
                column(ItemNo_Line_Lbl; FieldCaption("No."))
                {
                }
                column(ItemReferenceNo_Line; "Item Reference No.")
                {
                }
                column(ItemReferenceNo_Line_Lbl; FieldCaption("Item Reference No."))
                {
                }
                column(ShipmentDate_Line; Format("Shipment Date"))
                {
                }
                column(Quantity; Quantity) { }
                column(Service_Period_From; "Service Period From") { }
                column(Service_Period_To; "Service Period To") { }

                column(Quantity_Line_Lbl; FieldCaption(Quantity))
                {
                }



                column(UnitPrice_Lbl; FieldCaption("Unit Price"))
                {
                }
                column(UnitOfMeasure; "Unit of Measure")
                {
                }
                column(UnitOfMeasure_Lbl; FieldCaption("Unit of Measure"))
                {
                }
                column(VATIdentifier_Line; "VAT Identifier")
                {
                }
                column(VATIdentifier_Line_Lbl; FieldCaption("VAT Identifier"))
                {
                }
                column(GrandTotalAmount; GrandTotalAmount) { }
                column(VatAmount; VatAmount) { }
                column(TotalAmount; TotalAmount) { }
                column(Line_Amount; "Line Amount") { }
                column(Unit_Price; "Unit Price") { }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                column(Item_Category_Code; "Item Category Code") { }
                column(item_Category; itemCategory) { }
                column(LineAmountEXVAT; LineAmount) { }
                column(CustomMonth; CustomMonth) { DecimalPlaces = 0 : 1; }

                trigger OnAfterGetRecord()
                Var
                    FromDate: Date;
                    ToDate: Date;
                    Result: Decimal;
                begin
                    FromDate := "Service Period From";
                    ToDate := "Service Period To";
                    CustomMonth := CalculateCustomMonths(FromDate, ToDate);
                    LineAmount := "Unit Price" * Quantity;
                    TotalAmount += LineAmount;
                    VatAmount += "Amount Including VAT" - GetLineAmountExclVAT();
                    GrandTotalAmount += Amount - VatAmount;
                end;

            }
            trigger OnAfterGetRecord()
            var
                country_lrec: Record "Country/Region";
            begin
                country_lrec.Reset();
                if Header."Sell-to Country/Region Code" <> '' then begin
                    country_lrec.SetRange(Code, Header."Sell-to Country/Region Code");
                    if country_lrec.FindFirst() then
                        "Sell-to Country/Reigon Dec" := country_lrec.Name;
                end;
                Address1and2 := "Sell-to Address";
                if "Sell-to Address 2" <> '' then
                    Address1and2 := "Sell-to Address" + ', ' + "Sell-to Address 2";
                if "Sell-to City" <> '' then
                    CSZcode := "Sell-to City";
                if CSZcode <> '' then begin
                    if "Sell-to County" <> '' then
                        CSZcode := CSZcode + ', ' + "Sell-to County";
                end
                else
                    CSZcode := "Sell-to County";
                if CSZcode <> '' then begin
                    if "Sell-to Post Code" <> '' then
                        CSZcode := CSZcode + ', ' + "Sell-to Post Code";
                end
                else
                    CSZcode := "Sell-to Post Code";
                if CSZcode <> '' then begin
                    if "Sell-to Country/Reigon Dec" <> '' then
                        CSZcode := CSZcode + ', ' + "Sell-to Country/Reigon Dec";
                end
                else
                    CSZcode := "Sell-to Country/Reigon Dec";
            end;



        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
            }
        }

        actions
        {
        }


    }

    rendering
    {
        layout("StandardSalesInvoice_SG.rdlc")
        {
            Type = RDLC;
            LayoutFile = './Layouts/StandardSalesInvoice_SG.rdlc';
            Caption = 'Standard Sales Invoice License (RDLC)';
            Summary = 'The Standard Sales Invoice License (RDLC) is the most detailed layout and provides most flexible layout options.';
        }


    }



    trigger OnInitReport()
    var
        IsHandled: Boolean;
    begin
        DummyCompanyInfo.Get();
        DummyCompanyInfo.CalcFields(Picture);

        IsHandled := false;

    end;


    var
        CustomMonth: Decimal;
        GLSetup: Record "General Ledger Setup";
        DummyCompanyInfo: Record "Company Information";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        VATClause: Record "VAT Clause";
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        LanguageMgt: Codeunit Language;
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        AutoFormat: Codeunit "Auto Format";
        WorkDescriptionInstream: InStream;
        GrandTotalAmount: Decimal;

        VatAmount: Decimal;
        TotalAmount: Decimal;
        BalanceDue: Decimal;
        itemCategory: Text;
        LineAmount: Decimal;
        Address1and2: Text;
        CSZcode: Text;
        "Sell-to Country/Reigon Dec": Text;

    local procedure CalculateCustomMonths(FromDate: Date; ToDate: Date): Decimal

    var
        CurrentDate: Date;
        EndOfMonth: Date;
        DaysInMonth: Integer;
        DaysCount: Integer;
        Months: Decimal;
        FirstDayOfMonth: Date;
begin
        if (FromDate = 0D) or (ToDate = 0D) then
            exit(0);

        Months := 0;
        CurrentDate := FromDate;
        while CurrentDate <= ToDate do begin
            EndOfMonth := CalcDate('<CM>', CurrentDate);
            if EndOfMonth > ToDate then
                EndOfMonth := ToDate;
            FirstDayOfMonth := DMY2Date(1, Date2DMY(CurrentDate, 2), Date2DMY(CurrentDate, 3));
            DaysInMonth := CalcDate('<CM>', CurrentDate) - FirstDayOfMonth + 1;
            DaysCount := EndOfMonth - CurrentDate + 1;
            Months += DaysCount / DaysInMonth;
            CurrentDate := EndOfMonth + 1;
        end;

        exit(Round(Months, 0.1, '='));
    end;


}