page 50124 "User information Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'User information Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(ID; ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';

                    trigger OnValidate()
                    begin
                        GetUserInfo();
                    end;
                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                    Editable = false;
                }

                field(Email; Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                    Editable = false;
                }

                field(Phone; Phone)
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                    Editable = false;
                }

                field(CompanyName; CompanyName)
                {
                    ApplicationArea = All;
                    Caption = 'Company Name';
                    Editable = false;
                }
            }
        }
    }

    var
        ID: Integer;
        Name: Text;
        Email: Text;
        Phone: Text;
        CompanyName: Text;

    local procedure GetUserInfo()
    var
        Client: HttpClient;
        ResponseMessage: HttpResponseMessage;
        Token: JsonToken;
        Object: JsonObject;
        JsonText: Text;
        Url: Text;
    begin
        Url := 'https://jsonplaceholder.typicode.com/users/' + Format(ID);

        if not Client.Get(Url, ResponseMessage) then
            Error(ErrorInfo.Create('The call to the web service failed.'));

        if not ResponseMessage.IsSuccessStatusCode then
            Error(ErrorInfo.Create('The web service returned an error message:\' +
                'Status code: ' + Format(ResponseMessage.HttpStatusCode()) +
                'Description: ' + ResponseMessage.ReasonPhrase()));

        ResponseMessage.Content.ReadAs(JsonText);

        if not Object.ReadFrom(JsonText) then
            Error(ErrorInfo.Create('Invalid response, expected a JSON object'));

        Object.Get('name', Token);
        Name := Token.AsValue().AsText();

        Object.Get('phone', Token);
        Phone := Token.AsValue().AsText();

        Object.Get('email', Token);
        Email := Token.AsValue().AsText();

        Object.Get('company', Token);
        Token.AsObject.Get('name', Token);
        CompanyName := Token.AsValue().AsText();
    end;
}
