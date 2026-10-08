page 50140 "Example Types"
{
    ApplicationArea = All;
    Caption = 'Example Types';
    PageType = List;
    SourceTable = ExampleType;
    UsageCategory = Lists;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of the Example Type.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the Example Type.';
                }
            }
        }
    }
}
