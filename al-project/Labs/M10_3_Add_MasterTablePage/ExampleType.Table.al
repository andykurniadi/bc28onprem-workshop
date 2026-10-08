table 50135 ExampleType
{
    Caption = 'Example Type';
    DataClassification = CustomerContent;
    LookupPageId = "Example Types";
    DrillDownPageId = "Example Types";

    fields
    {
        field(1; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
