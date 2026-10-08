using System.ServiceModel;
using BCSoapClient.ServiceReference;

const string serviceUrl = "https://win22-bc28:7047/BC280/WS/My%20Test%20Company/Page/ak_Customers";
const string userName = "winuser1";
const string password =    "P455w0rd";

Console.Write("Country/Region Code [GB]: ");
var countryCode = Console.ReadLine()?.Trim().ToUpperInvariant();
countryCode = string.IsNullOrWhiteSpace(countryCode) ? "GB" : countryCode;

var binding = new BasicHttpBinding(BasicHttpSecurityMode.Transport)
{
	Security = { Transport = { ClientCredentialType = HttpClientCredentialType.Windows } },
	MaxReceivedMessageSize = 10 * 1024 * 1024
};

var client = new CustomersPortClient(binding, new EndpointAddress(serviceUrl));
client.ClientCredentials.Windows.ClientCredential = new System.Net.NetworkCredential(userName, password);

try
{
	var response = client.ReadMultiple(new ReadMultipleRequest
	{
		Filter =
		[
			new CustomersFilter
			{
				Field = CustomersField.CountryRegionCode,
				Criteria = countryCode
			}
		],
		SetSize = 100
	});

	var customers = response.Result?.Customers ?? [];
	Console.WriteLine($"Customers in {countryCode}: {customers.Length}");
	foreach (var customer in customers)
	{
		Console.WriteLine($"{customer.No} | {customer.Name} | {customer.City} | {customer.CountryRegionCode} | {customer.Email}");
	}

	await client.CloseAsync();
}
catch (FaultException fault)
{
	client.Abort();
	Console.Error.WriteLine($"The SOAP service returned a fault: {fault.Message}");
	Environment.ExitCode = 1;
}
catch (CommunicationException communicationError)
{
	client.Abort();
	Console.Error.WriteLine($"Could not communicate with the SOAP service: {communicationError.Message}");
	Environment.ExitCode = 1;
}
catch (TimeoutException timeoutError)
{
	client.Abort();
	Console.Error.WriteLine($"The SOAP request timed out: {timeoutError.Message}");
	Environment.ExitCode = 1;
}
