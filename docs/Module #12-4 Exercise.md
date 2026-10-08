# Module #12-4: Exercise

> Part of: Module 12: Power Platform & Advanced Integration

## [Exercise - Create a table in Microsoft Dataverse](https://learn.microsoft.com/en-us/training/modules/use-model-driven-apps-common-data-service/7-exercise)

![Screenshot 1](../assets/images/module-12-4-exercise-01.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 2](../assets/images/module-12-4-exercise-02.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 3](../assets/images/module-12-4-exercise-03.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Connection with on prem data gateway enable

Using Windows → NTLM
`https://[your ID].example.com:7048/BC280/ODataV4/Company('<your-company>')/ak_employees`

`<your-server>\<your-user>`

![Screenshot 4](../assets/images/module-12-4-exercise-04.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Does not work: NTLM and SPNEGO

Using Navision User Password
`https://[your ID].example.com:7248/BC280-NAVUP/ODataV4/Company('<your-company>')/ak_employees`

![Screenshot 5](../assets/images/module-12-4-exercise-05.png)
<!-- Auto-blurred via OCR redaction pipeline (2 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 6](../assets/images/module-12-4-exercise-06.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 7](../assets/images/module-12-4-exercise-07.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 8](../assets/images/module-12-4-exercise-08.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 9](../assets/images/module-12-4-exercise-09.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

The refresh max 48 times per days

Dataflow:

![Screenshot 10](../assets/images/module-12-4-exercise-10.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Features in dataflows:

![Screenshot 11](../assets/images/module-12-4-exercise-11.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 12](../assets/images/module-12-4-exercise-12.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

The refresh took a while despite of small number of records

## Own Exercise - Connect to Dataverse

#### Setup the connection

Use : My Test Company

![Screenshot 13](../assets/images/module-12-4-exercise-13.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 14](../assets/images/module-12-4-exercise-14.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 15](../assets/images/module-12-4-exercise-15.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Client ID:  ID of  `BC OnPrem Application Integration`
Client Secret: `<client secret value>`
Redirect URL: `https://<your-server>/BC280/OAuthLanding.htm`

`Add this redirect URL at azure application registration`

![Screenshot 16](../assets/images/module-12-4-exercise-16.png)
<!-- Auto-blurred via OCR redaction pipeline (3 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 17](../assets/images/module-12-4-exercise-17.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

`https://<your-org>.crm5.dynamics.com`

![Screenshot 18](../assets/images/module-12-4-exercise-18.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Grant access permission.

![Screenshot 19](../assets/images/module-12-4-exercise-19.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

Adding dataverse/ dynamics CRM delegated permission

![Screenshot 20](../assets/images/module-12-4-exercise-20.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 21](../assets/images/module-12-4-exercise-21.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 22](../assets/images/module-12-4-exercise-22.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 23](../assets/images/module-12-4-exercise-23.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 24](../assets/images/module-12-4-exercise-24.png)
<!-- Auto-blurred via OCR redaction pipeline (1 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

![Screenshot 25](../assets/images/module-12-4-exercise-25.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Owning Team Roles (auto created)

![Screenshot 26](../assets/images/module-12-4-exercise-26.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Dataverse Integration User (auto created)

![Screenshot 27](../assets/images/module-12-4-exercise-27.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

#### Run test for currency table (ToIntegrateTable)

Field Mapping.
The integration field name lookup to dataverse table

![Screenshot 28](../assets/images/module-12-4-exercise-28.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 29](../assets/images/module-12-4-exercise-29.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 30](../assets/images/module-12-4-exercise-30.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 31](../assets/images/module-12-4-exercise-31.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Press OK button

![Screenshot 32](../assets/images/module-12-4-exercise-32.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Integration synch Jobs capture the situation

![Screenshot 33](../assets/images/module-12-4-exercise-33.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Result in Dataverse

![Screenshot 34](../assets/images/module-12-4-exercise-34.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Job queue entry related to currency.
The frequency is 30 min

![Screenshot 35](../assets/images/module-12-4-exercise-35.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

#### Run test for Customer table (ToIntegrateTable)

The customer is mapped as an account table in the dataverse.

![Screenshot 36](../assets/images/module-12-4-exercise-36.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Need to enable the No. fields

![Screenshot 37](../assets/images/module-12-4-exercise-37.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Run Match-Based Coupling

![Screenshot 38](../assets/images/module-12-4-exercise-38.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Coupling detail:
The resolved option to select which side as master, the BC or on the dataverse

![Screenshot 39](../assets/images/module-12-4-exercise-39.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Click the Account Number to Match on this field

![Screenshot 40](../assets/images/module-12-4-exercise-40.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Click ok, to run the job in the background.

The  job is on hold, and try set status to ready

![Screenshot 41](../assets/images/module-12-4-exercise-41.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Error because the payment term not yet synch

![Screenshot 42](../assets/images/module-12-4-exercise-42.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

`The data could not be updated because of the following error: Payment Terms Code 14 DAYS must be coupled to a Dataverse record.`

Disabled payment term first.

![Screenshot 43](../assets/images/module-12-4-exercise-43.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Power Platform admin center→DEV environment → Setting → Audits & Logs → System Job

![Screenshot 44](../assets/images/module-12-4-exercise-44.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

Below account owner is
`BCI - <your-company> (XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX)`

![Screenshot 45](../assets/images/module-12-4-exercise-45.png)
<!-- Auto-blurred via OCR redaction pipeline (5 region(s) detected: GUIDs/emails/secret-token keywords/hostnames/IPs). Please spot-check before relying on this for a public push. -->

#### Run test for Customer table (FromIntegrateTable)

Integration Table filter in default was:

`VERSION(1) SORTING(Field1) WHERE(Field6=1(3),Field54=1(0),Field202=1({``XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX``}|{00000000-0000-0000-0000-000000000000}))`

Translate with field name
`WHERE(`
`	StateCode = Active,`
`	IsDeleted = No,`
`	CompanyId IN (`
`    	``XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX``,`
`    	00000000-0000-0000-0000-000000000000`
`	)`
`)`

Replace `<your-company>` with the company selected in your own environment.

![Screenshot 46](../assets/images/module-12-4-exercise-46.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 47](../assets/images/module-12-4-exercise-47.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 48](../assets/images/module-12-4-exercise-48.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 49](../assets/images/module-12-4-exercise-49.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 50](../assets/images/module-12-4-exercise-50.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->

![Screenshot 51](../assets/images/module-12-4-exercise-51.png)
<!-- Auto-reviewed via OCR redaction pipeline: 0 sensitive text regions detected. OCR cannot catch non-text sensitive content (logos, photos, stylized graphics) -- please still skim before a public push. -->
