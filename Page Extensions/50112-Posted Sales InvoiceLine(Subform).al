pageextension 50112 "PostedSalesInvoice EXT" extends "Posted Sales Invoice Subform"
{
    layout
    {
        modify("Description 2")
        {
            Visible = true;
            Caption = 'Notes';
        }
        addbefore(Quantity)
        {
            field("Service Period From"; Rec."Service Period From")
            {
                ApplicationArea = all;

            }
            field("Service Period To"; Rec."Service Period To")
            {
                ApplicationArea = all;
            }
            field(Organization; Rec.Organization)
            {
                ApplicationArea = all;
            }
            field(Details; Rec.Details)
            {
                ApplicationArea = all;
            }
            field("Contract Price"; Rec."Contract Price")
            {
                ApplicationArea = all;
            }
            field(Milestone; Rec.Milestone)
            { ApplicationArea = all; }
            field("Milestone %"; Rec."Milestone %")
            {
                ApplicationArea = all;
            }
        }
        addafter(Description)
        {
            field("SKU"; Rec."SKU")
            {
                ApplicationArea = All;
            }
            field("UPC_SG"; Rec."UPC_SG")
            {
                ApplicationArea = All;
            }
            field("Shipping Cost"; Rec."Shipping Cost")
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}