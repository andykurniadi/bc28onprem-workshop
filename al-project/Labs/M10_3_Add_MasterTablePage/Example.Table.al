table 50134 Example
{
    Caption = 'Example';
    DataClassification = CustomerContent;
    LookupPageId = "Example List";
    DrillDownPageId = "Example List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; "Example Type Code"; Code[10])
        {
            Caption = 'Example Type Code';
            DataClassification = CustomerContent;
            TableRelation = ExampleType;
        }
        field(4; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        ExampleSetup: Record "Example Setup";
        NoSeries: Codeunit "No. Series";

    trigger OnInsert()
    begin
        if "No." = '' then begin
            ExampleSetup.Get();
            ExampleSetup.TestField("Example Nos.");
            "No. Series" := ExampleSetup."Example Nos.";
            "No." := NoSeries.GetNextNo("No. Series", WorkDate(), true);
        end;
    end;

    procedure AssistEdit(OldExample: Record Example): Boolean
    begin
        ExampleSetup.Get();
        ExampleSetup.TestField("Example Nos.");
        if NoSeries.LookupRelatedNoSeries(ExampleSetup."Example Nos.", OldExample."No. Series", "No. Series") then begin
            "No." := NoSeries.GetNextNo("No. Series", WorkDate(), false);
            exit(true);
        end;
    end;
}
