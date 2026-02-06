

page 50104 "Sherweb_Invoices"
{
    ApplicationArea = All;
    Caption = 'Sherweb Invoices';
    PageType = Worksheet;
    SourceTable = "Invoice SG";
    CardPageId = "Sherweb Invoices";
    AutoSplitKey = true;
    DelayedInsert = true;
    // InsertAllowed = false;
    // ModifyAllowed = false;
    SaveValues = true;
    SourceTableView = sorting(InvoiceNo);
    UsageCategory = Tasks;
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
                field("Parent Customer"; Rec."Parent Customer")
                {
                    ApplicationArea = all;
                }
                field("Excluded Customer"; Rec."Excluded Customer")
                {
                    ApplicationArea = all;
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
                field("Exclude Item"; Rec."Exclude Item")
                {
                    ApplicationArea = all;
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
        area(processing)
        {
            // action("&Import")
            // {
            //     Caption = '&Import';
            //     Image = ImportExcel;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     ApplicationArea = All;
            //     ToolTip = 'Import data from excel.';

            //     trigger OnAction()
            //     var
            //     begin
            //         // ReadExcelSheet();
            //         // ImportExcelData();
            //         ImportFile();
            //     end;
            // }
            action("&Import CSV")
            {
                Caption = '&Import CSV';
                Image = ImportExcel;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Import data from excel.';

                trigger OnAction()
                var
                    instream: InStream;
                begin
                    // ReadCSVFile(instream);
                    ImportCSVData();
                    DataMgt.UpdateSherwebInvoiceStatus_SingleFlow();
                end;
            }
            action("Create Purchase order")
            {
                Caption = 'Purchase Invoice';
                Image = Purchase;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Create Purchase Order from Invoice SG data.';
                trigger OnAction()
                var
                    InvoiceRec: Record "Invoice SG";
                    PurchaseHeader: Record "Purchase Header";
                    PurchaseOrderNo: Code[20];
                begin
                    InvoiceRec.Copy(Rec);
                    CreatePurchaseOrder(InvoiceRec);
                    DataMgt.UpdateSherwebInvoiceStatus_SingleFlow();
                    ArchiveSherwebInvoiceLines();
                end;

            }
            // action("Create Sales Invoice")
            // {
            //     Caption = 'Sales Invoice';
            //     Image = Order;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     ApplicationArea = All;
            //     trigger OnAction()

            //     var
            //         SalesHeader: Record "Sales Header";
            //     begin
            //         CreateSalesOrders();
            //         DataMgt.UpdateSherwebInvoiceStatus_SingleFlow();
            //         ArchiveSherwebInvoiceLines();
            //     end;

            // }
            action("Create Sales Invoice")
            {
                Caption = 'Create Sales Invoice';
                Image = Order;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                // RunObject = page "Create Invoice_SG";
                trigger OnAction()
                var
                    Shareweb: Record "Invoice SG";
                    InvoiceCreat: Codeunit "SalesInvoiceCreation_SG";
                    ParentCust: Code[20];
                    InvDialouge: Page "Create Invoice_SG";
                    InvDate: Date;
                begin
                    if InvDialouge.RunModal() = Action::LookupOK then begin
                        // Shareweb.Reset();
                        // Shareweb.SetCurrentKey(InvoiceNo);
                        // Shareweb.SetAscending(InvoiceNo, true);
                        // Shareweb.SetRange("Excluded Customer", false);
                        // Shareweb.SetFilter("Parent Customer", '<>%1', '');
                        // if Shareweb.FindSet() then begin
                        //     repeat
                        //         if (ParentCust <> Shareweb."Parent Customer") then begin
                        //             InvDate := InvDialouge.GetInvoiceDate();
                        //             InvoiceCreat.CreateInvoicesForParent(Shareweb);
                        //             ParentCust := Shareweb."Parent Customer";
                        //         end;
                        //     until Shareweb.Next() = 0;
                        Message('Sales Invoice created successfully.');
                        // end;
                    end;
                end;


            }
            action(Itemcheck)
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    Shareweb: Record "Invoice SG";
                    Item: Record Item;
                    test: Text;
                begin
                    Shareweb.Reset();
                    if Shareweb.FindSet() then
                        repeat
                            Item.Reset();
                            Item.SetRange("No.", Shareweb.SKU);
                            if not Item.FindFirst() then begin
                                test += Shareweb.SKU + ' ,';
                                Message('%1', test);
                            end;
                        until Shareweb.Next() = 0;

                end;
            }
            action(CreateMissingItems)
            {
                Caption = 'Create Missing Items';
                ApplicationArea = All;
                Image = NewItem;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CreateMissingItemsFromSherweb();
                end;
            }
            action(UpdateSTatus)
            {
                Caption = 'Update Status';
                ApplicationArea = All;
                Image = NewItem;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    DataMgt.UpdateSherwebInvoiceStatus_SingleFlow();
                end;
            }



        }
        area(Navigation)
        {

            action(ImportData)
            {

            }
            action(PurchaseOrder)
            {

            }
            action(EditInExcel)
            {

            }
            action(salesOrder)
            {

            }
        }
    }
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        FileName: Text[100];
        SheetName: Text[100];
        UploadExcelMsg: Label 'Upload Excel file', MaxLength = 50;
        NoFileFoundMsg: Label 'No file found', MaxLength = 50;
        ExcelImportSuccess: Label 'Excel data imported successfully', MaxLength = 50;

        DataMgt: Codeunit "Data Management";



    local procedure ArchiveSherwebInvoiceLines()
    var
        InvoiceRec: Record "Invoice SG";
        InvoiceArchive: Record "Invoice SG(Archived)";
    begin
        InvoiceRec.Reset();
        InvoiceRec.SetRange(PSI, true);
        InvoiceRec.SetRange(PPI, true);

        if InvoiceRec.FindSet() then
            repeat
                InvoiceArchive.Init();
                InvoiceArchive."Line No" := InvoiceRec."Line No";
                InvoiceArchive."InvoiceNo" := InvoiceRec."InvoiceNo";
                InvoiceArchive."Organization" := InvoiceRec."Organization";
                InvoiceArchive."Description" := InvoiceRec."Description";
                InvoiceArchive."InvoicingDate" := InvoiceRec."InvoicingDate";
                InvoiceArchive."InvoicePeriodFrom" := InvoiceRec."InvoicePeriodFrom";
                InvoiceArchive."InvoicePeriodTo" := InvoiceRec."InvoicePeriodTo";
                InvoiceArchive."ServicePeriodFrom" := InvoiceRec."ServicePeriodFrom";
                InvoiceArchive."ServicePeriodTo" := InvoiceRec."ServicePeriodTo";
                InvoiceArchive."Qty" := InvoiceRec."Qty";
                InvoiceArchive."SKU" := InvoiceRec."SKU";
                InvoiceArchive."Customer List Price" := InvoiceRec."Customer List Price";
                InvoiceArchive."ListPrice" := InvoiceRec."ListPrice";
                InvoiceArchive."Discounted Price NotProrated" := InvoiceRec."Discounted Price NotProrated";
                InvoiceArchive."Unit Cost" := InvoiceRec."Unit Cost";
                InvoiceArchive."LineTotal" := InvoiceRec."LineTotal";
                InvoiceArchive."Organization SubTotal" := InvoiceRec."Organization SubTotal";
                InvoiceArchive."Reseller SubTotal" := InvoiceRec."Reseller SubTotal";
                InvoiceArchive."Invoice SubTotal" := InvoiceRec."Invoice SubTotal";
                InvoiceArchive."HST" := InvoiceRec."HST";
                InvoiceArchive."PST" := InvoiceRec."PST";
                InvoiceArchive."GST" := InvoiceRec."GST";
                InvoiceArchive."Grand Total" := InvoiceRec."Grand Total";
                InvoiceArchive."Currency" := InvoiceRec."Currency";
                InvoiceArchive."Apply tax(es)" := InvoiceRec."Apply tax(es)";
                InvoiceArchive."MD - STATE SALES/USE TAX" := InvoiceRec."MD - STATE SALES/USE TAX";
                InvoiceArchive."US - FEDERAL TELECOM " := InvoiceRec."US - FEDERAL TELECOM ";
                InvoiceArchive."US - FEDERAL TELEPHONE EXCISE" := InvoiceRec."US - FEDERAL TELEPHONE EXCISE";
                InvoiceArchive."US - FEDERAL UNIVERSAL SERVICE" := InvoiceRec."US - FEDERAL UNIVERSAL SERVICE";
                InvoiceArchive."US - FEDERAL NUMBERING " := InvoiceRec."US - FEDERAL NUMBERING ";
                InvoiceArchive."US-FEDERAL COMMUNICATIONS" := InvoiceRec."US-FEDERAL COMMUNICATIONS";
                InvoiceArchive."US - FEDERAL TELECOM RELAY" := InvoiceRec."US - FEDERAL TELECOM RELAY";
                InvoiceArchive."MD - STATE E911 FEES" := InvoiceRec."MD - STATE E911 FEES";
                InvoiceArchive."MD - STATE UNIVERSAL SERVICE" := InvoiceRec."MD - STATE UNIVERSAL SERVICE";
                InvoiceArchive."MD - STATE PUBLIC UTILITY" := InvoiceRec."MD - STATE PUBLIC UTILITY";
                InvoiceArchive."MD - STATE PUBLIC SERVICE TAX" := InvoiceRec."MD - STATE PUBLIC SERVICE TAX";
                InvoiceArchive."MD-MONTGOMERY COUNTY,TELEPHONE" := InvoiceRec."MD-MONTGOMERY COUNTY,TELEPHONE";
                InvoiceArchive."SI" := InvoiceRec."SI";
                InvoiceArchive."PSI" := InvoiceRec."PSI";
                InvoiceArchive."PI" := InvoiceRec."PI";
                InvoiceArchive."PPI" := InvoiceRec."PPI";

                // Insert into archive
                InvoiceArchive.Insert();

                // Delete the original record
                InvoiceRec.Delete();
            until InvoiceRec.Next() = 0;

        Message('All PSI/PPI Sherweb invoice lines archived successfully.');
    end;




    //CReate Items
    local procedure CreateMissingItemsFromSherweb()
    var
        InvoiceSG: Record "Invoice SG";
        Item: Record Item;
        CreatedCount: Integer;
    begin
        if not Confirm('Create missing items using subscription template?', false) then
            exit;

        CreatedCount := 0;

        InvoiceSG.Reset();
        InvoiceSG.SetFilter(sku, '<>%1', '');

        if InvoiceSG.FindSet() then
            repeat
                if InvoiceSG.sku <> '' then begin
                    if not Item.Get(InvoiceSG.sku) then begin
                        CreateItemFromTemplate(InvoiceSG.sku, InvoiceSG.Description, InvoiceSG."Unit Cost", InvoiceSG.ListPrice);
                        CreatedCount += 1;
                    end;
                end;
            until InvoiceSG.Next() = 0;

        Message('%1 new item(s) created successfully.', CreatedCount);
    end;

    local procedure CreateItemFromTemplate(ItemNo: Code[20]; Description: Text; UnitCost: Decimal;
        UnitPrice: Decimal
    ): Code[20]
    var
        Item: Record Item;
        ItemTemplate: Record "Item Templ.";
        ItemTemplateMgt: Codeunit "Item Templ. Mgt.";
        GLSetup: Record "General Ledger Setup";
        ishandled: Boolean;
    begin
        ishandled := false;
        if ItemNo = '' then
            exit('');

        if Item.Get(ItemNo) then
            exit(Item."No.");

        GLSetup.Get();

        if GLSetup."Subscription Item Template" = '' then
            Error('Subscription Item Template is not set in General Ledger Setup.');

        ItemTemplate.Get(GLSetup."Subscription Item Template");

        Item.Init();
        Item."No." := ItemNo;
        ItemTemplateMgt.CreateItemFromTemplate(Item, ishandled, ItemTemplate.Code);

        Item.Description := CopyStr(Description, 1, MaxStrLen(Item.Description));
        Item."Unit Cost" := UnitCost;
        Item."Unit Price" := UnitPrice;

        Item.Modify(true);

        exit(Item."No.");
    end;





    local procedure ReadCSVFile(var InStr: InStream)
    var
        FromFile: Text;
    begin
        UploadIntoStream('Upload CSV File', '', 'CSV files (*.csv)|*.csv', FromFile, InStr);

        if FromFile = '' then
            Error('No file selected');
    end;


    local procedure UploadCSV(var InStr: InStream)
    var
        FromFile: Text;
    begin
        UploadIntoStream('Upload CSV File', '', 'CSV files (*.csv)|*.csv', FromFile, InStr);

        if FromFile = '' then
            Error('No file selected.');
    end;




    local procedure ParseCSVDate(DateTxt: Text): Date
    var
        Parts: List of [Text];
        M: Integer;
        D: Integer;
        Y: Integer;
    begin
        DateTxt := DelChr(DateTxt, '=', '"');

        if DateTxt = '' then
            exit(0D);
        Parts := DateTxt.Split('/');

        if Parts.Count <> 3 then
            exit(0D);
        if not Evaluate(M, Parts.Get(1)) then exit(0D);
        if not Evaluate(D, Parts.Get(2)) then exit(0D);
        if not Evaluate(Y, Parts.Get(3)) then exit(0D);
        exit(DMY2Date(D, M, Y));
    end;

    local procedure ParseCSVDecimal(ValueTxt: Text): Decimal
    var
        Result: Decimal;
    begin
        ValueTxt := DelChr(ValueTxt, '=', '"');

        if ValueTxt = '' then
            exit(0);

        if not Evaluate(Result, ValueTxt) then
            exit(0);

        exit(Result);
    end;

    local procedure GetCSVColumn(Line: Text; ColNo: Integer): Text
    var
        i: Integer;
        CurrCol: Integer;
        InQuotes: Boolean;
        Ch: Char;
        Value: Text;
    begin
        CurrCol := 1;
        InQuotes := false;
        Value := '';

        for i := 1 to StrLen(Line) do begin
            Ch := Line[i];

            case Ch of
                '"':
                    InQuotes := not InQuotes;

                ',':
                    if not InQuotes then begin
                        if CurrCol = ColNo then
                            exit(DelChr(Value, '=', '"'));
                        CurrCol += 1;
                        Value := '';
                    end else
                        Value += Ch;
                else
                    Value += Ch;
            end;
        end;


        if CurrCol = ColNo then
            exit(DelChr(Value, '=', '"'));

        exit('');
    end;



    procedure ImportCSVData()
    var
        InStr: InStream;
        Line: Text;
        LineNo: Integer;
        SOImportBuffer: Record "Invoice SG";

        InvoicingDateVar: Date;
        InvFromVar: Date;
        InvToVar: Date;
        ServFromVar: Date;
        ServToVar: Date;
    begin
        UploadCSV(InStr);

        if SOImportBuffer.FindLast() then
            LineNo := SOImportBuffer."Line No"
        else
            LineNo := 0;

        InStr.ReadText(Line);

        while not InStr.EOS do begin
            InStr.ReadText(Line);

            LineNo += 10000;
            SOImportBuffer.Init();
            SOImportBuffer."Line No" := LineNo;
            SOImportBuffer.InvoiceNo := GetCSVColumn(Line, 1);

            SOImportBuffer.InvoicingDate := ParseCSVDate(GetCSVColumn(Line, 2));

            SOImportBuffer.InvoicePeriodFrom := ParseCSVDate(GetCSVColumn(Line, 3));

            SOImportBuffer.InvoicePeriodTo :=
                ParseCSVDate(GetCSVColumn(Line, 4));

            SOImportBuffer.ServicePeriodFrom :=
                ParseCSVDate(GetCSVColumn(Line, 5));

            SOImportBuffer.ServicePeriodTo :=
                ParseCSVDate(GetCSVColumn(Line, 6));


            SOImportBuffer.Qty := ParseCSVDecimal(GetCSVColumn(Line, 17));

            // SOImportBuffer.Organization := GetCSVColumn(Line, 18);
            SOImportBuffer.Validate(Organization, GetCSVColumn(Line, 18));

            SOImportBuffer.Description :=
                GetCSVColumn(Line, 19);

            SOImportBuffer.sku :=
                GetCSVColumn(Line, 20);

            SOImportBuffer."Discounted Price NotProrated" :=
                ParseCSVDecimal(GetCSVColumn(Line, 21));

            SOImportBuffer.ListPrice :=
                ParseCSVDecimal(GetCSVColumn(Line, 22));

            SOImportBuffer."Unit Cost" :=
                ParseCSVDecimal(GetCSVColumn(Line, 23));

            SOImportBuffer.LineTotal :=
                ParseCSVDecimal(GetCSVColumn(Line, 24));

            SOImportBuffer."Organization SubTotal" :=
                ParseCSVDecimal(GetCSVColumn(Line, 25));

            SOImportBuffer."Reseller SubTotal" :=
                ParseCSVDecimal(GetCSVColumn(Line, 26));

            SOImportBuffer."Invoice SubTotal" :=
                ParseCSVDecimal(GetCSVColumn(Line, 27));

            SOImportBuffer.HST :=
                ParseCSVDecimal(GetCSVColumn(Line, 28));

            SOImportBuffer.PST :=
                ParseCSVDecimal(GetCSVColumn(Line, 29));

            SOImportBuffer.GST :=
                ParseCSVDecimal(GetCSVColumn(Line, 30));

            SOImportBuffer."Grand Total" :=
                ParseCSVDecimal(GetCSVColumn(Line, 31));

            SOImportBuffer.Currency :=
                GetCSVColumn(Line, 32);

            Evaluate(
                SOImportBuffer."Apply tax(es)",
                GetCSVColumn(Line, 33)
            );

            SOImportBuffer."MD - STATE SALES/USE TAX" :=
                ParseCSVDecimal(GetCSVColumn(Line, 34));
            if SOImportBuffer."Discounted Price NotProrated" <> 0 then
                if SOImportBuffer."Unit Cost" <> 0 then
                    SOImportBuffer."Customer List Price" :=
                        (SOImportBuffer."Unit Cost" / SOImportBuffer."Discounted Price NotProrated") * SOImportBuffer.ListPrice;

            SOImportBuffer.Insert();
        end;

        Message('CSV data imported successfully.');
    end;




    //Excel importer procedures
    local procedure ReadExcelSheet()
    var
        FileMgt: Codeunit "File Management";
        FromFile: Text[100];
        IStream: InStream;
    begin
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
        end else
            Error(NoFileFoundMsg);

        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(IStream, SheetName);
        TempExcelBuffer.ReadSheet();
    end;

    procedure CreatePurchaseOrder(Invoice_lrec: Record "Invoice SG")
    var
        Purchasehdr_lrec: Record "Purchase Header";
        Purchaseandrec: Record "Purchases & Payables Setup";
        NoSeries: Codeunit "No. Series";
        AMBInvoice_lrec: Record "Invoice SG";
        VendorRec: Record Vendor;
        vendorNo: Code[20];
    begin
        Purchaseandrec.Get();
        Purchaseandrec.TestField("Sherweb Vendor Code");

        vendorNo := Purchaseandrec."Sherweb Vendor Code";
        VendorRec.Get(vendorNo);

        if UpperCase(VendorRec.Name) = UpperCase(Invoice_lrec.Organization) then
            exit;
        Purchasehdr_lrec.Reset();
        Purchasehdr_lrec.SetRange("Document Type", Purchasehdr_lrec."Document Type"::Invoice);
        Purchasehdr_lrec.SetRange("Vendor Invoice No.", Invoice_lrec.InvoiceNo);
        if Purchasehdr_lrec.FindFirst() then
            Error('Purchase Invoice with Vendor Invoice No. %1 already exists.', Invoice_lrec.InvoiceNo);

        Purchaseandrec.TestField("Invoice Nos.");

        Purchasehdr_lrec.Init();
        Purchasehdr_lrec."No." :=
            NoSeries.GetNextNo(Purchaseandrec."Invoice Nos.", Today, true);

        Purchasehdr_lrec."Document Type" := Purchasehdr_lrec."Document Type"::Invoice;
        Purchasehdr_lrec.Validate("Buy-from Vendor No.", vendorNo);
        Purchasehdr_lrec."Document Date" := Today();
        Purchasehdr_lrec."Vendor Invoice No." := Invoice_lrec.InvoiceNo;
        Purchasehdr_lrec.Insert(true);

        // Create Lines
        AMBInvoice_lrec.Reset();
        AMBInvoice_lrec.SetRange("InvoiceNo", Invoice_lrec.InvoiceNo);
        if AMBInvoice_lrec.FindSet() then
            repeat
                CreatePurchaseLine(Purchasehdr_lrec, AMBInvoice_lrec);
            until AMBInvoice_lrec.Next() = 0
        else
            Error('No invoice lines found for Invoice No. %1.', Invoice_lrec.InvoiceNo);

        Message('Purchase Invoice %1 created successfully.', Purchasehdr_lrec."No.");


        if Dialog.Confirm(
            'Purchase Invoice has been created successfully. Do you want to open it?', true)
        then
            Page.Run(PAGE::"Purchase Invoice", Purchasehdr_lrec);
    end;




    procedure CreatePurchaseLine(Purchasehdr: Record "Purchase Header"; Invoice_lrec: Record "Invoice SG")
    var
        Purchase_lrec: Record "Purchase Line";
        Nextno: Integer;
    begin
        Purchase_lrec.SetRange("Document No.", Purchasehdr."No.");
        Purchase_lrec.SetRange("Document Type", Purchasehdr."Document Type"::Invoice);
        if Purchase_lrec.FindLast() then
            Nextno := Purchase_lrec."Line No." + 10000
        else
            Nextno := 10000;
        Purchase_lrec.Init();
        Purchase_lrec."Document Type" := Purchasehdr."Document Type";
        Purchase_lrec."Document No." := Purchasehdr."No.";
        Purchase_lrec."Line No." := Nextno;
        Purchase_lrec.Validate("Type", Purchase_lrec."Type"::Item);
        Purchase_lrec.Validate("No.", Invoice_lrec."SKU");
        Purchase_lrec."Description 2" := Invoice_lrec.Organization;
        Purchase_lrec.Description := CopyStr(Invoice_lrec.Description, 1, MaxStrLen(Purchase_lrec.Description));
        Purchase_lrec."Service Period From" := Invoice_lrec."ServicePeriodFrom";
        Purchase_lrec."Service Period To" := Invoice_lrec."ServicePeriodTo";
        if Invoice_lrec.Qty = 0 then begin
            Purchase_lrec.Validate(Quantity, 1);
        end
        else begin
            Purchase_lrec.Validate(Quantity, Invoice_lrec.Qty);
        end;
        if Invoice_lrec."Unit Cost" <= 0 then
            Purchase_lrec.Validate("Direct Unit Cost", Invoice_lrec."LineTotal" / Purchase_lrec.Quantity)
        else
            Purchase_lrec.Validate("Direct Unit Cost", Invoice_lrec."Unit Cost");
        // Purchase_lrec.Validate("Line Amount", Invoice_lrec."LineTotal");

        Purchase_lrec.Insert();
    end;

    local procedure CreateSalesOrders()
    var
        SalesHdr: Record "Sales Header";
        PostedSalesHdr: Record "Sales Invoice Header";
        CustomerRec: Record Customer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit "No. Series";
        InvoiceAMBRec: Record "Invoice SG";
        LinesAMB: Record "Invoice SG";
        OrgCode: Text[100];
        CurrInvoiceNo: Code[20];
        CreatedCount: Integer;
        SkippedCount: Integer;
        AlreadyExists: Boolean;
    begin
        SalesSetup.Get();
        SalesSetup.TestField("Invoice Nos.");

        CreatedCount := 0;
        SkippedCount := 0;

        if InvoiceAMBRec.FindSet() then
            repeat
                OrgCode := InvoiceAMBRec.Organization;
                CurrInvoiceNo := InvoiceAMBRec.InvoiceNo;

                CustomerRec.SetRange("Sherweb Customer Name", OrgCode);
                if not CustomerRec.FindFirst() then
                    Error('Customer with Organization %1 not found.', OrgCode);

                AlreadyExists := false;

                SalesHdr.Reset();
                SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
                SalesHdr.SetRange("Sell-to Customer No.", CustomerRec."No.");
                SalesHdr.SetRange("External Document No.", CurrInvoiceNo);
                if SalesHdr.FindFirst() then
                    AlreadyExists := true;
                PostedSalesHdr.Reset();
                PostedSalesHdr.SetRange("Sell-to Customer No.", CustomerRec."No.");
                PostedSalesHdr.SetRange("External Document No.", CurrInvoiceNo);
                if PostedSalesHdr.FindFirst() then
                    AlreadyExists := true;

                if AlreadyExists then begin
                    SkippedCount += 1;
                end else begin
                    SalesHdr.Init();
                    SalesHdr."No." := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
                    SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
                    SalesHdr.Validate("Sell-to Customer No.", CustomerRec."No.");
                    SalesHdr."External Document No." := CurrInvoiceNo;
                    SalesHdr."Document Date" := Today();
                    SalesHdr.Insert();
                    LinesAMB.Reset();
                    LinesAMB.SetRange(Organization, OrgCode);
                    LinesAMB.SetRange(InvoiceNo, CurrInvoiceNo);
                    if LinesAMB.FindSet() then
                        repeat
                            CreateSalesLine(SalesHdr, LinesAMB);
                        until LinesAMB.Next() = 0;

                    CreatedCount += 1;
                end;

            until InvoiceAMBRec.Next() = 0;
        Message('Sales Invoice Created: %1, Skipped: %2', CreatedCount, SkippedCount);
        ArchiveSherwebInvoiceLines();
    end;






    procedure CreateSalesLine(Saleshdr: Record "Sales Header"; Invoice_lrec: Record "Invoice SG")
    var
        salesLine_lrec: Record "Sales Line";
        Nextno: Integer;
    begin


        salesLine_lrec.SetRange("Document No.", Saleshdr."No.");
        salesLine_lrec.SetRange("Document Type", Saleshdr."Document Type"::Invoice);
        if salesLine_lrec.FindLast() then
            Nextno := salesLine_lrec."Line No." + 10000
        else
            Nextno := 10000;

        salesLine_lrec.Init();

        salesLine_lrec."Document Type" := Saleshdr."Document Type";
        salesLine_lrec."Document No." := Saleshdr."No.";
        salesLine_lrec."Line No." := Nextno;
        if salesLine_lrec.Insert(true) then begin

            salesLine_lrec."Type" := salesLine_lrec."Type"::Item;
            salesLine_lrec.Validate("No.", Invoice_lrec."SKU");
            salesLine_lrec.Validate("Service Period From", Invoice_lrec."ServicePeriodFrom");
            salesLine_lrec.Validate("Service Period To", Invoice_lrec."ServicePeriodTo");
            salesLine_lrec.Description := CopyStr(Invoice_lrec.Description, 1, MaxStrLen(salesLine_lrec.Description));
            salesLine_lrec.Details := Invoice_lrec.Description;
            if Invoice_lrec."Customer List Price" <> 0 then
                salesLine_lrec.Validate("Unit Price", Invoice_lrec."Customer List Price")
            else
                salesLine_lrec."Unit Price" := Invoice_lrec."Customer List Price";
            if Invoice_lrec.Qty = 0 then begin
                salesLine_lrec.Validate(Quantity, 1);
            end
            else begin
                salesLine_lrec.Validate(Quantity, Invoice_lrec.Qty);
            end;

            // if Invoice_lrec.LineTotal <> 0 then
            //     salesLine_lrec.Validate("Line Amount", Invoice_lrec.LineTotal);
            if Invoice_lrec."Unit Cost" = 0 then
                salesLine_lrec.Validate("Unit Cost", Invoice_lrec."Unit Cost")
            else
                salesLine_lrec."Unit Cost" := Invoice_lrec."Unit Cost";
            salesLine_lrec.Modify();
        end;
    end;






}

