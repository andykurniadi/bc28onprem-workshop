using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Xml.Serialization;

namespace BCSoapClient.ServiceReference;

public static class SoapContract
{                                    
    public const string Namespace = "urn:microsoft-dynamics-schemas/page/ak_customers";
}

[ServiceContract(Namespace = SoapContract.Namespace)]
[XmlSerializerFormat]
public interface ICustomersPort
{
    [OperationContract(Action = SoapContract.Namespace + ":ReadMultiple", ReplyAction = "*")]
    ReadMultipleResponse ReadMultiple(ReadMultipleRequest request);
}

public sealed class CustomersPortClient : ClientBase<ICustomersPort>, ICustomersPort
{
    public CustomersPortClient(Binding binding, EndpointAddress endpointAddress)
        : base(binding, endpointAddress)
    {
    }

    public ReadMultipleResponse ReadMultiple(ReadMultipleRequest request) => Channel.ReadMultiple(request);
}

[MessageContract(IsWrapped = true, WrapperName = "ReadMultiple", WrapperNamespace = SoapContract.Namespace)]
public sealed class ReadMultipleRequest
{
    [MessageBodyMember(Name = "filter", Namespace = SoapContract.Namespace, Order = 0)]
    [XmlElement("filter")]
    public CustomersFilter[] Filter { get; set; } = [];

    [MessageBodyMember(Name = "bookmarkKey", Namespace = SoapContract.Namespace, Order = 1)]
    public string? BookmarkKey { get; set; }

    [MessageBodyMember(Name = "setSize", Namespace = SoapContract.Namespace, Order = 2)]
    public int SetSize { get; set; }
}

[MessageContract(IsWrapped = true, WrapperName = "ReadMultiple_Result", WrapperNamespace = SoapContract.Namespace)]
public sealed class ReadMultipleResponse
{
    [MessageBodyMember(Name = "ReadMultiple_Result", Namespace = SoapContract.Namespace, Order = 0)]
    public CustomersList? Result { get; set; }
}

[XmlType(Namespace = SoapContract.Namespace)]
public sealed class CustomersFilter
{
    [XmlElement(Order = 0)]
    public CustomersField Field { get; set; }

    [XmlElement(Order = 1)]
    public string Criteria { get; set; } = string.Empty;
}

[XmlType(Namespace = SoapContract.Namespace)]
public enum CustomersField
{
    No,
    Name,
    SearchName,
    Address,
    City,
    PhoneNo,
    Email,
    CountryRegionCode
}

[XmlType(Namespace = SoapContract.Namespace)]
public sealed class CustomersList
{
    [XmlElement("ak_Customers", Order = 0)]
    public Customer[] Customers { get; set; } = [];
}

[XmlType(TypeName = "ak_Customers", Namespace = SoapContract.Namespace)]
public sealed class Customer
{
    [XmlElement(Order = 0)]
    public string Key { get; set; } = string.Empty;

    [XmlElement(Order = 1)]
    public string No { get; set; } = string.Empty;

    [XmlElement(Order = 2)]
    public string Name { get; set; } = string.Empty;

    [XmlElement(Order = 3)]
    public string SearchName { get; set; } = string.Empty;

    [XmlElement(Order = 4)]
    public string Address { get; set; } = string.Empty;

    [XmlElement(Order = 5)]
    public string City { get; set; } = string.Empty;

    [XmlElement(Order = 6)]
    public string PhoneNo { get; set; } = string.Empty;

    [XmlElement(Order = 7)]
    public string Email { get; set; } = string.Empty;

    [XmlElement(Order = 8)]
    public string CountryRegionCode { get; set; } = string.Empty;
}