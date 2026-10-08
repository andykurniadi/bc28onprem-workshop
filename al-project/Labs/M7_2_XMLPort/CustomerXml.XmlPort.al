xmlport 50103 "Customer XML"
{
    Direction = Export;
    Format = Xml;
    Caption = 'Export Customers(s) to XML';

    schema
    {
        textelement(Customers)
        {
            tableelement(Customer; Customer)
            {
                fieldattribute(Number; Customer."No.") { }
                fieldattribute(Language; Customer."Language Code") { }
                fieldelement(Name; Customer.Name) { }
                fieldelement(Phone; Customer."Phone No.") { }
                textelement(Address)
                {
                    XmlName = 'Address';
                    fieldelement(StreetAndNr; Customer.Address) { }
                    fieldelement(Zipcode; Customer."Post Code") { }
                    fieldelement(City; Customer.City) { }
                }
            }
        }
    }
}
