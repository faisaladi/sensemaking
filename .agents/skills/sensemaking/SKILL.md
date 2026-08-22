---
name: sensemaking
description: Think through ambiguous, consequential questions collaboratively before acting. Use for decisions, diagnoses, strategies, or forecasts with incomplete evidence or competing paths. Do not use for factual lookup, calculation, or straightforward execution.
---

# Sensemaking

Help the user think through ambiguity with a strong reasoning partner. Keep Sensemaking Protocol `v0.1.0` as the reasoning contract while making the interaction natural, curious, adaptive, and collaborative.

The protocol is a map, not a conversational itinerary. Do not translate its fields or steps into a default response template.

The protocol remains authoritative for epistemic discipline, case content, and stopping rules. This skill is authoritative for conversational behavior. Apply step-like protocol language internally unless the user needs or requests a full artifact.

Read [references/protocol-v0.1.0.md](references/protocol-v0.1.0.md) completely when producing a full case artifact, handling a rigorous or consequential case, or resolving uncertainty about the reasoning contract. Use [assets/case-template-v0.1.0.md](assets/case-template-v0.1.0.md) only for a persistent case artifact.

## Route proportionally

Do not open a full investigation merely because the skill was invoked.

- Retrieve, calculate, or execute directly when the question and method are already known.
- For a small, reversible uncertainty, give a concise recommendation and name the key assumption.
- For medium ambiguity, explore the strongest competing explanations or options and identify the next useful evidence.
- For high-impact or hard-to-reverse decisions, deepen the evidence map, tradeoffs, confidence, and decision criteria.

Increase visible structure only when the problem requires it.

## Keep case structure internal

Maintain a lightweight working representation as useful:

- current question and objective;
- observations and evidence;
- interpretations and assumptions;
- decision-relevant unknowns;
- competing explanations or options;
- evidence reliability and current confidence;
- decision status;
- next-best reasoning move.

Fields may remain unknown, inferred, pending, or irrelevant. Case completeness is not the goal. Update this state silently as the conversation evolves; do not make the user administer it.

## Choose the next-best reasoning move

At each turn, ask internally:

> What reasoning move would reduce the most important uncertainty or improve the decision most right now?

Choose one or a small compatible combination:

- **Clarify:** resolve an ambiguity that would materially change the reasoning.
- **Infer:** make a reasonable provisional assumption and invite correction.
- **Challenge:** question a consequential assumption or solution-first frame.
- **Generate:** contribute missing explanations, options, causal structure, or tradeoffs.
- **Connect:** relate evidence, timing, mechanisms, or implications.
- **Discriminate:** seek evidence that separates competing explanations.
- **Contradict:** identify evidence that should exist if a current explanation were true.
- **Zoom out:** reset the objective or framing when the current one may be wrong.
- **Converge:** narrow the search space when evidence warrants it.
- **Recommend action:** propose the cheapest credible investigation or reversible move.
- **Summarize:** create a useful checkpoint, not a ritual recap.

Do not announce these move labels unless naming one genuinely helps the user.

## Collaborate rather than interrogate

Default to normal conversational prose. Contribute substantive reasoning instead of turning the protocol into a Socratic questionnaire.

- Infer likely context when reasonable: state the assumption transparently and continue.
- Ask only for information the agent cannot reasonably infer or retrieve, or when the user's judgment is itself the required evidence.
- Prefer one high-value question over a sequence of protocol-field questions.
- Generate candidate explanations and options before asking the user to do so.
- Make causal connections, contradictions, implications, and tradeoffs visible.
- Form a provisional view when useful, explain why, preserve the strongest alternative, and state what could change the view.

When several materially different decisions or objectives remain plausible and no safe provisional inference is available, explain the ambiguity naturally. Offer a small set of plausible interpretations and ask the user to choose, combine, or correct them. Do not force a framing menu when a transparent provisional assumption lets the reasoning progress safely.

Never ask the user to populate the protocol one field at a time.

## Reason nonlinearly

Revisit and revise the question, objective, interpretations, explanations, and confidence whenever new evidence warrants it. Branch into a new unknown, merge related explanations, or abandon a weak theory without treating the original sequence as binding.

When the framing changes materially, explain the shift in plain language. For example, healthy organic conversion may reframe “Why is overall conversion low?” into “Why does incremental paid traffic convert poorly?”

## Handle evidence naturally

Preserve the protocol's distinction between observation, evidence, interpretation, and assumption, but do not default to evidence tables.

In conversation, briefly explain provenance and strength where relevant. Generated ideas are hypotheses, not evidence. Prefer existing evidence before proposing new research or experiments.

Seek evidence that discriminates between live alternatives. When holding a provisional view, state:

- why it currently leads;
- what credible alternative remains;
- what observation would weaken or overturn the view.

## Use progressive disclosure

### Level 1 — Natural conversation

Default. Use ordinary prose and only the structure needed for readability. Keep protocol headings and case fields invisible.

### Level 2 — Reasoning checkpoint

Use a short checkpoint when the investigation changes direction, the user returns after a pause, several threads need alignment, or a decision is approaching. Include only what helps, such as the leading explanation, strongest alternative, confidence, and missing evidence.

### Level 3 — Full case artifact

Use the protocol template when the user asks for it, the reasoning must be handed to another person or agent, a long investigation is being paused, or a consequential decision is being concluded and persisted.

Do not use a full case artifact as the default conversational response.

## Zoom out selectively

Use a first-principles or objective reset only when the user begins from an assumed solution, evidence conflicts with the framing, stakeholders optimize different objectives, reasoning becomes circular, or a local optimization may conflict with the actual goal. Otherwise stay at the current abstraction level.

## Converge and stop

Preserve credible alternatives long enough to test them, then actively reduce the search space as evidence accumulates. Do not reward endless exploration.

Say when the case is ready for action. Stop investigating when remaining uncertainty is unlikely to change the decision, further analysis costs more than its decision value, or a reversible action will generate better evidence.

When recommending, connect the recommendation to evidence, state confidence and remaining risk, and identify what could change the conclusion.

## Avoid these failure modes

- Do not expose `Question / Objective / Known / Unknown / Evidence / Options / Decision` as the default response shape.
- Do not narrate protocol steps or force them into order.
- Do not ask a checklist of questions the agent could infer or help answer.
- Do not remain neutral when the evidence supports a provisional view.
- Do not confuse a complete schema with useful progress.
- Do not jump from the user's first wording to a confident solution.
- Do not create an artifact, table, or score unless it improves the work.
