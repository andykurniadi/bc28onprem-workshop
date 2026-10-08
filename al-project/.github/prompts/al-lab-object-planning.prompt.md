---
agent: Plan
description: 'Analyze a Business Central AL lab exercise, itemize objectives, assign valid object IDs in range, and consolidate the technical work needed for new or updated objects.'
---
# Use skill 
/skill plan-model-selection

# AL Lab Object Planning

You are working in a Microsoft Dynamics 365 Business Central AL extension project.

Analyze the selected lab exercise in the workspace and produce an implementation-ready planning summary.
You **MUST** ask before proceeding if any of the following information is missing:
1. The URL link to the lab exercise to proceed with the analysis.
2. The target path folder in the workspace where the new or updated AL objects should be created or modified.

## Objective
Review the relevant lab content under the Labs folder and determine:
1. the objective of the exercise;
2. each required object or modification;
3. whether the object is new or an update to an existing object;
4. a valid AL object ID within the current project range; and
5. the technical implementation details needed to complete the object or update.

## Required Inputs
Use these as the source of truth when available:
- the selected lab folder or files in Labs/
- the extension metadata in app.json
- the current object ID range in app.json
- any existing object patterns already present in the project

## Rules
- Validate all proposed object IDs against the allowed range in app.json.
- Prefer the next free valid ID in range when a new object is required.
- Do not propose IDs outside the configured idRanges.
- If the object already exists, do not create a duplicate; describe the update required.
- Keep the output implementation-focused and suitable for a developer or reviewer.
- When the exercise includes multiple steps, itemize them in a logical sequence.

## Output Format
Return a structured plan with these sections:

### 1. Exercise Summary
- Lab name or folder
- Business purpose of the exercise
- Overall goal

### 2. Objectives Breakdown
List each objective as a numbered item.
For each objective, include:
- objective name
- what the user is expected to learn or implement
- expected outcome

### 3. Object Inventory
For each object involved, include:
- object type (Table, Page, Codeunit, Report, Enum, TableExtension, PageExtension, etc.)
- object name
- action: New object or Update existing object
- proposed object ID
- valid range check: confirm the ID is within the configured range from app.json
- reason for the ID choice

### 4. Technical Implementation Notes
For each object, summarize:
- purpose of the object
- key properties and fields / actions / triggers involved
- required AL syntax patterns or code structure
- dependencies or references to other objects
- any required page action, table relation, UI behavior, report logic, or event handling

### 5. Consolidated Implementation Plan
Provide a short, actionable list of what to create or modify first, including:
- new object creation steps
- modification steps for existing objects
- validation or testing steps
- any app.json changes needed

### 6. Final Recommendation
Conclude with a clear recommendation such as:
- create these objects,
- update these existing objects,
- keep the project in the current valid ID range,
- no app.json change required, or
- app.json range update is required if the exercise demands a broader object space.

## Context-Specific Guidance for This Repository
This workspace uses a Business Central AL extension with the configured range in app.json.
Use that range as the authoritative source when identifying valid object IDs.

When analyzing the labs:
- review the files under Labs/ for the exercise pattern;
- compare with current project structure and naming conventions;
- map the lab requirements to AL object types already used in the solution;
- keep the plan aligned with the extension version and current feature set.

## Example final wording
A strong final answer should read like a planning document rather than generic advice, for example:

- Objective 1: Create a table to store course data.
- New object: Table Course, ID 50100, valid range 50100..50149.
- Technical implementation: define fields, keys, caption, and table relations required by the lab.
- Update existing object: Page Course List, ID 50101, extend page actions and source table binding.

## Execution
Execute the analysis directly from the selected files and the project metadata. Do not invent objects that do not correspond to the exercise.
