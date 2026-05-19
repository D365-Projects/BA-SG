pageextension 50117 POstedSalesInvocie_SG extends "Posted Sales Invoice"
{
    layout
    {
        addafter(Closed)
        {


            field("Project Report"; Rec."Project")
            {
                ApplicationArea = All;
                ;
                Caption = 'Project Report';
            }

            field("Device Report"; Rec."Device")
            {
                ApplicationArea = All;
                Caption = 'Device Report';
            }
            field("T&M"; Rec."T&M")
            {
                ApplicationArea = All;
                Caption = 'T&M Report';
            }
            field(License_SG; Rec.License)
            {
                ApplicationArea = All;
                Caption = 'License Report';
            }
        }

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
                 Visible = VisibleLicenseAction;
                Image = Report2;
                trigger OnAction()
                var
                // SalesQuoteRec: Record "Sales invoice Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50118, true, true, Rec);
                end;
            }
            action("Project")
            {
                Caption = 'Project';
                ApplicationArea = All;
                Visible = VisibleProjectAction;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                // SalesQuoteRec: Record "Sales Invoice Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50122, true, false, Rec)
                end;
            }
            action("T&M_Action")
            {
                Caption = 'T&M';
                ApplicationArea = All;
                   Visible = VisibleTMAction;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                // SalesQuoteRec: Record "Sales Invoice Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50124, true, false, Rec)
                end;
            }
            action("Device_Action")
            {
                Caption = 'Devices';
                ApplicationArea = All;
                 Visible = VisibleDevicesAction;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                // SalesQuoteRec: Record "Sales Invoice Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50123, true, false, Rec)
                end;
            }

        }
        // Add changes to page actions here
    }

    var
        Isvisible: Boolean;
        VisibleProjectAction: Boolean;
        VisibleDevicesAction: Boolean;
        VisibleTMAction: Boolean;
        VisibleLicenseAction: Boolean;

    trigger OnAfterGetCurrRecord()
    begin
        VisibleProjectAction := Rec.Project;
        VisibleDevicesAction := Rec.Device;
        VisibleTMAction := Rec."T&M";
        VisibleLicenseAction := Rec.License;
    end;
    //     trigger OnAfterGetRecord()

    //     begin
    //         if Rec.License = true then
    //             Isvisible := true
    //         else
    //             Isvisible := false;
    //     end;


}