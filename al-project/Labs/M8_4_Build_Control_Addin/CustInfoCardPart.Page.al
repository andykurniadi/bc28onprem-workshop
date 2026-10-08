page 50106 "CustInfoCardPart"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Caption = 'Customer Information';

    layout
    {
        area(Content)
        {
            usercontrol(CustInfoCtrl; CustInfoCtrl)
            {
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        GetCustomerInfo();
    end;

    local procedure GetCustomerInfo()
    var
        CustInfo: JsonObject;
    begin
        CustInfo.Add('name', Rec.Name);
        CustInfo.Add('email', Rec."E-Mail");
        CustInfo.Add('phone', Rec."Phone No.");
        CurrPage.CustInfoCtrl.GetCustomerInfo(CustInfo);
    end;
}
