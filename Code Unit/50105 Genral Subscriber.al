codeunit 50105 GenralSubscriber
{


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

}