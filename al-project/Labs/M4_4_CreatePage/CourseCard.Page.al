page 50101 "CRONUS Course Card"
{
    Caption = 'Course Card';
    PageType = Card;
    SourceTable = "CRONUS Course";
    UsageCategory = None;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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
            }

            group(Details)
            {
                Caption = 'Details';

                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ApplicationArea = All;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                }
                field(Difficulty; Rec.Difficulty)
                {
                    ApplicationArea = All;
                }
                field("Passing Rate"; Rec."Passing Rate")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Resource)
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card';
                RunObject = page "Resource Card";
                RunPageLink = "No." = FIELD("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
            }
        }
    }
}
