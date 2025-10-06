pageextension 50106 CustomerCardEx extends "Customer Card"
{
    layout
    {
        modify(Name)
        {
            ShowMandatory = true;
        }
        modify(MobilePhoneNo)
        {
            ShowMandatory = true;
        }
        modify("E-Mail")
        {
            ShowMandatory = true;
        }

        modify("Country/Region Code")
        {
            ShowMandatory = true;
        }

        modify(Address)
        {
            ShowMandatory = true;
        }
        modify(City)
        {
            ShowMandatory = true;
        }
        modify("Post Code")
        {
            ShowMandatory = true;
        }
        modify("Phone No.")
        {
            ShowMandatory = true;
        }

        modify("Tax Area Code")
        {
            ShowMandatory = true;
        }
        modify("Tax Liable")
        {
            ShowMandatory = true;
        }
        modify("Tax Exemption No.")
        {
            ShowMandatory = true;
        }
        modify("Customer Posting Group")
        {
            ShowMandatory = true;
        }

        modify("VAT Registration No.")
        {
            ShowMandatory = true;
        }
        modify("Payment Terms Code")
        {
            ShowMandatory = true;
        }
        modify("Payment Method Code")
        {
            ShowMandatory = true;
        }
        modify(County)
        {
            ShowMandatory = true;
        }
        modify("Language Code")
        {
            ShowMandatory = true;
        }
        modify("Gen. Bus. Posting Group")
        {
            ShowMandatory = true;
        }
        modify("Address 2")
        {
            ShowMandatory = true;
        }
        modify("Currency Code")
        {
            ShowMandatory = true;
        }
        addafter(Name)
        {
            field("Sherweb Customer Name"; Rec."Sherweb Customer Name")
            {
                ApplicationArea = all;
                ToolTip = 'Specify the customer name as per the Sherweb customer account';
            }
        }

        // Add changes to page layout here
    }

    actions
    {
        addafter(ApplyTemplate)
        {
            action("Create Dimension")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Dimensions;
                ToolTip = 'Create and assign dimension to customer';
                trigger OnAction()
                var
                    CustomerRec: Record Customer;
                    DimHandler: Codeunit "Dimension Handler";
                begin
                    CustomerRec.Get(Rec."No.");
                    if xRec."No." <> '' then
                        DimHandler.CreateAndAssignOrUpdateDimension(CustomerRec, xRec)
                    else
                        DimHandler.CreateAndAssignOrUpdateDimension(CustomerRec, Rec);
                end;


            }

        }
    }

    var
        myInt: Integer;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        Rec.TestField(Name);
        Rec.TestField("Mobile Phone No.");
        Rec.TestField("E-Mail");
        Rec.TestField("Country/Region Code");
        Rec.TestField(Address);
        Rec.TestField(City);
        Rec.TestField("Post Code");
        Rec.TestField("Phone No.");
        Rec.TestField("VAT Registration No.");
        Rec.TestField("Payment Terms Code");
        Rec.TestField("Payment Method Code");
        Rec.TestField("Language Code");
        Rec.TestField("Gen. Bus. Posting Group");
        Rec.TestField("Address 2");
        Rec.TestField("VAT Registration No.");
        Rec.TestField(County);
        rec.TestField("Currency Code");
        rec.TestField("Tax Area Code");
        Rec.TestField("Tax Exemption No.");
        Rec.TestField("Tax Liable");
    end;
}