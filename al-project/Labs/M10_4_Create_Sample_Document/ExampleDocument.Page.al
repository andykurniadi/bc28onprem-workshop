page 50127 "Example Document"
{
    PageType = Document;
    UsageCategory = Documents;
    SourceTable = ExampleHeader;
    Caption = 'Example Document';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the example document.';

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of the example document.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the posting date of the example document.';
                }
                field("No. Printed"; Rec."No. Printed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many times the example document has been printed.';
                }
            }
            part(ExampleLineSubpage; "Example Line Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
            }
        }
    }
}
