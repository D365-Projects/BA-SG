

page 50104 "Sherweb_Invoices"
{
    ApplicationArea = All;
    Caption = 'Sherweb Invoices';
    PageType = Worksheet;
    ;
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
                }
                field(SKU; Rec.SKU)
                {
                    ToolTip = 'Specifies the value of the SKU field.', Comment = '%';
                }
                field("Customer List Price"; Rec."Customer List Price")
                {
                    ToolTip = 'Specifies the value of the Customer List Price field.', Comment = '%';
                    Editable = true;
                }
                field(ListPrice; Rec.ListPrice)
                {
                    ToolTip = 'Specifies the value of the ListPrice field.', Comment = '%';
                }
                field("Discounted Price NotProrated"; Rec."Discounted Price NotProrated")
                {
                    ToolTip = 'Specifies the value of the Discounted Price NotProrated field.', Comment = '%';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ToolTip = 'Specifies the value of the UnitPrice field.', Comment = '%';
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
                }
                field("US - FEDERAL TELECOM "; Rec."US - FEDERAL TELECOM ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELECOM RELAY SERVICE SURCHARGE field.', Comment = '%';
                }
                field("US - FEDERAL TELEPHONE EXCISE"; Rec."US - FEDERAL TELEPHONE EXCISE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELEPHONE EXCISE TAX field.', Comment = '%';
                }
                field("US - FEDERAL UNIVERSAL SERVICE"; Rec."US - FEDERAL UNIVERSAL SERVICE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL UNIVERSAL SERVICE FUND SURCHARGE field.', Comment = '%';
                }
                field("US - FEDERAL NUMBERING "; Rec."US - FEDERAL NUMBERING ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL NUMBERING PLAN SURCHARGE field.', Comment = '%';
                }
                field("US-FEDERAL COMMUNICATIONS"; Rec."US-FEDERAL COMMUNICATIONS")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL COMMUNICATIONS COMMISSION REGULATORY FEE field.', Comment = '%';
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

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Import")
            {
                Caption = '&Import';
                Image = ImportExcel;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Import data from excel.';

                trigger OnAction()
                var
                begin
                    ReadExcelSheet();
                    ImportExcelData();
                end;
            }
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

                end;

            }
            action("Create Sales Invoice")
            {
                Caption = 'Sales Invoice';
                Image = Order;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()

                var
                    SalesHeader: Record "Sales Header";
                begin
                    CreateSalesOrders();
                end;

            }
            // action("Validate SKU")
            // {
            //     Caption = 'Validate SKU';
            //     Image = Order;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     ApplicationArea = All;
            //     ToolTip = 'Create Sales Order from Invoice SG data.';
            //     trigger OnAction()

            //     var
            //         InvoiceAMB_lrec: Record "Invoice SG";
            //         Item_lrec: Record Item;
            //         Item_Found: Integer;
            //     begin
            //         Item_lrec.Reset();
            //         InvoiceAMB_lrec.Reset();
            //         Item_lrec.Get();
            //         InvoiceAMB_lrec.Get();
            //         if InvoiceAMB_lrec.FindSet()then begin
            //             repeat
            //             Item_lrec.SetRange(sk);
            //             until InvoiceAMB_lrec.Next()=0;
            //         end;
            //     end;

            // }

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

    local procedure ReadCSVFile(var InStr: InStream)
    var
        FromFile: Text;
    begin
        UploadIntoStream(
            'Upload CSV File',
            '',
            'CSV files (*.csv)|*.csv',
            FromFile,
            InStr
        );

        if FromFile = '' then
            Error('No file selected');
    end;


    local procedure UploadCSV(var InStr: InStream)
    var
        FromFile: Text;
    begin
        UploadIntoStream(
            'Upload CSV File',
            '',
            'CSV files (*.csv)|*.csv',
            FromFile,
            InStr
        );

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
                    InQuotes := not InQuotes; // toggle quotes

                ',':
                    if not InQuotes then begin
                        if CurrCol = ColNo then
                            exit(DelChr(Value, '=', '"')); // remove quotes
                        CurrCol += 1;
                        Value := '';
                    end else
                        Value += Ch; // comma inside quotes
                else
                    Value += Ch;
            end;
        end;

        // last column
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

        // Skip header
        InStr.ReadText(Line);

        while not InStr.EOS do begin
            InStr.ReadText(Line);

            LineNo += 10000;
            SOImportBuffer.Init();
            SOImportBuffer."Line No" := LineNo;

            // ===== BASIC INFO =====
            SOImportBuffer.InvoiceNo := GetCSVColumn(Line, 1);

            SOImportBuffer.InvoicingDate :=
                ParseCSVDate(GetCSVColumn(Line, 2));

            SOImportBuffer.InvoicePeriodFrom :=
                ParseCSVDate(GetCSVColumn(Line, 3));

            SOImportBuffer.InvoicePeriodTo :=
                ParseCSVDate(GetCSVColumn(Line, 4));

            SOImportBuffer.ServicePeriodFrom :=
                ParseCSVDate(GetCSVColumn(Line, 5));

            SOImportBuffer.ServicePeriodTo :=
                ParseCSVDate(GetCSVColumn(Line, 6));

            SOImportBuffer.Qty :=
                ParseCSVDecimal(GetCSVColumn(Line, 17));

            SOImportBuffer.Organization :=
                GetCSVColumn(Line, 18);

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


            // ===== DERIVED PRICE =====
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


    procedure ImportExcelData()
    var
        SOImportBuffer: Record "Invoice SG";
        RowNo: Integer;
    LineNo: Integer;
    MaxRowNo: Integer;
    InvFromVar: Date;
    InvToVar: Date;
    InvoicingDateVar: Date;
    ServFromVar: Date;
    ServToVar: Date;
