pageextension 50113 "Sales Quotes" extends "Sales Quotes"
{
    layout
    {
        addafter(Status)
        {
            field("Quote Status"; Rec."Quote Status")
            {
                ApplicationArea = All;
                Caption = 'Quote Status';
                ToolTip = 'Status of the Sales Quote';
                ShowMandatory = true;
            }
            field("Follow Up Date"; Rec."Follow Up Date")
            {
                ApplicationArea = All;
                Caption = 'Follow Up Date';
                ToolTip = 'Date to follow up Sales Quote';
                ShowMandatory = true;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        modify(Email)
        {
            Visible = VisibleEMail;
        }
        modify(MakeOrder)
        {
            Visible = VisibleSalesOrder;
        }
        modify(MakeInvoice)
        {
            Visible = VisibleSalesOrder;
        }
        // Add changes to page actions here
    }

    var
        VisibleEMail: Boolean;
        VisibleSalesOrder: Boolean;

    trigger OnAfterGetCurrRecord();
    begin
        if Rec.Status = Rec.Status::Released then begin
            VisibleEMail := true;
            CurrPage.Update();
        end
        else begin
            VisibleEMail := false;
            CurrPage.Update();
        end;
        if Rec."Quote Status" = Rec."Quote Status"::"Approved by Customer" then begin
            VisibleSalesOrder := true;
            CurrPage.Update();
        end
        else begin
            VisibleSalesOrder := false;
            CurrPage.Update();
        end;
    end;



}