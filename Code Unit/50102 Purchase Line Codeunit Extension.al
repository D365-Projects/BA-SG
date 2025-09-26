
// codeunit 50102 "DirectUnitCost Event"
// {
//     [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterValidateEvent', 'Direct Unit Cost', false, false)]
//     local procedure HandleAfterUpdateDirectUnitCost(var Rec: Record "Purchase Line"; xRec: Record "Purchase Line"; CurrFieldNo: Integer)
//     var
//         SalesLine: Record "Sales Line";
//     begin
//         if Rec."Sales Order Line No." <> 0 then begin
//             if SalesLine.Get(SalesLine."Document Type"::Order, Rec."Sales Order No.", Rec."Sales Order Line No.") then begin
//                 SalesLine.Validate("Unit Cost", Rec."Direct Unit Cost");

//                 SalesLine.Modify(true);
//                 Message('Sales Line Unit Cost updated to %1 from Direct Unit Cost.', Rec."Direct Unit Cost");
//             end;
//         end;
//     end;
// }
