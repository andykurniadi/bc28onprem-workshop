pageextension 50111 "CRONUS Customer List" extends "Customer List"
{
    actions
    {
        addlast("Reports")
        {
            action(LABCustomerList)
            {
                ApplicationArea = All;
                Caption = 'LAB Customer List';
                Image = Report;

                trigger OnAction()
                begin
                    Report.Run(Report::LABCustomerList);
                end;
            }
        }
    }
}
