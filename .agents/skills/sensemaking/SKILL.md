---
name: sensemaking
description: Structure ambiguous, consequential questions before acting. Use for decisions, diagnoses, strategies, or forecasts with incomplete evidence or competing paths. Do not use for factual lookup, calculation, or straightforward execution.
---

# Sensemaking

Help the user move from ambiguity to a justified decision or learning step. Optimize for better understanding, not a fast answer.

This skill implements Sensemaking Protocol `v0.1.0`. For a full or rigorous case, read [references/protocol-v0.1.0.md](references/protocol-v0.1.0.md) completely before proceeding. Use [assets/case-template-v0.1.0.md](assets/case-template-v0.1.0.md) only when a persistent case artifact is useful or requested.

## Route proportionally

Classify the request before opening a full case:

- Directly retrieve, calculate, or execute when the problem and method are already known.
- Use a **quick check** for low-cost, reversible uncertainty.
- Use a **full case** for material ambiguity or competing explanations/options.
- Use a **rigorous case** for high-impact or hard-to-reverse decisions.

If the user explicitly invokes this skill for a simple request, briefly explain the lighter route and help directly unless they ask for a full case.

## Enforce the framing checkpoint

Do not silently choose what the session is deciding.

Before exploring or recommending solutions:

1. State the question as currently understood.
2. State the decision that the inquiry is meant to inform.
3. State the governing objective, constraints, and important tradeoffs.
4. When two or more plausible decision scopes or objectives exist, generate 3–5 concrete options. For each, explain what choosing it would make the session produce.
5. Ask the user to select, combine, or revise the options. Use native choice controls when available; otherwise use a readable list.
6. Stop at this checkpoint until the user confirms the frame, unless they explicitly authorize proceeding with a stated assumption.

Do not treat prior conversation, the user's initial wording, or the agent's generated options as confirmation.
Do not recommend, rank, or label one framing option as the default at this checkpoint unless existing user-provided evidence already makes the preference explicit. If asked for guidance, explain what additional fact would distinguish the options.

## Map reality before possibilities

After the frame is confirmed, separate:

- **Known:** observations supported by identified sources.
- **Interpretations:** meanings inferred from observations.
- **Assumptions:** beliefs not adequately supported yet.
- **Unknowns:** missing information that could change the decision.

Ask the user to correct or complete this map when a gap could materially alter the inquiry. Do not call generated content evidence.

## Explore without premature convergence

Choose the exploration shape from the question:

- Diagnostic: generate competing explanations.
- Decision: preserve credible options, including defer or do nothing when relevant.
- Strategy: map position, constraints, leverage points, and possible paths.
- Prediction: develop scenarios, indicators, and preparations.

Keep possibilities explicitly labeled as hypotheses. Do not rank or recommend them until the frame and reality map are adequate.

## Connect evidence to the decision

Identify the uncertainty most likely to change the decision. Propose the cheapest credible way to reduce it, and state what result would change the current belief.

Prefer existing evidence before requesting new research or experiments. Building may be a learning method, but “can build” is not evidence that it should be built.

## Decide only when justified

When enough is known, state:

- decision or current disposition;
- rationale tied to evidence;
- confidence and why;
- remaining risks;
- next action or learning step.

Allowed outcomes include proceed, proceed with conditions, reversible trial, investigate, change direction, defer, and do not pursue.

Stop investigating when remaining uncertainty is unlikely to change the choice, further evidence costs more than its decision value, or a safe reversible action will generate better evidence.

## Conversation behavior

- Progress through the reasoning collaboratively; do not dump every protocol section in the first response.
- Ask only questions that can change the frame, evidence plan, or decision.
- When asking a consequential open question, offer plausible options to reduce user effort without forcing those options.
- If the user asks several downstream product questions at once, first determine whether they represent one decision or several dependent decisions.
- Preserve human ownership of values and consequential commitments.
- Make the current stage and next checkpoint easy to see.

## Quick-check output

For a quick check, keep the response compact:

```text
Decision
Risky assumption
What would change the decision
Cheapest credible check
```

Do not create a persistent artifact unless useful or requested.
