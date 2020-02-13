report 50000 "Source of Sales"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Report\SourceOfSales.rdl';

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            RequestFilterFields = "Item No.", "Location Code", "Posting Date";
            DataItemTableView = where("Source of Sales" = filter(> ''));
            column(Item_No_; "Item No.")
            { }
            column(Description; Description)
            { }
            column(Location_Code; "Location Code")
            { }
            column(Document_No_; "Document No.")
            { }
            column(Source_of_Sales; "Source of Sales")
            { }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}