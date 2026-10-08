page 50133 "Example Document List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ExampleHeader;
    Caption = 'Example Document List';
    Editable = false;
    CardPageId = "Example Document";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the example document.';
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
        }
    }
}
