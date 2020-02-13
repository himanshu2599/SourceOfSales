table 50000 "Source of Sales"
{
    Caption = 'Source of Sales';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(21; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(22; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(23; "Last Modified Date Time"; DateTime)
        {
            Caption = 'Last Modified Date Time';
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        UpdateLastDateTime();
    end;

    trigger OnModify()
    begin
        UpdateLastDateTime();
    end;

    trigger OnRename()
    begin
        UpdateLastDateTime();
    end;

    local procedure UpdateLastDateTime()
    begin
        "Last Modified Date Time" := CurrentDateTime;
    end;
}
