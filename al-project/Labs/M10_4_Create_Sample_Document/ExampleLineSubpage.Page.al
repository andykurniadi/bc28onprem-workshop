page 50129 "Example Line Subpage"
{
    PageType = ListPart;
    Caption = 'Example Line Subpage';
    UsageCategory = None;
    SourceTable = ExampleLine;
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the related example document.';
                    Editable = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the example document line.';
                    Editable = false;
                }
                field("Example No."; Rec."Example No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the example associated with this line.';
                }
                field("Line Date"; Rec."Line Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date of the example document line.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the quantity for this line.';
                }
                field("Example Description"; Rec."Example Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the selected example.';
                }
            }
        }
    }
}
