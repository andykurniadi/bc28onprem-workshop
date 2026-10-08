codeunit 50127 "Image Management"
{
    procedure ImportItemPicture(Item: Record Item)
    var
        PicInStream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The existing picture will be replaced. Continue?';
    begin
        if Item.Picture.Count() > 0 then
            if not Confirm(OverrideImageQst) then
                exit;

        if File.UploadIntoStream('Import', '', 'All Files (*.*)|*.*', FromFileName, PicInStream) then begin
            Clear(Item.Picture);
            Item.Picture.ImportStream(PicInStream, FromFileName);
            Item.Modify(true);
        end;
    end;
}
