pageextension 50004 "Item Ledger Entries Ext" extends "Item Ledger Entries"
{
    layout
    {
        addafter("Entry Type")
        {
            field("Source of Sales"; "Source of Sales")
            {
                ApplicationArea = All;
            }
        }
    }
}