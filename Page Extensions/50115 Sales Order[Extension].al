pageextension 50115 SalesOrderExt_SG extends "Sales Order"
{
    PromotedActionCategories = 'Category5';
    layout
    {

        addafter(Status)
        {

            field("Project Report"; Rec."Project")
            {
                ApplicationArea = All;
                Caption = 'Project Report';
                trigger OnValidate()
                var
                begin
                    Rec.Device := false;
                    Rec."T&M" := false;
                    Rec.License := false;
                    CurrPage.Update();
                end;

            }

            field("Device Report"; Rec."Device")
            {
                ApplicationArea = All;
                Caption = 'Device Report';
                trigger OnValidate()
                var
                begin
                    Rec.Project := false;
                    Rec."T&M" := false;
                    Rec.License := false;
                    CurrPage.Update();
                end;
            }
            field("T&M"; Rec."T&M")
            {
                ApplicationArea = All;
                Caption = 'T&M Report';
                trigger OnValidate()
                var
                begin
                    Rec.Project := false;
                    Rec.Device := false;
                    Rec.License := false;
                    CurrPage.Update();
                end;
            }
            field(License_SG; Rec.License)
            {
                ApplicationArea = All;
                Caption = 'License Report';
                trigger OnValidate()
                var
                begin
                    Rec.Project := false;
                    Rec.Device := false;
                    Rec."T&M" := false;
                    CurrPage.Update();
                end;
            }

        }

        // Add changes to page layout here
    }

    actions
    {

        addafter("Print Confirmation")
        {
            group(Reports)
            {
                action("Project")
                {
                    Caption = 'Project';
                    ApplicationArea = All;
                    Visible = VisibleProjectAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50108, true, false, Rec)
                    end;
                }
                action("Product")
                {
                    Caption = 'Devices';
                    ApplicationArea = all;
                    Visible = VisibleDevicesAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50109, true, false, Rec)
                    end;
                }
                action("TM")
                {
                    Caption = 'T&M';
                    ApplicationArea = all;
                    Visible = VisibleTMAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50111, true, false, Rec)
                    end;
                }
                action(License)
                {
                    Caption = 'License';
                    ApplicationArea = all;
                    Visible = VisibleLicenseAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50120, true, false, Rec)
                    end;
                }
                action("Price Sheet")
                {
                    Caption = 'Price Sheet';
                    ApplicationArea = all;
                    Image = Price;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50110, true, false, Rec)
                    end;
                }
                action("Attach Price Sheet")
                {
                    Caption = 'Price Sheet As Attachment';
                    ApplicationArea = All;

                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        ExportSalesOrderToAttachment(Rec);
                    end;
                }


            }

        }
        addbefore(Action96)
        {
            //     action("Attach Price Sheet")
            //     {
            //         Caption = 'Price Sheet As Attachment';
            //         ApplicationArea = All;

            //         Promoted = true;
            //         PromotedCategory = Category11;

            //     trigger OnAction()
            //         begin
            //             ExportSalesOrderToAttachment(Rec);
            //     end;
            // }
        }



    }


    var
        myInt: Integer;
        VisibleProjectAction: Boolean;
        VisibleDevicesAction: Boolean;
        VisibleTMAction: Boolean;
        VisibleLicenseAction: Boolean;

    trigger OnAfterGetCurrRecord();
    var
        Days: Integer;
        salesRecSetup: Record "Sales & Receivables Setup";
        Today: Date;
        PostingDateNotification: Notification;
    begin
        if Rec.Project then begin
            VisibleprojectAction := true;
            VisibleTMAction := false;
            VisibleDevicesAction := false;
            VisibleLicenseAction := false;
        end else if Rec.Device then begin
            VisibleprojectAction := false;
            VisibleTMAction := false;
            VisibleLicenseAction := false;
            VisibleDevicesAction := true;
        end else if Rec."T&M" then begin
            VisibleprojectAction := false;
            VisibleTMAction := true;
            VisibleDevicesAction := false;
            VisibleLicenseAction := false;
        end else if Rec."License" then begin
            VisibleprojectAction := false;
            VisibleTMAction := false;
            VisibleDevicesAction := false;
            VisibleLicenseAction := true;
        end else begin
            VisibleprojectAction := false;
            VisibleTMAction := false;
            VisibleDevicesAction := false;
            VisibleLicenseAction := false;
        end;


    end;




    procedure ExportSalesOrderToAttachment(SalesHeader: Record "Sales Header")
    var
        SalesHdr: Record "Sales Header";
        RecRef: RecordRef;
        TempBlob: Codeunit "Temp Blob";
        OutStr: OutStream;
        InStr: InStream;
        FileName: Text[100];
        DocAttachment: Record "Document Attachment";
        ProcessCount: Integer;
    begin
        CurrPage.SetSelectionFilter(SalesHeader);
        SalesHdr.Copy(SalesHeader);

        ProcessCount := 0;
        if SalesHdr.FindSet() then
            repeat
                ProcessCount += 1;
            until SalesHdr.Next() = 0;

        if ProcessCount = 0 then
            Error('You must specify one or more filters to avoid accidentally printing all documents.');
        if ProcessCount > 1 then
            if not Confirm('%1 orders will be processed. Do you want to continue?', true, ProcessCount) then
                exit;

        if SalesHdr.FindSet() then
            repeat
                FileName := StrSubstNo('%1_SalesOrderPriceSheet', SalesHdr."No.");
                TempBlob.CreateOutStream(OutStr);
                RecRef.GetTable(SalesHdr);

                Report.SaveAs(
                    Report::"Pricing Sheet Sales Order",
                    '',
                    ReportFormat::Pdf,
                    OutStr,
                    RecRef
                );

                TempBlob.CreateInStream(InStr);
                DocAttachment.Init();
                DocAttachment.Validate("Table ID", DATABASE::"Sales Header");
                DocAttachment.Validate("Document Type", DocAttachment."Document Type"::Order);
                DocAttachment.Validate("No.", SalesHdr."No.");
                DocAttachment.Validate("File Name", FileName);
                DocAttachment."File Type" := DocAttachment."File Type"::PDF;
                DocAttachment.Validate("File Extension", 'pdf');
                DocAttachment.ImportFromStream(InStr, FileName);
                DocAttachment.Insert(true);
            until SalesHdr.Next() = 0;

        Commit(); // make sure attachments show immediately
        Message('%1 PDF(s) attached successfully.', ProcessCount);
    end;

}