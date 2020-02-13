codeunit 50000 "Sales Post Subscriber"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterCheckSalesDoc', '', true, false)]
    local procedure CheckSalesOrderSourceofSales(var SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; WhseReceive: Boolean)
    begin
        if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
            exit;
        SalesHeader.TestField("Source of Sales");
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesHeader', '', true, false)]
    local procedure TransferSourceofSalesToJournalLine(SalesHeader: Record "Sales Header"; var ItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine."Source of Sales" := SalesHeader."Source of Sales"
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, false)]
    local procedure TransferSourceofSalesToLedger(ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer; var NewItemLedgEntry: Record "Item Ledger Entry")
    begin
        NewItemLedgEntry."Source of Sales" := ItemJournalLine."Source of Sales";
    end;
}