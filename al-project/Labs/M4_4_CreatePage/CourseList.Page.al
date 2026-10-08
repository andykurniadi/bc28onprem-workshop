page 50102 "CRONUS Course List"
{
    ApplicationArea = All;
    Caption = 'Course List';
    PageType = List;
    SourceTable = "CRONUS Course";
    UsageCategory = Lists;
    AdditionalSearchTerms = 'Course, Training';
    Editable = false;
    CardPageId = "CRONUS Course Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
