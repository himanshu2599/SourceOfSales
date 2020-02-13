tableextension 50005 "Item Ledger Entry Ext" extends "Item Ledger Entry"
{
    fields
    {
        field(50000; "Source of Sales"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Source of Sales".Code where(Blocked = const(false));
        }
    }
}