# Module #6-9: Exercise

> Part of: Module 6: Programming in AL

`Vscode Path: Labs\M6_9_DataManipulation_CustomFunction`
`Agent Model: MAI-Code-1.1-Flash`

## [**Exercise - Use data manipulation statements**](https://learn.microsoft.com/en-gb/training/modules/manipulate-data-via-code/6-exercise)

Prompt Instruction 1:
`“Analyst the lab exercise on this url content https://learn.microsoft.com/en-gb/training/modules/manipulate-data-via-code/6-exercise`
`and itemized the high level objective”`

Prompt Instruction 2:
`“``/plan`` the technical implementation for point no 1 until 5 and find the valid object id”`

Agent Response:
`I’m mapping the required AL implementation against the project structure and will identify the valid object IDs and the exact files needed for steps 1 through 5.`
✅ Valid object ID for this project
`The extension is configured with an object ID range from 50100 to 50149 in app.json:1-30.`
`Based on the existing AL objects already in the workspace, the used IDs are:`
- `50100`
- `..`
- `50121`
`So the first free valid object ID in this repo is:`
- `50117`
`This is the safest valid choice for a new object in this project, because 50117 is not currently assigned.`

`Plan for implementation points 1 to 5`
`1. Create the extension scaffold and confirm the object ID`
- `Start from the current app project defined in app.json:1-30.`
- `Keep to the project’s existing object ID range: 50100–50149.`
- `Use 50117 as the next free object ID unless a specific lab requirement says otherwise.`
`2. Create the custom table`
- `Build a new table to store the summary data, similar to the table pattern in Course.Table.al:1-80.`
- `Define fields such as:`
- `Entry No.`
- `Customer No.`
- `Customer Name`
- `Source Code`
- `Amount`
- `LastRunDate`
- `Add:`
- `DataClassification = CustomerContent`
- `Caption`
- `Primary key on Entry No.`
- `Keep the table clean and minimal, without unnecessary triggers or global variables.`
`3. Create the list page`
- `Create a page bound to the new table, following the pattern in CourseList.Page.al:1-41.`
- `Set:`
- `PageType = List`
- `SourceTable = custom table`
- `Caption`
- `ApplicationArea = All`
- `UsageCategory = Lists`
- `Editable = false`
- `Add a repeater with the relevant fields and tooltips.`
- `Add an action area with an Import Records button.`
`4. Create the processing codeunit`
- `Build a codeunit similar to the structure shown in Validations.CodeUnit.al:1-21.`
- `Declare record variables for:`
- `Customer Overview`
- `Customer`
- `Source Code`
- `G/L Entry`
- `In the OnRun trigger:`
- `clear the variables`
- `find the last entry number`
- `iterate through source codes and customers`
- `filter G/L entries by Source Type, Source Code, and Source No.`
- `calculate the amount`
- `insert the summarized result into the custom table`
- `This is the core data manipulation logic of the exercise.`
`5. Publish and validate the behavior`
- `Publish the extension to the sandbox.`
- `Open the custom list page.`
- `Click the Import Records action.`
- `Confirm that rows are created in the custom table and the data reflects the customer/source-code totals.`

`Relevant project references`
- `app.json:1-30 — confirms the valid AL ID range.`
- `Course.Table.al:1-80 — table pattern.`
- `CourseList.Page.al:1-41 — page pattern.`
- `Validations.CodeUnit.al:1-21 — codeunit pattern.`

`Final recommendation`
`Use 50117 as the valid new object ID for the next custom AL object in this project. It is the first free number in the reserved range and does not collide with any existing object in the workspace.`
`Created 2 todos`

Prompt Instruction 3: (switch to agent instead of plan)
`“start implementation points 1 to 4 under the path M6_9_DataManipulation_CustomFunction folder”`

## [**Exercise - Custom functions**](https://learn.microsoft.com/en-gb/training/modules/manipulate-data-via-code/7-exercise)

`Vscode Path: Labs\M6_9_DataManipulation_CustomFunction\CustomFunction`

Prompt Instruction 1:
`“Analyze the lab exercise content from this link https://learn.microsoft.com/en-gb/training/modules/manipulate-data-via-code/7-exercise. Summary the high level objective in item list format”`

Prompt Instruction 2:
`“``/plan`` the technical aspect implementation. use current project extension and object range. suggest the object id and focus on object creation.”`

Prompt Instruction 3: (subfolder customfunction does not exist)
`“start implement on object and logic creation under M6_9_DataManipulation_CustomFunction/``CustomFunction``”`
