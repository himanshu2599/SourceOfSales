pageextension 50001 "Sales Order Extension" extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter("External Document No.")
        {
            field("Source of Sales"; "Source of Sales")
            {
                ApplicationArea = All;
                Importance = Promoted;
            }
        }

    }
}