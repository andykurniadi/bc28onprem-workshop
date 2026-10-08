page 50137 "Example Setup Card"
{
    ApplicationArea = All; //missing in the original code, added to allowed usage in all application areas
    Caption = 'Example Setup Card';
    PageType = Card;
    SourceTable = "Example Setup";
    UsageCategory = Administration;
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Example Nos."; Rec."Example Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number series used for Examples.';
                }
                field("Document Nos."; Rec."Document Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number series used for example documents.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
