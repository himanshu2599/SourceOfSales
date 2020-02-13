tableextension 50002 "Sales Invoice Header Extension" extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Source of Sales"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Source of Sales".Code where(Blocked = const(false));
        }
    }
}