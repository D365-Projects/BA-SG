codeunit 50106 "SalesInvoiceCreation_SG"
{
    trigger OnRun()
    begin

    end;

    procedure CreateInvoicesForParent(InvSg: Record "Invoice SG"; InvDate: Date)
    var
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        PaymentTerm: Record "Payment Terms";
    begin
        SalesSetup.Get();
        SalesSetup.TestField("Invoice Nos.");
        Cust.Reset();
        Cust.SetRange("No.", InvSg."Parent Customer");
        if Cust.FindFirst() then begin
            PaymentTerm.Reset();
            PaymentTerm.SetRange(Code, Cust."Payment Terms Code");
            if PaymentTerm.FindFirst() then begin
                // Invoice 1
                if PaymentTerm."Case 1" then
                    CreateInvoiceType1(InvSg, SalesSetup, InvDate);

                // Invoice 2
                if PaymentTerm."Case 2" then
                    CreateInvoiceType2(InvSg, SalesSetup, InvDate);

                // Invoice 3
                if PaymentTerm."Case 3" then
                    CreateInvoiceType3(InvSg, SalesSetup, InvDate);
            end;
        end;
        MarkInvoiceSGProcessed(InvSg);
    end;

    local procedure CreateInvoiceType1(InvSg: Record "Invoice SG"; SalesSetup: Record "Sales & Receivables Setup"; InvDate: Date)
    var
        SalesHdr: Record "Sales Header";
        NoSeries: Codeunit "No. Series";
        InvSg2: Record "Invoice SG";
        StartDate: Date;
        EndDate: Date;
        Newdate: Date;
        SubscrCntract: Record "Customer Subscription Contract";
        SalesLine: Record "Sales Line";
        NextNo: Integer;
        CustSubContractLines: Record "Cust. Sub. Contract Line";
        SubscriptionLine: Record "Subscription Line";
    begin
        // if InvoiceAlreadyExists(InvSg) then
        //     exit;
        InvSg2.Reset();
        InvSg2.SetFilter(ServicePeriodFrom, '<>%1', 0D);
        InvSg2.SetFilter(ServicePeriodTo, '<>%1', 0D);
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindFirst() then begin
            // 
            Clear(Newdate);
            SalesHdr.Init();
            SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
            SalesHdr."No." := NoSeries.GetNextNo(SalesSetup."Invoice Nos.", WorkDate(), true);
            SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
            SalesHdr."External Document No." := InvSg.InvoiceNo;
            SalesHdr.Validate("Document Date", InvDate);
            SalesHdr.Insert(true);
            Newdate := CALCDATE('<-1M>', InvDate);
            StartDate := DMY2Date(1, Date2DMY(Newdate, 2), Date2DMY(Newdate, 3));
            EndDate := CalcDate('<1M>', StartDate) - 1;
            SalesHdr."Service Period From" := StartDate;
            SalesHdr."Service Period To" := EndDate;
            SalesHdr.Validate("Posting Date", SalesHdr."Due Date" + 7);
            SalesHdr.Validate("Order Date", InvDate);

            SalesHdr."Case 1" := true;
            SalesHdr.Modify();
            CreateSalesInvLines1(SalesHdr, InvSg)
        end;
    end;

    local procedure CreateInvoiceType2(
            InvSg: Record "Invoice SG";
            SalesSetup: Record "Sales & Receivables Setup"; InvDate: Date)
    var
        SalesHdr: Record "Sales Header";
        NoSeries: Codeunit "No. Series";
        InvSg2: Record "Invoice SG";
        StartDate: Date;
        EndDate: Date;
        Newdate: Date;
        SubscrCntract: Record "Customer Subscription Contract";
        SalesLine: Record "Sales Line";
        NextNo: Integer;
        CustSubContractLines: Record "Cust. Sub. Contract Line";
        SubscriptionLine: Record "Subscription Line";
    begin
        // if InvoiceAlreadyExists(InvSg) then
        //     exit;
        InvSg2.Reset();
        InvSg2.SetFilter(ServicePeriodFrom, '<>%1', 0D);
        InvSg2.SetFilter(ServicePeriodTo, '<>%1', 0D);
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindFirst() then begin
            // 
            Clear(Newdate);
            SalesHdr.Init();
            SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
            SalesHdr."No." := NoSeries.GetNextNo(SalesSetup."Invoice Nos.", WorkDate(), true);
            SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
            SalesHdr."External Document No." := InvSg.InvoiceNo;
            SalesHdr.Validate("Document Date", InvDate);
            StartDate := DMY2Date(1, Date2DMY(SalesHdr."Due Date", 2), Date2DMY(SalesHdr."Due Date", 3));
            EndDate := CalcDate('<1M>', StartDate) - 1;
            if (InvDate >= StartDate) and (InvDate <= EndDate) then
                exit
            else
                SalesHdr.Insert(true);

            StartDate := DMY2Date(1, Date2DMY(InvDate, 2), Date2DMY(InvDate, 3));
            EndDate := CalcDate('<1M>', StartDate) - 1;
            SalesHdr."Service Period From" := StartDate;
            SalesHdr."Service Period To" := EndDate;
            SalesHdr.Validate("Posting Date", SalesHdr."Due Date" + 7);
            SalesHdr.Validate("Order Date", InvDate);

            SalesHdr."Case 2" := true;

            SalesHdr.Modify();
            CreateSalesInvLines2(SalesHdr, InvSg);
        end;
    end;

    local procedure CreateInvoiceType3(
        InvSg: Record "Invoice SG";
        SalesSetup: Record "Sales & Receivables Setup"; InvDate: Date)
    var
        SalesHdr: Record "Sales Header";
        NoSeries: Codeunit "No. Series";
        InvSg2: Record "Invoice SG";
        EndDate: Date;
        StartDate: Date;
        SubscrCntract: Record "Customer Subscription Contract";
        SalesLine: Record "Sales Line";
        NextNo: Integer;
        CustSubContractLines: Record "Cust. Sub. Contract Line";
        SubscriptionLine: Record "Subscription Line";
    begin
        // if InvoiceAlreadyExists(InvSg) then
        //     exit;
        InvSg2.Reset();
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindFirst() then begin
            SalesHdr.Init();
            SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
            SalesHdr."No." := NoSeries.GetNextNo(SalesSetup."Invoice Nos.", WorkDate(), true);
            SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
            SalesHdr."External Document No." := InvSg.InvoiceNo;
            SalesHdr.Validate("Document Date", InvDate);
            SalesHdr.Insert(true);
            StartDate := DMY2Date(1, Date2DMY(SalesHdr."Due Date", 2), Date2DMY(SalesHdr."Due Date", 3));
            EndDate := CalcDate('<1M>', StartDate) - 1;
            SalesHdr."Service Period From" := StartDate;
            SalesHdr."Service Period To" := EndDate;
            SalesHdr.Validate("Posting Date", SalesHdr."Due Date" + 7);
            SalesHdr.Validate("Order Date", InvDate);

            // subscription Line Insert
            SubscrCntract.Reset();
            SubscrCntract.SetRange("Sell-to Customer No.", InvSg2."Parent Customer");
            if SubscrCntract.FindFirst() then begin
                CustSubContractLines.Reset();
                CustSubContractLines.SetRange("Contract Line Type", CustSubContractLines."Contract Line Type"::Item);
                CustSubContractLines.SetRange("Subscription Contract No.", SubscrCntract."No.");
                // CustSubContractLines.SetRange(Organization, InvSg2.Organization);
                if CustSubContractLines.FindSet() then begin
                    repeat
                        // Get related Subscription Line with date filtering
                        if SubscriptionLine.Get(CustSubContractLines."Subscription Line Entry No.") then begin
                            if (SubscriptionLine."Subscription Line Start Date" <= SalesHdr."Service Period From") and (SubscriptionLine."Subscription Line End Date" >= SalesHdr."Service Period From") then begin

                                SalesLine.Reset();
                                SalesLine.SetRange("Document Type", SalesLine."Document Type"::Invoice);
                                SalesLine.SetRange("Document No.", SalesHdr."No.");
                                if SalesLine.FindLast() then
                                    NextNo := SalesLine."Line No." + 10000
                                else
                                    NextNo := 10000;
                                SalesLine.Init();
                                SalesLine."Document Type" := SalesHdr."Document Type";
                                SalesLine."Document No." := SalesHdr."No.";
                                SalesLine."Line No." := NextNo;
                                SalesLine.Type := SalesLine.Type::Item;
                                SalesLine.Validate("No.", CustSubContractLines."No.");
                                SubscriptionLine.CalcFields(Quantity);
                                SalesLine.Validate(Quantity, SubscriptionLine.Quantity);
                                SalesLine.Validate("Unit Price", SubscriptionLine.Price);
                                SalesLine."Customer Subsc Contr" := true;
                                SalesLine.Organization := CustSubContractLines.Organization;
                                SalesLine.Validate("Service Period From", SalesHdr."Service Period From");
                                SalesLine.Validate("Service Period To", SalesHdr."Service Period To");
                                SalesLine.Insert();
                            end;
                        end;
                    until CustSubContractLines.Next() = 0;
                end;
            end;

            // subscription Line Insert
            SalesHdr."Case 3" := true;

            SalesHdr.Modify();
            CreateSalesInvLinesforInvoice3(SalesHdr, InvSg);
        end;
    end;



    // procedure CreateInvoice(InvSg: Record "Invoice SG"; InvDate: Date)
    // var
    //     InvSg2: Record "Invoice SG";
    //     SalesHdr: Record "Sales Header";
    //     SalesSetup: Record "Sales & Receivables Setup";
    // begin
    //     // Invoice 1 & 2 start
    //     SalesSetup.Reset();
    //     SalesSetup.Get();
    //     SalesSetup.TestField("Invoice Nos.");
    //     InvSg2.Reset();
    //     InvSg2.SetFilter(ServicePeriodFrom, '<>%1', 0D);
    //     InvSg2.SetFilter(ServicePeriodTo, '<>%1', 0D);
    //     InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
    //     InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
    //     if InvSg2.FindFirst() then begin
    //         InsertSaleshdrInv(InvSg2, SalesSetup, True, InvDate);
    //         InsertSaleshdrInv(InvSg2, SalesSetup, false, InvDate);
    //     end;
    //     // Invoice 1 & 2 End


    //     // Invoice 3 start

    //     InvSg2.Reset();
    //     InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
    //     InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
    //     if InvSg2.FindFirst() then begin
    //         InsertSaleshdrInv3(InvSg2, SalesSetup, InvDate);
    //     end;

    //     // Invoice 3 End
    // end;

    local procedure CreateSalesInvLines1(SalesHdr: Record "Sales Header"; InvSg: Record "Invoice SG")
    var
        InvSg2: Record "Invoice SG";
        MonthStart: Date;
        MonthEnd: Date;
        Saleslin: Record "Sales Line";
    begin
        InvSg2.Reset();
        InvSg2.SetFilter(ServicePeriodFrom, '<>%1', 0D);
        InvSg2.SetFilter(ServicePeriodTo, '<>%1', 0D);
        InvSg2.SetRange("Exclude Item", false);
        InvSg2.SetRange("Excluded Customer", false);
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetFilter(Qty, '<>%1', 0);
        InvSg2.SetFilter(ListPrice, '<>%1', 0);
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindSet then
            repeat
                InsertSalesLine(SalesHdr, InvSg2, True);
            until InvSg2.Next() = 0;
    end;

    local procedure CreateSalesInvLines2(SalesHdr: Record "Sales Header"; InvSg: Record "Invoice SG")
    var
        InvSg2: Record "Invoice SG";
        MonthStart: Date;
        MonthEnd: Date;
        Saleslin: Record "Sales Line";
    begin
        InvSg2.Reset();
        InvSg2.SetFilter(ServicePeriodFrom, '<>%1', 0D);
        InvSg2.SetFilter(ServicePeriodTo, '<>%1', 0D);
        InvSg2.SetRange("Exclude Item", false);
        InvSg2.SetRange("Excluded Customer", false);
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetFilter(Qty, '<>%1', 0);
        InvSg2.SetFilter(ListPrice, '<>%1', 0);
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindSet then
            repeat
                Clear(MonthEnd);
                Clear(MonthStart);
                if InvSg2.ServicePeriodTo <> 0D then begin
                    MonthStart := DMY2Date(1, Date2DMY(InvSg2.ServicePeriodTo, 2), Date2DMY(InvSg2.ServicePeriodTo, 3));
                    MonthEnd := CalcDate('<1M>', MonthStart) - 1;
                    if MonthEnd = InvSg2.ServicePeriodTo then begin
                        Saleslin.Reset();
                        Saleslin.SetRange("Document No.", SalesHdr."No.");
                        Saleslin.SetRange("Document Type", SalesHdr."Document Type");
                        Saleslin.SetRange(Type, Saleslin.Type::Item);
                        Saleslin.SetRange("No.", InvSg2.SKU);
                        Saleslin.SetRange("Service Period From", InvSg2.ServicePeriodFrom);
                        Saleslin.SetRange("Service Period To", InvSg2.ServicePeriodTo);
                        Saleslin.SetRange("Unit Price", InvSg2.ListPrice);
                        if Saleslin.FindFirst() then begin
                            Saleslin.Validate(Quantity, (Saleslin.Quantity + InvSg2.Qty));
                            Saleslin.Modify();
                        end else
                            InsertSalesLine(SalesHdr, InvSg2, false);
                    end;
                end;
            // else begin
            //     Saleslin.Reset();
            //     Saleslin.SetRange("Document No.", SalesHdr."No.");
            //     Saleslin.SetRange("Document Type", SalesHdr."Document Type");
            //     Saleslin.SetRange(Type, Saleslin.Type::Item);
            //     Saleslin.SetRange("No.", InvSg.SKU);
            //     Saleslin.SetRange("Service Period From", InvSg2.ServicePeriodFrom);
            //     Saleslin.SetRange("Service Period To", InvSg2.ServicePeriodTo);
            //     Saleslin.SetRange("Unit Price", InvSg2.ListPrice);
            //     if Saleslin.FindFirst() then begin
            //         Saleslin.Validate(Quantity, (Saleslin.Quantity + InvSg2.Qty));
            //         Saleslin.Modify();
            //     end else
            //         InsertSalesLine(SalesHdr, InvSg2, false);
            // end;
            until InvSg2.Next() = 0;
    end;

    local procedure CreateSalesInvLinesforInvoice3(SalesHdr: Record "Sales Header"; InvSg: Record "Invoice SG")
    var
        InvSg2: Record "Invoice SG";
        MonthStart: Date;
        MonthEnd: Date;
        Saleslin: Record "Sales Line";
    begin
        InvSg2.Reset();
        InvSg2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSg2.SetRange("Parent Customer", InvSg."Parent Customer");
        InvSg2.SetRange("Exclude Item", false);
        InvSg2.SetRange("Excluded Customer", false);
        InvSg2.SetFilter(Qty, '<>%1', 0);
        InvSg2.SetFilter(ListPrice, '<>%1', 0);
        InvSg2.SetRange(Processed, false);
        if InvSg2.FindSet then
            repeat
                Clear(MonthEnd);
                Clear(MonthStart);
                if InvSg2.ServicePeriodTo <> 0D then begin
                    MonthStart := DMY2Date(1, Date2DMY(InvSg2.ServicePeriodTo, 2), Date2DMY(InvSg2.ServicePeriodTo, 3));
                    MonthEnd := CalcDate('<1M>', MonthStart) - 1;

                    if MonthEnd = InvSg2.ServicePeriodTo then begin
                        Saleslin.Reset();
                        Saleslin.SetRange("Document No.", SalesHdr."No.");
                        Saleslin.SetRange("Document Type", SalesHdr."Document Type");
                        Saleslin.SetRange(Type, Saleslin.Type::Item);
                        Saleslin.SetRange("No.", InvSg2.SKU);
                        Saleslin.SetRange(Organization, InvSg2.Organization);
                        Saleslin.SetRange("Unit Price", InvSg2.ListPrice);
                        if Saleslin.FindFirst() then begin
                            Saleslin.Validate(Quantity, (Saleslin.Quantity + InvSg2.Qty));
                            Saleslin.Modify();
                        end else
                            InsertSalesLine(SalesHdr, InvSg2, false);
                    end;
                end
                else begin
                    Saleslin.Reset();
                    Saleslin.SetRange("Document No.", SalesHdr."No.");
                    Saleslin.SetRange("Document Type", SalesHdr."Document Type");
                    Saleslin.SetRange(Type, Saleslin.Type::Item);
                    Saleslin.SetRange("No.", InvSg2.SKU);
                    Saleslin.SetRange(Organization, InvSg2.Organization);
                    Saleslin.SetRange("Unit Price", InvSg2.ListPrice);
                    if Saleslin.FindFirst() then begin
                        Saleslin.Validate(Quantity, (Saleslin.Quantity + InvSg2.Qty));
                        Saleslin.Modify();
                    end else
                        InsertSalesLine(SalesHdr, InvSg2, false);
                end;
            until InvSg2.Next() = 0;
    end;

    local procedure InsertSaleshdrInv(InvSg: Record "Invoice SG"; SalesSetup: Record "Sales & Receivables Setup"; Handle: Boolean; InvDate: Date)
    var
        SalesHdr: Record "Sales Header";
        Noser: Codeunit "No. Series";
    begin
        SalesHdr.Init();
        SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
        SalesHdr."No." := Noser.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
        SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
        SalesHdr."External Document No." := InvSg.InvoiceNo;
        SalesHdr.Validate("Document Date", InvDate);
        SalesHdr.Insert();
        if Handle then
            CreateSalesInvLines1(SalesHdr, InvSg)
        else
            CreateSalesInvLines2(SalesHdr, InvSg);
    end;

    // local procedure InsertSaleshdrInv(InvSg: Record "Invoice SG"; SalesSetup: Record "Sales & Receivables Setup"; Handle: Boolean; Inv3Handle: Boolean)
    // var
    //     SalesHdr: Record "Sales Header";
    //     Noser: Codeunit "No. Series";
    // begin
    //     SalesHdr.Init();
    //     SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
    //     SalesHdr."No." := Noser.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
    //     SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
    //     SalesHdr."External Document No." := InvSg.InvoiceNo;
    //     if Handle then begin
    //         SalesHdr."Service Period From" := InvSg.ServicePeriodFrom;
    //         SalesHdr."Service Period To" := InvSg.ServicePeriodTo;
    //     end;
    //     SalesHdr.Insert();
    //     if Handle then
    //         CreateSalesInvLines1(SalesHdr, InvSg)
    //     else
    //         CreateSalesInvLines2(SalesHdr, InvSg);
    // end;

    local procedure InsertSaleshdrInv3(InvSg: Record "Invoice SG"; SalesSetup: Record "Sales & Receivables Setup"; InvDate: Date)
    var
        SalesHdr: Record "Sales Header";
        Noser: Codeunit "No. Series";
    begin
        SalesHdr.Init();
        SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
        SalesHdr."No." := Noser.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
        SalesHdr.Validate("Sell-to Customer No.", InvSg."Parent Customer");
        SalesHdr."External Document No." := InvSg.InvoiceNo;
        SalesHdr.Validate("Document Date", InvDate);
        SalesHdr.Insert();
        CreateSalesInvLinesforInvoice3(SalesHdr, InvSg);
    end;

    local procedure InsertSalesLine(SalesHdr: Record "Sales Header"; InvSg: Record "Invoice SG"; Handle: Boolean)
    var
        NextLine: Integer;
        UnitPriceday: Integer;
        Day: Integer;
        Saleslin: Record "Sales Line";
        UnitPrice: Decimal;
        Cust: Record Customer;
        PriceListLine: Record "Price List Line";
        EndOfMonth: Date;
    begin
        Clear(UnitPrice);
        Clear(UnitPriceday);
        Clear(Day);
        Clear(EndOfMonth);

        if InvSg.ServicePeriodTo <> 0D then begin
            EndOfMonth := CalcDate('<CM>', InvSg.ServicePeriodTo);
            UnitPriceday := InvSg.ServicePeriodTo - InvSg.ServicePeriodFrom + 1;
            Day := Date2DMY(EndOfMonth, 1);
            UnitPrice := (InvSg.ListPrice / Day) * UnitPriceday;
        end;

        Saleslin.Reset();
        Saleslin.SetCurrentKey("Line No.");
        Saleslin.SetAscending("Line No.", true);
        Saleslin.SetRange("Document No.", SalesHdr."No.");
        Saleslin.SetRange("Document Type", SalesHdr."Document Type");
        if Saleslin.FindLast() then
            NextLine := Saleslin."Line No." + 10000
        else
            NextLine := 10000;
        Saleslin.Init();
        Saleslin."Line No." := NextLine;
        Saleslin."Document No." := SalesHdr."No.";
        Saleslin."Document Type" := SalesHdr."Document Type";
        Saleslin.Insert(true);
        Saleslin.Validate(Type, Saleslin.Type::Item);
        Saleslin.Validate("No.", InvSg.SKU);
        Saleslin.Validate(Quantity, InvSg.Qty);
        Saleslin.Organization := InvSg.Organization;
        Saleslin.Details := InvSg.Description;
        if Handle then begin
            Saleslin."Service Period From" := InvSg.ServicePeriodFrom;
            Saleslin."Service Period To" := InvSg.ServicePeriodTo;
        end;

        Cust.Reset();
        Cust.SetRange("No.", InvSg."Parent Customer");
        if Cust.FindFirst() then begin
            if Cust."Customer Price Group" <> '' then begin
                PriceListLine.Reset();
                PriceListLine.SetRange("Source Type", PriceListLine."Source Type"::"Customer Price Group");
                PriceListLine.SetRange("Source Group", PriceListLine."Source Group"::Customer);
                PriceListLine.SetRange("Asset Type", PriceListLine."Asset Type"::Item);
                PriceListLine.SetRange("Assign-to No.", Cust."Customer Price Group");
                PriceListLine.SetRange("Product No.", InvSg.SKU);
                PriceListLine.SetRange("Currency Code", Cust."Currency Code");
                PriceListLine.SetFilter("Starting Date", '<=%1', SalesHdr."Posting Date");
                PriceListLine.SetFilter("Ending Date", '>=%1', SalesHdr."Posting Date");
                if not PriceListLine.FindSet() then begin
                    if Handle then
                        Saleslin.Validate("Unit Price", UnitPrice)
                    else
                        Saleslin.Validate("Unit Price", InvSg.ListPrice);
                end
                else begin
                    Saleslin.Validate("Unit Price", PriceListLine."Unit Price");
                end;
            end
            else begin
                if Handle then
                    Saleslin.Validate("Unit Price", UnitPrice)
                else
                    Saleslin.Validate("Unit Price", InvSg.ListPrice);
            end;
        end;
        Saleslin.Modify();
    end;

    local procedure MarkInvoiceSGProcessed(InvSg: Record "Invoice SG")
    var
        InvSG2: Record "Invoice SG";
    begin
        InvSG2.SetRange(InvoiceNo, InvSg.InvoiceNo);
        InvSG2.SetRange("Parent Customer", InvSg."Parent Customer");
        if InvSG2.FindSet() then
            repeat
                InvSG2.Processed := true;
                InvSG2.Modify();
            until InvSG2.Next() = 0;
    end;

    var
        myInt: Integer;
}