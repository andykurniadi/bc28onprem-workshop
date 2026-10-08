table 50127 ExampleHeader
{
    Caption = 'Example Header';
    DataClassification = CustomerContent;
    LookupPageId = "Example Document List";
    DrillDownPageId = "Example Document List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(5; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            DataClassification = CustomerContent;
            Editable = false;
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
            ExampleSetup.TestField("Document Nos.");
            "No. Series" := ExampleSetup."Document Nos.";
            "No." := NoSeries.GetNextNo("No. Series", WorkDate(), true);
        end;
        InitRecord();
    end;

    procedure AssistEdit(OldExampleHeader: Record ExampleHeader): Boolean
    begin
        ExampleSetup.Get();
        ExampleSetup.TestField("Document Nos.");
        if NoSeries.LookupRelatedNoSeries(ExampleSetup."Document Nos.", OldExampleHeader."No. Series", "No. Series") then begin
            "No." := NoSeries.GetNextNo("No. Series", WorkDate(), false);
            exit(true);
        end;
        exit(false);
    end;

    procedure InitRecord()
    begin
        if "Posting Date" = 0D then
            "Posting Date" := WorkDate();
        "Document Date" := WorkDate();
    end;
}
