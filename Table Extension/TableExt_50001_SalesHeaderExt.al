tableextension 50001 "Sales Header Extension" extends "Sales Header"
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