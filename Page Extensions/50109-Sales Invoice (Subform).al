pageextension 50109 "Sales Invoice Line" extends "Sales Invoice Subform"
{
    layout
    {
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
        }
        modify("Description 2")
        {
            Visible = true;
            Caption = 'Notes';
        }
        addafter("Unit Cost (LCY)")
        {
            field("Unit Cost"; Rec."Unit Cost")
            {
                ApplicationArea = All;
                Caption = 'Unit Cost';
                ToolTip = 'Unit Cost';

            }
        }
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_lrec: Record Item;
            begin
                if rec.Quantity <> 0 then begin
                    Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                    Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                    Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                    rec.Modify();
                end;
                Item_lrec.SetRange("No.", rec."No.");
                if Item_lrec.Find() then begin
                    rec.SKU := Item_lrec."Vendor Item No.";
                    Rec."UPC_SG" := Item_lrec.GTIN;
                end;

            end;
        }

        addafter("Description 2")
        {
            field(SKU; Rec.SKU)
            {
                ApplicationArea = All;
                Caption = 'SKU';
                ToolTip = 'Stock Keeping Unit';
            }
            field(UPC; Rec.UPC_SG)
            {
                ApplicationArea = All;
                Caption = 'UPC';
                ToolTip = 'Universal Product Code';
            }

        }
        addafter("Unit Price")
        {
            field("Sales Margin_SG"; Rec."Sales Margin_SG")
            {
                ApplicationArea = all;
            }
            field("Margin %"; Rec."Margin %")
            {
                ApplicationArea = all;
            }
            field("Shipping Cost"; Rec."Shipping Cost")
            {
                ApplicationArea = All;
            }
        }

        modify("Allow Invoice Disc.")
        {
            Visible = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify("Unit Cost (LCY)")
        {
            Visible = true;
            Editable = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                if Rec.Quantity > 0 then
                    if Rec."Line Amount" > 0 then BEGIN
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        rec.Modify();
                    end;
            end;
        }
        modify("Line Discount %")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify("Line Discount Amount")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }

        modify("Unit Price")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
                MyNotification: Notification;
                Notification_IRec: Notification;
                NotificationLifecycleMgt: Codeunit "Notification Lifecycle Mgt.";
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify(Quantity)

        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                if Rec.Quantity > 0 then
                    if Rec."Line Amount" > 0 then BEGIN
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    end
            end;
        }
        modify("Inv. Discount Amount")
        {
            Visible = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                Rec.Modify();
            end;
        }
        modify("Invoice Discount Amount")
        {
            trigger OnAfterValidate()
            var
                SalesLine_Lrec: Record "Sales Line";
            begin

                Rec.SetCurrentKey("Line No.");
                Rec.SetAscending("Line No.", true);
                if Rec.FindSet() then
                    repeat
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    until Rec.Next() = 0;
            end;
        }
        modify("Invoice Disc. Pct.")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin

                Rec.SetCurrentKey("Line No.");
                Rec.SetAscending("Line No.", true);
                if Rec.FindSet() then
                    repeat
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    until Rec.Next() = 0;
            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        ShowFields: Boolean;
}