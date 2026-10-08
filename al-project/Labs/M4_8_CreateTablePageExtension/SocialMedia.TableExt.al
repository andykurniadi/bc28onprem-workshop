tableextension 50110 "CRONUS Social Media Table Ext" extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = CustomerContent;
        }

        field(50111; "X, formerly Twitter"; Text[30])
        {
            Caption = 'X, formerly Twitter';
            DataClassification = CustomerContent;
        }

        field(50112; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = CustomerContent;
        }

        field(50113; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
            DataClassification = CustomerContent;
        }
    }
}
