pageextension 50003 "Posted Sales Shipment Ext" extends "Posted Sales Shipment"
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