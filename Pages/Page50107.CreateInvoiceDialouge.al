page 50107 "Create Invoice_SG"
{
    Caption = 'Create Invoice';
    PageType = StandardDialog;
    ApplicationArea = All;
    SourceTable = "Invoice SG";

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
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if (InvDate < Rec.InvoicingDate) or (InvDate = Rec.InvoicingDate) then
                            Error('Invoice Date cannot be before Invoicing Date.');
                    end;
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
        Cust: Record Customer;
        SherwebInvArch: Record "Invoice SG(Archived)";
    begin
        if CloseAction = Action::OK then begin
            if InvDate = 0D then
                Error('Invoice Date is required.');
            Cust.Reset();
            Cust.SetRange("Excluded Customer", false);
            if Cust.FindSet() then begin
                repeat
                    Shareweb.Reset();
                    Shareweb.SetCurrentKey(InvoiceNo);
                    Shareweb.SetAscending(InvoiceNo, true);
                    Shareweb.SetRange("Excluded Customer", false);
                    Shareweb.SetRange("Parent Customer", Cust."No.");
                    if Shareweb.FindFirst() then begin
                        InvoiceCreat.CreateInvoicesForParent(Shareweb, InvDate);
                    end;
                // end;
                until Cust.Next() = 0;
                Message('Sales Invoice created successfully.');
                Shareweb.Reset();
                Shareweb.SetRange(Processed, true);
                if Shareweb.FindSet() then
                    repeat
                        SherwebInvArch.Reset();
                        SherwebInvArch.Init();
                        SherwebInvArch.TransferFields(Shareweb);
                        SherwebInvArch.Insert();
                        Shareweb.Delete();
                    until Shareweb.Next() = 0;
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
