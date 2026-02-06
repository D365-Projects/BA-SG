page 50107 "Create Invoice_SG"
{
    Caption = 'Create Invoice';
    PageType = StandardDialog;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(InvDate; InvDate)
                {
                    Caption = 'Invoice Date';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        Shareweb: Record "Invoice SG";
        InvoiceCreat: Codeunit "SalesInvoiceCreation_SG";
        ParentCust: Code[20];
        InvDialouge: Page "Create Invoice_SG";
    begin
        if CloseAction = Action::OK then begin
            if InvDate = 0D then
                Error('Invoice Date is required.');
            Shareweb.Reset();
            Shareweb.SetCurrentKey(InvoiceNo);
            Shareweb.SetAscending(InvoiceNo, true);
            Shareweb.SetRange("Excluded Customer", false);
            Shareweb.SetFilter("Parent Customer", '<>%1', '');
            if Shareweb.FindSet() then begin
                repeat
                    if (ParentCust <> Shareweb."Parent Customer") then begin
                        // InvDate := InvDialouge.GetInvoiceDate();
                        InvoiceCreat.CreateInvoicesForParent(Shareweb, InvDate);
                        ParentCust := Shareweb."Parent Customer";
                    end;
                until Shareweb.Next() = 0;
                Message('Sales Invoice created successfully.');
                // end;
            end;

        end;
        exit(true);
    end;

    procedure GetInvoiceDate(): Date
    begin
        exit(InvDate);
    end;

    var
        InvDate: Date;
}
