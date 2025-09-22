// codeunit 50110 "OverdueQuoteNotifier"
// {
//     procedure NotifyOverdueQuotes()
//     var
//         SalesHeader: Record "Sales Header";
//         NotificationMgt: Codeunit "Notification Management";
//         Today: Date;
//     begin
//         Today := Today();
//         SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Quote);
//         SalesHeader.SetRange(Status, SalesHeader.Status::Open);

//         if SalesHeader.FindSet() then
//             repeat
//                 if Today - SalesHeader."Document Date" > 14 then begin
//                     // NotificationMgt.MoveNotificationEntryToSentNotificationEntries(
//                     //     'Overdue Quote Alert',
//                     //     StrSubstNo('Quote %1 has been open for more than 14 days.', SalesHeader."No."),
//                     //     'VP@company.com'); 
//                 end;
//             until SalesHeader.Next() = 0;
//     end;
// }
