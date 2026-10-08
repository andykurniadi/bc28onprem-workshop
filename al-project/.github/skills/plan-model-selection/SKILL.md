---
name: plan-model-selection
description: 'Use when creating or executing a plan in plan mode. Restrict model selection to the approved planning models: Claude Haiku 4.5, Claude Sonnet 4.6, GPT-5 mini, and GPT-5.6 Luna. Preserve the requested model when available and report availability limits clearly.'
argument-hint: 'Describe the task to plan and optionally name one approved model.'
user-invocable: true
disable-model-invocation: false
---

# Plan Model Selection

## When to Use

Use this skill whenever the user asks to:

- create, revise, or execute a plan;
- use plan mode;
- choose a model for planning; or
- restrict planning to a specified model set.

## Approved Models

Use only these models for plan-mode work:

1. `Claude Haiku 4.5`
2. `Claude Sonnet 4.6`
3. `GPT-5 mini`
4. `GPT-5.6 Luna`
5. `MAI-Code-1.1-Flash` (for code generation tasks)


Treat these names as the approved friendly labels. If the host exposes different canonical model identifiers, map them only when the mapping is unambiguous.

## Procedure

1. Detect that the request is planning-related before selecting a model.
2. Check whether the user explicitly requested one of the approved models.
3. If a requested approved model is available, use that model.
4. If no model was requested, select one model from the approved list according to the host's model availability and the task's complexity.
5. Do not select a model outside the approved list.
6. If none of the approved models is available, do not silently substitute another model. Explain the limitation and ask the user how to proceed.
7. Keep the plan focused on the user's task, with assumptions, implementation steps, decision points, and verification checks.
8. At the end of the plan, state which approved model was selected or state that selection could not be completed.

## Model Preference Guidance

- Use `Claude Haiku 4.5` for short, straightforward plans.
- Use `Claude Sonnet 4.6` for plans requiring broader repository context or nuanced tradeoffs.
- Use `GPT-5 mini` for compact implementation plans and quick iteration.
- Use `GPT-5.6 Luna` when the host identifies it as the suitable approved model for the task.

Do not claim that a model was used unless the host confirms the selection. If a friendly label cannot be matched confidently to an available canonical model, report that ambiguity instead of guessing.

## Completion Checks

Before returning a plan, verify that:

- the selected model is in the approved list;
- no unapproved fallback was silently chosen;
- the plan identifies the concrete files, symbols, or behavior involved when repository context exists;
- the plan includes at least one falsifiable verification step; and
- model availability or naming ambiguity is disclosed when relevant.
