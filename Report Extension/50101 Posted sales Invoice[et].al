reportextension 50101 PostedSalesInvoice_SG extends 1306
{

    dataset
    {
        modify(Header)
        {
            trigger OnAfterAfterGetRecord()
            var
                GLSetup: Record "General Ledger Setup";
            begin
                if "Currency Code" = '' then begin
                    if GLSetup.Get() then
                        "Currency Code" := GLSetup."LCY Code";
                end;
            end;
        }
        add(header)
        {
            column(CurrCode; CurrCode) { }
        }

        add(Line)
        {
            column(SKU; SKU)
            {
            }
            column(UPC_SG; "UPC_SG")
            {
            }
            column(Shipping_Cost; "Shipping Cost")
            {
            }
            column(Unit_Price; "Unit Price") { }

        }


        // Add changes to dataitems and columns here
    }


    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout("Standard-Sales-InvoiceSG(RDLC)")
        {
            Type = RDLC;

            LayoutFile = './Layouts/StandardSalesInvoice.rdlc';
        }
    }
    trigger OnPostReport()
    var
        myInt: Integer;
    begin

    end;
}