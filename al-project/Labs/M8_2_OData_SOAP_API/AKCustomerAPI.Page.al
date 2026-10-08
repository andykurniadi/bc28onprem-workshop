page 50142 "AK Customer API"
{
    PageType = API;
    Caption = 'AK Customer API';
    APIPublisher = 'andykurniadi';
    APIGroup = 'ak_app';
    APIVersion = 'v2.0';
    EntityName = 'ak_customer';
    EntitySetName = 'ak_customers';
    SourceTable = Customer;
    DelayedInsert = true;
    //Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                }
                field(SearchName; Rec."Search Name")
                {
                    Caption = 'Search Name';
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    Caption = 'City';
                    ApplicationArea = All;
                }
                field(PhoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                    ApplicationArea = All;
                }
                field(Email; Rec."E-Mail")
                {
                    Caption = 'Email';
                    ApplicationArea = All;
                }
                field(CountryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                    ApplicationArea = All;
                }
            }
        }
    }
}
