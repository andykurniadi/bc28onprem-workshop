# Module #12-5: Exercise

> Part of: Module 12: Power Platform & Advanced Integration

## [Exercise - Create a testing process](https://learn.microsoft.com/en-us/training/modules/create-custom-connector-power-platform/6-exercise)

The lab exercised was customized with own exercise

### Create custom connector Get Customers with OAuth2.0

Use existing “BC OnPrem Application Integration”
Using Client Secret BC Email Secret

![Screenshot 1](../assets/images/module-12-5-exercise-01.png)
<!-- Auto-blurred via OCR redaction pipeline (8 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

API: [`https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/andykurniadi/ak_app/v2.0/companies(4165440c-0888-f111-ad39-00155d017002)/ak_customers`](https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/andykurniadi/ak_app/v2.0/companies(4165440c-0888-f111-ad39-00155d017002)/ak_customers)

**Host : **
[**mandyk1973.asuscomm.com:7148**](http://mandyk1973.asuscomm.com:7148)
**Base URL: **
**/BC280-Entra/api/andykurniadi/ak_app/v2.0**

![Screenshot 2](../assets/images/module-12-5-exercise-02.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 3](../assets/images/module-12-5-exercise-03.png)
<!-- Auto-blurred via OCR redaction pipeline (4 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

`Identity Provider 	: Azure AD`
`Client ID		: a1309c9b-db58-4b5b-ac18-a8222de707df`
`Client Secret	: <Client Secret>`
`
Authorized URL 	: https://login.microsoftonline.com`
`Tenant ID		: 84295b8f-b56a-4026-badd-441329a8e103`
`Resource URL		: a1309c9b-db58-4b5b-ac18-a8222de707df`

`Scope 			: Scope `

`Redirect URL		:`
`https://global.consent.azure-apim.net/redirect/bc28-20onprem-20get-20customer-5f4c3a1b61feb047-8a190a8ab0f6da74`

Add redirect URL Application Registration

![Screenshot 4](../assets/images/module-12-5-exercise-04.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Test Connection

![Screenshot 5](../assets/images/module-12-5-exercise-05.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

#### Parameterized Company

![Screenshot 6](../assets/images/module-12-5-exercise-06.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Use relative path respect of base path url

![Screenshot 7](../assets/images/module-12-5-exercise-07.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

/companies({companyId})/ak_customers

![Screenshot 8](../assets/images/module-12-5-exercise-08.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Update the custom connector

![Screenshot 9](../assets/images/module-12-5-exercise-09.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 10](../assets/images/module-12-5-exercise-10.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

From root api URI:
https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/v2.0/companies

From “andykurniadi” publisher

https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/andykurniadi/ak_app/v2.0/companies

`{`
`  "@odata.context": ``"https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/andykurniadi/ak_app/v2.0/$metadata#companies"``,`
`  "value": [`
`    {`
`      "id": "5010745b-bd75-f111-a5bb-7ced8d3f746d",`
`      "systemVersion": "28.3.52162.52222",`
`      "timestamp": 48351,`
`      "name": "CRONUS International Ltd.",`
`      "displayName": "",`
`      "businessProfileId": "",`
`      "systemCreatedAt": "2026-07-02T02:25:57.89Z",`
`      "systemCreatedBy": "00000000-0000-0000-0000-000000000001",`
`      "systemModifiedAt": "2026-07-02T02:25:57.89Z",`
`      "systemModifiedBy": "00000000-0000-0000-0000-000000000001"`
`    },`
`    {`
`      "id": "4165440c-0888-f111-ad39-00155d017002",`
`      "systemVersion": "28.3.52162.52222",`
`      "timestamp": 524997,`
`      "name": "My Test Company",`
`      "displayName": "CRONUS International Ltd.",`
`      "businessProfileId": "",`
`      "systemCreatedAt": "2026-07-25T09:05:58.223Z",`
`      "systemCreatedBy": "f0e8ecdc-e4e2-45db-b50f-f20c9b967caa",`
`      "systemModifiedAt": "2026-09-08T03:46:02.14Z",`
`      "systemModifiedBy": "f0e8ecdc-e4e2-45db-b50f-f20c9b967caa"`
`    }`
`  ]`
`}`

Test company ID :
4165440c-0888-f111-ad39-00155d017002

#### Create GetCompanies Action

**Note:** use Entra Server Instance
https://mandyk1973.asuscomm.com:7148/BC280-Entra/api/andykurniadi/ak_app/v2.0/

{
"@odata.context": "https://mandyk1973.asuscomm.com:7248/BC280-NAVUP/api/andykurniadi/ak_app/v2.0/$metadata",
"value": [
{
"name": "entityDefinitions",
"kind": "EntitySet",
"url": "entityDefinitions"
},
{
** "name": "companies",**
**      "kind": "EntitySet",**
**      "url": "companies"**
},
{
"name": "subscriptions",
"kind": "EntitySet",
"url": "subscriptions"
},
{
"name": "externaleventsubscriptions",
"kind": "EntitySet",
"url": "externaleventsubscriptions"
},
{
"name": "externalbusinesseventdefinitions",
"kind": "EntitySet",
"url": "externalbusinesseventdefinitions"
},
{
"name": "apicategoryroutes",
"kind": "EntitySet",
"url": "apicategoryroutes"
},
{
"name": "ak_customers",
"kind": "EntitySet",
"url": "ak_customers"
}
]
}

![Screenshot 11](../assets/images/module-12-5-exercise-11.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 12](../assets/images/module-12-5-exercise-12.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 13](../assets/images/module-12-5-exercise-13.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Import response sample from full sample response so it able to detect the fields

![Screenshot 14](../assets/images/module-12-5-exercise-14.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Update the connector and test

![Screenshot 15](../assets/images/module-12-5-exercise-15.png)
<!-- Auto-blurred via OCR redaction pipeline (3 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

#### Discovery: Create GetCompanyList that response only list id and name

https://mandyk1973.asuscomm.com:7248/BC280-NAVUP/api/andykurniadi/ak_app/v2.0/companies?**$select=id,name**

`{`
`  "@odata.context": "https://mandyk1973.asuscomm.com:7248/BC280-NAVUP/api/andykurniadi/ak_app/v2.0/$metadata#companies",`
`  "value": [`
`    {`
`      "id": "5010745b-bd75-f111-a5bb-7ced8d3f746d",`
`      "name": "CRONUS International Ltd."`
`    },`
`    {`
`      "id": "4165440c-0888-f111-ad39-00155d017002",`
`      "name": "My Test Company"`
`    }`
`  ]`
`}`

NOTE: Custom Connector not allowed to have 2 action with same path

#### Dynamic Dropdown List for Companyid parameter of GetCustomer

Reference:
[https://learn.microsoft.com/en-us/training/modules/custom-connectors-open-api/5-exercise](https://learn.microsoft.com/en-us/training/modules/custom-connectors-open-api/5-exercise)

![Screenshot 16](../assets/images/module-12-5-exercise-16.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Click on companyId and scroll down to below portion

![Screenshot 17](../assets/images/module-12-5-exercise-17.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Swagger part: (adding `x-ms-dynamic-list)`

`      summary: Get Customer List`
`      description: Get AK Customer List`
`      operationId: GetCustomer`
`      parameters:`
`        - name: companyId`
`          in: path`
`          required: true`
`          type: string`
`          x-ms-visibility: important`
`          x-ms-summary: Company ID`
`          x-ms-dynamic-values:`
`            operationId: GetCompanies`
`            value-collection: value`
`            value-path: id`
`            value-title: name`
`            parameters: {}`
`          x-ms-dynamic-list:`
`            operationId: GetCompanies`
`            itemsPath: value`
`            itemValuePath: id`
`            itemTitlePath: name`
`            parameters: {}`

The drop down list unable to show (unkown)

![Screenshot 18](../assets/images/module-12-5-exercise-18.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

### Creating Canvas App with BC28 OnPrem Custom Connector

Add Custom Connector BC28OnPrem

![Screenshot 19](../assets/images/module-12-5-exercise-19.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 20](../assets/images/module-12-5-exercise-20.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Call GetCompanies with select id and name

`Collect(`
`    colCompanies,`
`    ShowColumns(`
`        BC28OnPrem.GetCompanies().value,`
`        id,`
`        name`
`    )`
`);`

![Screenshot 21](../assets/images/module-12-5-exercise-21.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 22](../assets/images/module-12-5-exercise-22.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Customer List use colCustomers

![Screenshot 23](../assets/images/module-12-5-exercise-23.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 24](../assets/images/module-12-5-exercise-24.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

`If(`
`    IsBlank(drDcompanies.Selected.id),`

`    Clear(colCustomers);`
`    Set(varCustomerVisible,false);`
`    Set(varLoading,false);`
`    Notify(`
`        "Select a company first",`
`        NotificationType.Error`
`    ),`

`    Set(varLoading,true);`
`    Set(varCustomerVisible,false);`
`    Clear(colCustomers);`

`    ClearCollect(`
`        colCustomers,`
`        BC28OnPrem.GetCustomer(`
`            drDcompanies.Selected.id`
`        ).value`
`    );`
`    Set(varLoading,false);`
`    Set(varCustomerVisible,!IsEmpty(colCustomers))`
`)`

Customer Detail use vertical container

![Screenshot 25](../assets/images/module-12-5-exercise-25.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Use Selected property to display the customer rec detail

`gallCustomers.Selected.No`
`gallCustomers.Selected.Name`
Etc.
