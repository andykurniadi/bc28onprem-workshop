# Lab 8: Build AL lab objects with Copilot

## Goal

Create AL learning objects (table, card page, list page) from Microsoft Learn exercises using Copilot with source-grounded prompts.

## Model guidance

- Use model: `MAI-Code-1.1-Flash` (as specified in the workshop source).

## 1. Table exercise

Source:

- https://learn.microsoft.com/en-gb/training/modules/work-with-tables/11-exercise

Prompt sequence:

1. `"Read the lab exercise content, focus on the new table creation and extract the key information with tabular format and point item for new table creation and summarize it."`
2. `"Proceed create the AL file based on extracted information earlier."`

## 2. Card page exercise

Source:

- https://learn.microsoft.com/en-gb/training/modules/work-with-pages/11-exercise

Prompt sequence:

1. `"Read the lab exercise for creating a card page. Summarize it in tabular format and track back the point number."`
2. `"Generate the page object according the extraction information and validate with the source link exercise."`

## 3. List page exercise

Source:

- https://learn.microsoft.com/en-gb/training/modules/work-with-pages/12-exercise

Prompt sequence:

1. `"Read the exercise lab and summarize the intention in tabular format and point list."`
2. `"Generate the page list object as per extracted summary and verify the result back against the source exercise link."`

## Suggested output structure

Store generated objects under `al-project\src\`:

- `al-project\src\tables\`
- `al-project\src\pages\`

Keep generated code under version control, and keep local publish configuration in ignored files only.

