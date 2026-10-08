page 50128 "Photo Info Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Photo Info Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(PhotoIdField; PhotoId)
                {
                    ApplicationArea = All;
                    Caption = 'Photo ID';
                }

                field(AlbumIdField; AlbumId)
                {
                    ApplicationArea = All;
                    Caption = 'Album ID';
                    Editable = false;
                }

                field(ResponseIdField; ResponseId)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                    Editable = false;
                }

                field(TitleField; TitleText)
                {
                    ApplicationArea = All;
                    Caption = 'Title';
                    Editable = false;
                }

                field(URLField; PhotoURL)
                {
                    ApplicationArea = All;
                    Caption = 'URL';
                    Editable = false;
                }

                field(ThumbnailURLField; ThumbnailURL)
                {
                    ApplicationArea = All;
                    Caption = 'Thumbnail URL';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetPhotoInfoAction)
            {
                ApplicationArea = All;
                Caption = 'Get Photo Info';
                Image = Refresh;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    GetPhotoInfo(PhotoId);
                end;
            }
        }
    }

    var
        PhotoId: Integer;
        AlbumId: Integer;
        ResponseId: Integer;
        TitleText: Text[250];
        PhotoURL: Text[2048];
        ThumbnailURL: Text[2048];

    trigger OnOpenPage()
    begin
        PhotoId := 1;
        GetPhotoInfo(PhotoId);
    end;

    local procedure GetPhotoInfo(Id: Integer)
    var
        HttpClient: HttpClient;
        HttpResponse: HttpResponseMessage;
        JsonObject: JsonObject;
        JsonToken: JsonToken;
        ResponseText: Text;
        RequestURL: Text;
    begin
        Clear(AlbumId);
        Clear(ResponseId);
        Clear(TitleText);
        Clear(PhotoURL);
        Clear(ThumbnailURL);

        RequestURL := StrSubstNo('https://jsonplaceholder.typicode.com/photos/%1', Id);

        if not HttpClient.Get(RequestURL, HttpResponse) then
            Error('GET request failed.');

        if not HttpResponse.IsSuccessStatusCode() then
            Error('Request failed with status code %1: %2', HttpResponse.HttpStatusCode(), HttpResponse.ReasonPhrase());

        if not HttpResponse.Content.ReadAs(ResponseText) then
            Error('Unable to read response content.');

        if ResponseText = '' then
            Error('Response body is empty.');

        if not JsonObject.ReadFrom(ResponseText) then
            Error('Response is not valid JSON.');

        if JsonObject.Get('albumId', JsonToken) then
            AlbumId := JsonToken.AsValue().AsInteger();

        if JsonObject.Get('id', JsonToken) then
            ResponseId := JsonToken.AsValue().AsInteger();

        if JsonObject.Get('title', JsonToken) then
            TitleText := CopyStr(JsonToken.AsValue().AsText(), 1, MaxStrLen(TitleText));

        if JsonObject.Get('url', JsonToken) then
            PhotoURL := CopyStr(JsonToken.AsValue().AsText(), 1, MaxStrLen(PhotoURL));

        if JsonObject.Get('thumbnailUrl', JsonToken) then
            ThumbnailURL := CopyStr(JsonToken.AsValue().AsText(), 1, MaxStrLen(ThumbnailURL));
    end;
}
