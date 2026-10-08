page 50138 "Example Card"
{
    Caption = 'Example Card';
    PageType = Card;
    SourceTable = Example;
    UsageCategory = None;

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
                    ToolTip = 'Specifies the number of the Example.';

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
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
