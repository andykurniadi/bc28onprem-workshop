pageextension 50104 CustomerList extends "Customer List"
{
    actions
    {
        addafter("&Customer")
        {
            action(ExportToXml)
            {
                Caption = 'Export to XML';
                ToolTip = 'Export to XML';
                ApplicationArea = All;
                Image = XMLFile;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    CustomerXml: XmlPort "Customer XML";
                    OutStr: OutStream;
                    InStr: InStream;
                    FileName: Text;
                begin
                    TempBlob.CreateOutStream(OutStr);
                    CustomerXml.SetDestination(OutStr);
                    CustomerXml.Export();
                    TempBlob.CreateInStream(InStr);
                    FileName := 'Customers.xml';
                    File.DownloadFromStream(InStr, 'Download', '', '', FileName);
                end;
            }
        }
    }
}
