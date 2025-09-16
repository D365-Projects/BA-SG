pageextension 50102 PurchaseOrderSubformext extends "Purchase Order Subform"
{

    layout
    {
        addafter("Direct Unit Cost")
        {
            field("Service Period From"; Rec."Service Period From")
            {
                ApplicationArea = All;
                ToolTip = 'Service Period From';
            }
            field("Service Period To"; Rec."Service Period To")
            {
                ApplicationArea = All;
                ToolTip = 'Service Period To';
            }

        }

    }

    actions
    {
        // Add changes to page actions here
    }
    var
        Directcost: Codeunit "DirectUnitCost Event";
       
}