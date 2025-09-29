report 50121 "Sales Invoice_SG"
{
    Caption = 'Sales - Invoice_SG';
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
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_County; "Sell-to County") { }
            column(Sell_to_Post_Code; "Sell-to Post Code") { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }

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
            column(DocumentDate; Format("Document Date", 0, 4))
            {
            }
            column(DocumentDate_Lbl; FieldCaption("Document Date"))
            {
            }
            column(DueDate; Format("Due Date", 0, 4))
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
                column(item_Category; itemCategory)
                {

                }
                column(LineAmountEXVAT; LineAmount) { }

                trigger OnAfterGetRecord()

                begin

                    LineAmount := "Unit Price" * Quantity;
                    TotalAmount += LineAmount;
                    VatAmount += "Amount Including VAT" - GetLineAmountExclVAT();
                    GrandTotalAmount += Amount - VatAmount;
                end;

            }
            trigger OnAfterGetRecord()
            begin

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
            Caption = 'Standard Sales Invoice (RDLC)';
            Summary = 'The Standard Sales Invoice (RDLC) is the most detailed layout and provides most flexible layout options.';
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


}

