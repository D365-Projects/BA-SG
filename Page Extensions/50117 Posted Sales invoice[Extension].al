pageextension 50117 POstedSalesInvocie_SG extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Print)
        {
            action(LicenseReport)
            {
                Caption = 'License Report';

                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;

                Image = Report2;
                trigger OnAction()
                var
                    SalesQuoteRec: Record "Sales Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50118, true, true, Rec);
                end;
            }

        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}