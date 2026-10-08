pageextension 50107 "Sales Invoice Customer Info" extends "Sales Invoice"
{
    layout
    {
        addfirst(factboxes)
        {
            part(CustInfoCardPart; CustInfoCardPart)
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("Bill-to Customer No.");
            }
        }
    }
}
