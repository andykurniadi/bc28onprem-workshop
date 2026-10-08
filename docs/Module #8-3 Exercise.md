# Module #8-3: Exercise

> Part of: Module 8: Integration & Web Services

## [**Exercise - Connect to external REST services**](https://learn.microsoft.com/en-us/training/modules/access-rest-services/6-exercise)

`Vscode Path: Labs\M8_3_Connect_External_REST`
`Agent Model: MAI-Code-1.1-Flash`

Prompt Instruction 1:
_“_**_/al-lab-object-planning_**_ analyst exercise lab https://learn.microsoft.com/en-us/training/modules/access-rest-services/6-exercise” _

Agent Response: (it understand the folder to generate the output)
`…
5. Consolidated Implementation Plan`
- `Create the new page object in ``M8_3_Connect_External_REST``.`
- `Set the page metadata and layout: Card page, no SourceTable, General group, fields for ID and result data.`
- `Add the global variables and the local GetUserInfo procedure.`
- `Add the ID field trigger so the REST call runs on validation.`
- `Publish the extension and set the startup page to this new object in the VS Code launch configuration.`
- `Validate by entering values like 1–10 to confirm the REST response populates the page.`
- `Confirm no change to app.json is needed because the chosen ID is already inside the valid range.`

Prompt Instruction 2: Switch to Agent;
`“Start implementation”`

## Own Exercise:

### Generate page to connect REST API from fresh Prompt

Prompt Instruction 1: (**switch to plan mode**)
**_“/skill _**_plan-model-selection_**_”_**

Prompt Instruction 2:
`“You ack as AL developer to generate a new page object to display response data from API https://jsonplaceholder.typicode.com/photos.`
`You are using REST pattern with GET method using httpclient with input parameter id. you should create a Function GetPhotoInfo in the page object.`
`You should display the each response element in page. You should generate single object to complete the codes.`
`You need to find a new valid page object id and do not use existing object in the project as your reference.`
`The new page object should in generated in M8_3_Connect_External_REST`
`You should ask question if you need to plan your design.”`

Prompt Instruction 3: (switch to agent mode)
`“Start implementation”`
