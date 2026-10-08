page 50139 "Example List"
{
    ApplicationArea = All;
    Caption = 'Example List';
    PageType = List;
    SourceTable = Example;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Example Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the Example.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the Example.';
                }
                field("Example Type Code"; Rec."Example Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of the Example.';
                }
            }
        }
    }
}
