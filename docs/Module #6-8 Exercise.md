# Module #6-8: Exercise

> Part of: Module 6: Programming in AL

`Vscode Path: Labs\M6_7_Events_Triggers`
`Agent Model: MAI-Code-1.1-Flash`

## [**Exercise - Create an interface**](https://learn.microsoft.com/en-us/training/modules/business-central-interfaces/4-exercise)

Prompt Instruction 1:
`“Analyst the lab exercise following link https://learn.microsoft.com/en-us/training/modules/business-central-interfaces/4-exercise and summary the high level objective”`

Prompt Instruction 2:
`“``/plan`` your new object implementation , avoid using duplicate id”`

Agent Response 2:
`This task adds the interface exercise into the empty lab folder under M6_8_Create_Interface. The goal is to match the Microsoft Learn lab while keeping all AL object IDs unique inside the app’s declared range in app.json.`
`Steps`
- `Confirm the app b and current object numbers in app.json and the existing AL files, then reserve a clean block that does not overlap with any used IDs.`
- `Create the ``interface definition`` in the lab folder using a new unique object ID, with the IAddressProvider contract and GetAddress() method.`
- `Add`` two codeunits that implement the interface``, each with distinct IDs and different address outputs for company and private cases.`
- `Add an`` enum to choose the active provider``, using a unique ID and values for Company and Private.`
- `Create the ``page object`` with actions to select home/work and trigger the interface call, using a unique page ID and the factory pattern from the exercise.`
- `Validate the extension by compiling and checking that no duplicate object IDs exist and the page behavior matches the learning objective.`
`Relevant files`
- `app.json — defines the allowed ID range and prevents collisions.`
- `Validations.CodeUnit.al — example of the project’s AL style and naming conventions.`
- `CourseCard.Page.al — pattern for page structure and actions.`
- `M6_8_Create_Interfac``e — target folder for the new implementation.`

Prompt Instruction 3:
`“Implement the new lab exercise”`

Agent Response 3:
`5 object creation`
`1) Interface definition`
`2) Company provider codeunit`
`3) Private provider codeunit`
`4) Enum for the selected address type`
`5) Page that selects the provider and calls the interface`