begin
        RowNo := 0;
        MaxRowNo := 0;
        LineNo := 0;

        SOImportBuffer.Reset();
        if SOImportBuffer.FindLast() then
            LineNo := SOImportBuffer."Line No";

        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then
            MaxRowNo := TempExcelBuffer."Row No.";

        for RowNo := 2 to MaxRowNo do begin
            LineNo := LineNo + 10000;
            SOImportBuffer.Init();
            SOImportBuffer."Line No" := LineNo;

            SOImportBuffer.InvoiceNo := GetValueAtCell(RowNo, 1);
            SOImportBuffer.Organization := GetValueAtCell(RowNo, 18);
            SOImportBuffer.Description := GetValueAtCell(RowNo, 19);

            if not Evaluate(InvoicingDateVar, GetValueAtCell(RowNo, 4)) then
                InvoicingDateVar := 0D;
            SOImportBuffer.InvoicingDate := InvoicingDateVar;
            if not Evaluate(InvFromVar, GetValueAtCell(RowNo, 5)) then
                InvFromVar := 0D;
            SOImportBuffer.InvoicePeriodFrom := InvFromVar;
            if not Evaluate(InvToVar, GetValueAtCell(RowNo, 6)) then
                InvToVar := 0D;
            SOImportBuffer.InvoicePeriodTo := InvToVar;
            if not Evaluate(ServFromVar, GetValueAtCell(RowNo, 7)) then
                ServFromVar := 0D;
            if ServFromVar = 0D then
                ServFromVar := InvFromVar;
            SOImportBuffer.ServicePeriodFrom := ServFromVar;
            if not Evaluate(ServToVar, GetValueAtCell(RowNo, 8)) then
                ServToVar := 0D;
            if ServToVar = 0D then
                ServToVar := InvToVar;
            SOImportBuffer.ServicePeriodTo := ServToVar;
            if not Evaluate(SOImportBuffer.Qty, GetValueAtCell(RowNo, 17)) then
                SOImportBuffer.Qty := 0;
            if not Evaluate(SOImportBuffer.sku, GetValueAtCell(RowNo, 20)) then
                SOImportBuffer.sku := '';
            if not Evaluate(SOImportBuffer.ListPrice, GetValueAtCell(RowNo, 21)) then
                SOImportBuffer.ListPrice := 0.00;
            if not Evaluate(SOImportBuffer."Discounted Price NotProrated", GetValueAtCell(RowNo, 22)) then
                SOImportBuffer."Discounted Price NotProrated" := 0.00;
            if not Evaluate(SOImportBuffer."Unit Cost", GetValueAtCell(RowNo, 23)) then
                SOImportBuffer."Unit Cost" := 0.00;
            if not Evaluate(SOImportBuffer.LineTotal, GetValueAtCell(RowNo, 24)) then
                SOImportBuffer.LineTotal := 0.00;
            if not Evaluate(SOImportBuffer."Organization SubTotal", GetValueAtCell(RowNo, 25)) then
                SOImportBuffer."Organization SubTotal" := 0.00;
            if not Evaluate(SOImportBuffer."Reseller SubTotal", GetValueAtCell(RowNo, 26)) then
                SOImportBuffer."Reseller SubTotal" := 0.00;
            if not Evaluate(SOImportBuffer."Invoice SubTotal", GetValueAtCell(RowNo, 27)) then
                SOImportBuffer."Invoice SubTotal" := 0.00;
            if not Evaluate(SOImportBuffer.HST, GetValueAtCell(RowNo, 28)) then
                SOImportBuffer.HST := 0.00;
            if not Evaluate(SOImportBuffer.PST, GetValueAtCell(RowNo, 29)) then
                SOImportBuffer.PST := 0.00;
            if not Evaluate(SOImportBuffer.GST, GetValueAtCell(RowNo, 30)) then
                SOImportBuffer.GST := 0.00;
            if not Evaluate(SOImportBuffer."Grand Total", GetValueAtCell(RowNo, 31)) then
                SOImportBuffer."Grand Total" := 0.00;
            if not Evaluate(SOImportBuffer.Currency, GetValueAtCell(RowNo, 32)) then
                SOImportBuffer.Currency := '';
            if not Evaluate(SOImportBuffer."Apply tax(es)", GetValueAtCell(RowNo, 33)) then
                SOImportBuffer."Apply tax(es)" := false;
            if not Evaluate(SOImportBuffer."MD - STATE SALES/USE TAX", GetValueAtCell(RowNo, 34)) then
                SOImportBuffer."MD - STATE SALES/USE TAX" := 0.00;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELECOM ", GetValueAtCell(RowNo, 35)) then
                SOImportBuffer."US - FEDERAL TELECOM " := 0.00;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELEPHONE EXCISE", GetValueAtCell(RowNo, 36)) then
                SOImportBuffer."US - FEDERAL TELEPHONE EXCISE" := 0.00;
            if not Evaluate(SOImportBuffer."US - FEDERAL UNIVERSAL SERVICE", GetValueAtCell(RowNo, 37)) then
                SOImportBuffer."US - FEDERAL UNIVERSAL SERVICE" := 0.00;
            if not Evaluate(SOImportBuffer."US - FEDERAL NUMBERING ", GetValueAtCell(RowNo, 38)) then
                SOImportBuffer."US - FEDERAL NUMBERING " := 0.00;
            if not Evaluate(SOImportBuffer."US-FEDERAL COMMUNICATIONS", GetValueAtCell(RowNo, 39)) then
                SOImportBuffer."US-FEDERAL COMMUNICATIONS" := 0.00;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELECOM RELAY", GetValueAtCell(RowNo, 40)) then
                SOImportBuffer."US - FEDERAL TELECOM RELAY" := 0.00;
            if not Evaluate(SOImportBuffer."MD - STATE E911 FEES", GetValueAtCell(RowNo, 41)) then
                SOImportBuffer."MD - STATE E911 FEES" := 0.00;
            if not Evaluate(SOImportBuffer."MD - STATE UNIVERSAL SERVICE", GetValueAtCell(RowNo, 42)) then
                SOImportBuffer."MD - STATE UNIVERSAL SERVICE" := 0.00;
            if not Evaluate(SOImportBuffer."MD - STATE PUBLIC UTILITY", GetValueAtCell(RowNo, 43)) then
                SOImportBuffer."MD - STATE PUBLIC UTILITY" := 0.00;
            if not Evaluate(SOImportBuffer."MD - STATE PUBLIC SERVICE TAX", GetValueAtCell(RowNo, 44)) then
                SOImportBuffer."MD - STATE PUBLIC SERVICE TAX" := 0.00;
            if not Evaluate(SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE", GetValueAtCell(RowNo, 45)) then
                SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE" := 0.00;
            if SOImportBuffer."Discounted Price NotProrated" <> 0.00 then
                if SOImportBuffer."Unit Cost" <> 0.00 then
                    SOImportBuffer."Customer List Price" := (SOImportBuffer."Unit Cost" / SOImportBuffer."Discounted Price NotProrated") * SOImportBuffer.ListPrice
                else
                    SOImportBuffer."Customer List Price" := 0.00;

            SOImportBuffer.Insert();
        end;

        Message('Data imported successfully from Excel.');
    end;




    local procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExcelBuffer.Reset();
        if TempExcelBuffer.Get(RowNo, ColNo) then
            exit(TempExcelBuffer."Cell Value as Text")
        else
            exit('');
    end;

    procedure CreatePurchaseOrder(Invoice_lrec: Record "Invoice SG")
    var
        Purchasehdr_lrec: Record "Purchase Header";
        Cust_lrec: Record Customer;
        Purchaseandrec: Record "Purchases & Payables Setup";
        NoSeries: Codeunit "No. Series";
        AMBInvoice_lrec: Record "Invoice SG";
        VendorRec: Record Vendor;
        VendorSelected: Boolean;
        vendorNo: Code[20];
    begin
        Purchaseandrec.Reset();
        Purchaseandrec.Get();
        if Purchaseandrec."Sherweb Vendor Code" <> '' then begin
            // if PAGE.RunModal(PAGE::"Vendor List", VendorRec) = ACTION::LookupOK then begin
            vendorNo := Purchaseandrec."Sherweb Vendor Code";
            VendorSelected := true;
            Purchasehdr_lrec.Reset();
        Purchasehdr_lrec.SetRange("Document Type", Purchasehdr_lrec."Document Type"::Invoice);
        Purchasehdr_lrec.SetRange("Vendor Invoice No.", Invoice_lrec.InvoiceNo);
        if Purchasehdr_lrec.FindFirst() then
                Error('Purchase Invoice with Vendor Invoice No. %1 already exists.', Invoice_lrec.InvoiceNo);
        Purchaseandrec.Get();
        Purchaseandrec.TestField("Order Nos.");
        Purchasehdr_lrec.Init();
        Purchasehdr_lrec."No." := NoSeries.GetNextNo(Purchaseandrec."Invoice Nos.", Today, true);
        Purchasehdr_lrec."Document Type" := Purchasehdr_lrec."Document Type"::Invoice;
        Purchasehdr_lrec.Validate("Buy-from Vendor No.", vendorNo);
        Purchasehdr_lrec."Document Date" := Today();
        Purchasehdr_lrec."Vendor Invoice No." := Invoice_lrec.InvoiceNo;
        Purchasehdr_lrec.Insert();
        AMBInvoice_lrec.Reset();
        AMBInvoice_lrec.SetRange("InvoiceNo", Invoice_lrec.InvoiceNo);
        if AMBInvoice_lrec.FindSet() then begin
            repeat
                CreatePurchaseLine(Purchasehdr_lrec, AMBInvoice_lrec);
            until AMBInvoice_lrec.Next() = 0;
        end else
            Error('No invoice lines found for Invoice No. %1.', Invoice_lrec.InvoiceNo);

            Message('Purchase Invoice %1 created successfully.', Purchasehdr_lrec."No.");
            if Dialog.Confirm('Purchase Invoice has been created successfully. Do you want to open it?', true) then begin

                Page.Run(PAGE::"Purchase Invoice", Purchasehdr_lrec);
        end;
        end
        else
            Error('Vendor code not found on Purchases & Payables Setup.');

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
        Purchase_lrec."Service Period From" := Invoice_lrec."ServicePeriodFrom";
        Purchase_lrec."Service Period To" := Invoice_lrec."ServicePeriodTo";
        if Invoice_lrec.Qty = 0 then begin
            Purchase_lrec.Validate(Quantity, 1);
        end
        else begin
            Purchase_lrec.Validate(Quantity, Invoice_lrec.Qty);
        end;
        if Invoice_lrec."Unit Cost" = 0 then
            Purchase_lrec.Validate("Direct Unit Cost", Invoice_lrec."Unit Cost")
        else
        Purchase_lrec."Direct Unit Cost" := Invoice_lrec."Unit Cost";
        Purchase_lrec."Line Amount" := Invoice_lrec."LineTotal";

        Purchase_lrec.Insert();
    end;


    // local procedure CreateSalesOrders()
    // var
    //     SalesHdr: Record "Sales Header";
    //     CustomerRec: Record Customer;
    //     SalesSetup: Record "Sales & Receivables Setup";
    //     NoSeriesMgt: Codeunit "No. Series";
    //     InvoiceAMBRec: Record "Invoice SG";
    //     OrgList: List of [text[100]];
    //     OrgCode: text[100];
    // begin
    //     InvoiceAMBRec.Reset();
    //     if InvoiceAMBRec.FindSet() then
    //         repeat
    //             if not OrgList.Contains(InvoiceAMBRec.Organization) then
    //                 OrgList.Add(InvoiceAMBRec.Organization);
    //         until InvoiceAMBRec.Next() = 0;

    //     SalesSetup.Get();
    //     SalesSetup.TestField("Order Nos.");
    //     foreach OrgCode in OrgList do begin
    //         CustomerRec.SetRange(Name, OrgCode);
    //         if not CustomerRec.FindFirst() then
    //             Error('Customer with Organization %1 not found.', OrgCode);
    //         SalesHdr.Reset();
    //         SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
    //         SalesHdr.SetRange("Sell-to Customer No.", CustomerRec."No.");
    //         SalesHdr.SetRange("External Document No.", InvoiceAMBRec.InvoiceNo);
    //         if not SalesHdr.FindFirst() then begin
    //             SalesHdr.Init();
    //             SalesHdr."No." := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
    //             SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
    //             SalesHdr.Validate("Sell-to Customer No.", CustomerRec."No.");
    //             SalesHdr."External Document No." := Rec.InvoiceNo;
    //             SalesHdr."Document Date" := Today();
    //             SalesHdr.Insert();
    //             InvoiceAMBRec.Reset();
    //             InvoiceAMBRec.SetRange("Organization", OrgCode);
    //             InvoiceAMBRec.SetRange("No.",InvoiceAMBRec."No.");
    //             if InvoiceAMBRec.FindSet() then
    //             repeat
    //                 CreateSalesLine(SalesHdr, InvoiceAMBRec);
    //             until InvoiceAMBRec.Next() = 0;

    //             Message('Sales Order created for Organization: %1', OrgCode);

    //         end
    //         else begin
    //             Message('Sales Invoice already exists for Customer %1 and Sherweb Invoice No. %2',
    //                 OrgCode, InvoiceAMBRec.InvoiceNo);
    //         end;
    //     end;

    // end;
    local procedure CreateSalesOrders()
    var
        SalesHdr: Record "Sales Header";
        CustomerRec: Record Customer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit "No. Series";
        InvoiceAMBRec: Record "Invoice SG";
        LinesAMB: Record "Invoice SG";
        OrgCode: Text[100];
        CurrInvoiceNo: Code[20];
        LastInvoiceNo: Code[20];
        LastOrgCode: Text[100];
begin
        SalesSetup.Get();
        SalesSetup.TestField("Invoice Nos.");

        if InvoiceAMBRec.FindSet() then begin
            repeat
                OrgCode := InvoiceAMBRec.Organization;
                CurrInvoiceNo := InvoiceAMBRec.InvoiceNo;

                if (OrgCode <> LastOrgCode) or (CurrInvoiceNo <> LastInvoiceNo) then begin
                    LastOrgCode := OrgCode;
                    LastInvoiceNo := CurrInvoiceNo;

                    CustomerRec.SetRange("Sherweb Customer Name", OrgCode);
                if not CustomerRec.FindFirst() then
                    Error('Customer with Organization %1 not found.', OrgCode);
                SalesHdr.Reset();
                    SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
                    SalesHdr.SetRange("Sell-to Customer No.", CustomerRec."No.");
                SalesHdr.SetRange("External Document No.", CurrInvoiceNo);
                if not SalesHdr.FindFirst() then begin
                    SalesHdr.Init();
                        SalesHdr."No." := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
                        SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
                        SalesHdr.Validate("Sell-to Customer No.", CustomerRec."No.");
                    SalesHdr."External Document No." := CurrInvoiceNo;
                        SalesHdr."Document Date" := Today();
                        SalesHdr.Insert();
                end;

                LinesAMB.Reset();
                LinesAMB.SetRange(Organization, OrgCode);
                LinesAMB.SetRange(InvoiceNo, CurrInvoiceNo);
                if LinesAMB.FindSet() then
                        repeat
                            CreateSalesLine(SalesHdr, LinesAMB);
                    until LinesAMB.Next() = 0;
                end;
            until InvoiceAMBRec.Next() = 0;
    end;
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
            if Invoice_lrec.Qty = 0 then begin
                salesLine_lrec.Validate(Quantity, 1);
            end
            else begin
                salesLine_lrec.Validate(Quantity, Invoice_lrec.Qty);
            end;
            if Invoice_lrec."Customer List Price" <> 0 then
                salesLine_lrec.Validate("Unit Price", Invoice_lrec."Customer List Price")
            else
                salesLine_lrec."Unit Price" := Invoice_lrec."Customer List Price";
            if Invoice_lrec.LineTotal <> 0 then
                salesLine_lrec.Validate("Line Amount", Invoice_lrec.LineTotal);
            if Invoice_lrec."Unit Cost" = 0 then
                salesLine_lrec.Validate("Unit Cost", Invoice_lrec."Unit Cost")
            else
                salesLine_lrec."Unit Cost" := Invoice_lrec."Unit Cost";
            salesLine_lrec.Modify();
        end;
    end;
}

