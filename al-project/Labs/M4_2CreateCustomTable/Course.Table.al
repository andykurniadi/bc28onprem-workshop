table 50100 "CRONUS Course"
{
    Caption = 'Course';
    DataClassification = CustomerContent;
    LookupPageId = "CRONUS Course List";
    DrillDownPageId = "CRONUS Course List";

    fields
    {
        field(10; Code; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }

        field(20; Name; Text[30])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }

        field(30; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }

        field(40; Type; Option)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
            OptionMembers = "Instructor Led","e-Learning","Remote Training";
            OptionCaption = 'Instructor Led,e-Learning,Remote Training';
        }

        field(50; Duration; Decimal)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }

        field(60; Price; Decimal)
        {
            Caption = 'Price';
            DataClassification = CustomerContent;
        }

        field(70; Active; Boolean)
        {
            Caption = 'Active';
            DataClassification = CustomerContent;
        }

        field(80; Difficulty; Integer)
        {
            Caption = 'Difficulty';
            DataClassification = CustomerContent;
        }

        field(90; "Passing Rate"; Integer)
        {
            Caption = 'Passing Rate';
            DataClassification = CustomerContent;
        }

        field(100; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            DataClassification = CustomerContent;
            TableRelation = Resource WHERE(Type = CONST(Person));
        }

        field(120; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name WHERE("No." = FIELD("Instructor Code")));
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }

        key(Key1; "Instructor Code")
        {
        }

        key(Key2; Type)
        {
        }
    }
}
