tableextension 50004 "Item Journal Line Ext" extends "Item Journal Line"
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