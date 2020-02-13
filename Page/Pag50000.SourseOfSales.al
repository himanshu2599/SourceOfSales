page 50000 "Sourse Of Sales"
{

    PageType = List;
    SourceTable = "Source of Sales";
    Caption = 'Sourse Of Sales';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field("Last Modified Date Time"; "Last Modified Date Time")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Link; Links)
            { }
        }
    }

}
