tableextension 50124 CustomerExt extends Customer
{
    procedure UpdateCreditLimit(var NewCreditLimit: Decimal)
    begin
        NewCreditLimit := Round(NewCreditLimit, 10000);
        Rec.Validate("Credit Limit (LCY)", NewCreditLimit);
        Rec.Modify();
    end;

    procedure CalculateCreditLimit(): Decimal
    var
        Customer: Record Customer;
    begin
        Customer := Rec;
        Customer.SetRange("Date Filter", CalcDate('<-12M>', WorkDate()), WorkDate());
        Customer.CalcFields("Sales (LCY)", "Balance (LCY)");

        if Customer."Sales (LCY)" <= 0 then
            exit(0);

        exit(Round(Customer."Sales (LCY)" * 0.5));
    end;
}
