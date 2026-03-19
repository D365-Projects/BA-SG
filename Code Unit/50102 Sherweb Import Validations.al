// codeunit 50102 "Data Managment"


// {
//     trigger OnRun()
//     begin

//     end;

//     procedure UpdateSherwebInvoiceStatus_SingleFlow()
//     var
//         InvoiceSG: Record "Invoice SG";
//     begin
//         InvoiceSG.Reset();
//         if InvoiceSG.FindSet() then
//             repeat
//                 ProcessSalesSide(InvoiceSG);
//                 ProcessPurchaseSide(InvoiceSG);
//                 InvoiceSG.Modify();
//             until InvoiceSG.Next() = 0;
//     end;

//     local procedure ProcessSalesSide(var InvoiceSG: Record "Invoice SG"): Boolean
//     var
//         SalesHdr: Record "Sales Header";
//         PostedSI: Record "Sales Invoice Header";
//         PostedSILine: Record "Sales Invoice Line";
//     begin

//         PostedSI.Reset();
//         PostedSI.SetRange("External Document No.", InvoiceSG."InvoiceNo");
//         PostedSI.SetRange("Sell-to Customer Name", InvoiceSG.Organization);

//         if PostedSI.FindSet() then
//             repeat
//                 PostedSILine.Reset();
//                 PostedSILine.SetRange("Document No.", PostedSI."No.");
//                 PostedSILine.SetRange(Type, PostedSILine.Type::Item);
//                 PostedSILine.SetRange("No.", InvoiceSG.SKU);

//                 if PostedSILine.FindFirst() then begin
//                     InvoiceSG.PSI := true;

//                     exit(true);
//                 end;
//             until PostedSI.Next() = 0;

//         SalesHdr.Reset();
//         SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
//         SalesHdr.SetRange("External Document No.", InvoiceSG."InvoiceNo");
//         SalesHdr.SetRange("Sell-to Customer Name", InvoiceSG.Organization);

//         if SalesHdr.FindFirst() then begin
//             InvoiceSG.SI := true;
//             exit(true);
//         end;

//         exit(false);
//     end;

//     local procedure ProcessPurchaseSide(var InvoiceSG: Record "Invoice SG")
//     var
//         PurchHdr: Record "Purchase Header";
//         PostedPI: Record "Purch. Inv. Header";
//         PostedPILine: Record "Purch. Inv. Line";
//     begin
//         PostedPI.Reset();
//         PostedPI.SetRange("Vendor Invoice No.", InvoiceSG."InvoiceNo");

//         if PostedPI.FindSet() then
//             repeat
//                 PostedPILine.Reset();
//                 PostedPILine.SetRange("Document No.", PostedPI."No.");
//                 PostedPILine.SetRange(Type, PostedPILine.Type::Item);
//                 PostedPILine.SetRange("No.", InvoiceSG.SKU);

//                 if PostedPILine.FindFirst() then begin
//                     InvoiceSG.PPI := true;
//                     // InvoiceSG.PI := true;
//                     exit;
//                 end;

//             until PostedPI.Next() = 0;

//         PurchHdr.Reset();
//         PurchHdr.SetRange("Document Type", PurchHdr."Document Type"::Invoice);
//         PurchHdr.SetRange("Vendor Invoice No.", InvoiceSG."InvoiceNo");

//         if PurchHdr.FindFirst() then
//             InvoiceSG.PI := true;
//     end;

//     var
//         myInt: Integer;
// }


codeunit 50102 "Data Management"
{
    trigger OnRun()
    begin
    end;

    procedure UpdateSherwebInvoiceStatus_SingleFlow()
    var
        InvoiceSG: Record "Invoice SG";
    begin
        InvoiceSG.Reset();
        if InvoiceSG.FindSet() then
            repeat
                UpdateSalesSideStatus(InvoiceSG);
                UpdatePurchaseSideStatus(InvoiceSG);
                InvoiceSG.Modify();
            until InvoiceSG.Next() = 0;
    end;

    local procedure UpdateSalesSideStatus(var InvoiceSG: Record "Invoice SG")
    var
        SalesHdr: Record "Sales Header";
        PostedSI: Record "Sales Invoice Header";
        PostedSILine: Record "Sales Invoice Line";
        FoundPostedInvoice: Boolean;
        FoundSalesHdr: Boolean;
    begin
        FoundPostedInvoice := false;
        FoundSalesHdr := false;
        PostedSI.Reset();
        PostedSI.SetRange("External Document No.", InvoiceSG."InvoiceNo");
        PostedSI.SetRange("Sell-to Customer No.", InvoiceSG."Parent Customer");
        if PostedSI.FindSet() then
            repeat
                PostedSILine.Reset();
                PostedSILine.SetRange("Document No.", PostedSI."No.");
                PostedSILine.SetRange(Type, PostedSILine.Type::Item);
                PostedSILine.SetRange("No.", InvoiceSG.SKU);
                if PostedSILine.FindFirst() then begin
                    FoundPostedInvoice := true;
                    break;
                end;
            until PostedSI.Next() = 0;

        InvoiceSG.PSI := FoundPostedInvoice;
        SalesHdr.Reset();
        SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
        SalesHdr.SetRange("External Document No.", InvoiceSG."InvoiceNo");
        SalesHdr.SetRange("Sell-to Customer No.", InvoiceSG."Parent Customer");

        if SalesHdr.FindFirst() then
            FoundSalesHdr := true;

        InvoiceSG.SI := FoundSalesHdr;
        if (FoundPostedInvoice = true) or (FoundSalesHdr = true) then
            InvoiceSG.Processed := true;
    end;

    local procedure UpdatePurchaseSideStatus(var InvoiceSG: Record "Invoice SG")
    var
        PurchHdr: Record "Purchase Header";
        PostedPI: Record "Purch. Inv. Header";
        PostedPILine: Record "Purch. Inv. Line";
        FoundPostedPurchaseInvoice: Boolean;
        FoundPurchaseHeader: Boolean;
    begin
        FoundPostedPurchaseInvoice := false;
        FoundPurchaseHeader := false;
        PostedPI.Reset();
        PostedPI.SetRange("Vendor Invoice No.", InvoiceSG."InvoiceNo");

        if PostedPI.FindSet() then
            repeat
                PostedPILine.Reset();
                PostedPILine.SetRange("Document No.", PostedPI."No.");
                PostedPILine.SetRange(Type, PostedPILine.Type::Item);
                PostedPILine.SetRange("No.", InvoiceSG.SKU);

                if PostedPILine.FindFirst() then begin
                    FoundPostedPurchaseInvoice := true;
                    break;
                end;
            until PostedPI.Next() = 0;

        InvoiceSG.PPI := FoundPostedPurchaseInvoice;
        PurchHdr.Reset();
        PurchHdr.SetRange("Document Type", PurchHdr."Document Type"::Invoice);
        PurchHdr.SetRange("Vendor Invoice No.", InvoiceSG."InvoiceNo");

        if PurchHdr.FindFirst() then
            FoundPurchaseHeader := true;

        InvoiceSG.PI := FoundPurchaseHeader;
    end;
}
