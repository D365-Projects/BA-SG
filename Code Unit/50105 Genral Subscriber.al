codeunit 50105 GenralSubscriber
{

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnAfterValidateEvent, "Sell-to Customer No.", true, true)]
    local procedure OnAfterValidateEvent(var Rec: Record "Sales Header")
    var
        Cust: Record Customer;
    begin
        if Rec."Document Type" = Rec."Document Type"::Invoice then begin
            Cust.Reset();
            Cust.SetRange("No.", Rec."Sell-to Customer No.");
            if Cust.FindFirst() then begin
                Rec."Your Reference" := Cust."PO Reference No";
                // Rec.Modify();
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Table, DataBase::"Sales Header", 'OnBeforeSalesLineInsert', '', true, true)]
    local procedure OnBeforeSalesLineInsertOnRecreateSalesLine(var TempSalesLine: Record "Sales Line"; var SalesLine: Record "Sales Line")
    var
        ItemReference_lRec: Record "Item Reference";
        Role: Page "Order Processor Role Center";
    begin
        SalesLine.Validate("Unit Price", TempSalesLine."Unit Price");
        SalesLine.Validate(SKU, TempSalesLine.SKU);
        SalesLine.Validate(UPC_SG, TempSalesLine.UPC_SG);
        SalesLine.Validate("Description 2", TempSalesLine."Description 2");
        SalesLine.Validate("Service Period From", TempSalesLine."Service Period From");
        SalesLine.Validate("Service Period To", TempSalesLine."Service Period To");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Create-Invoice", OnBeforeInsertSalesHeader, '', true, true)]
    local procedure OnBeforeInsertSalesHeader(var SalesHeader: Record "Sales Header"; JobPlanningLine: Record "Job Planning Line")
    begin
        SalesHeader.Project := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Create-Invoice", OnBeforeInsertSalesLine, '', true, true)]
    local procedure OnBeforeInsertSalesLine(var SalesLine: Record "Sales Line"; JobPlanningLine: Record "Job Planning Line")
    begin
        SalesLine.Details := JobPlanningLine.Details;
        SalesLine."Contract Price" := JobPlanningLine."Contract Price";
        SalesLine."Milestone" := JobPlanningLine."Milestone";
        SalesLine."Milestone %" := JobPlanningLine."Milestone %";
    end;

}