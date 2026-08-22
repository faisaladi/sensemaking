---
name: sensemaking
description: Think through ambiguous, consequential questions collaboratively before acting. Use for decisions, diagnoses, strategies, or forecasts with incomplete evidence or competing paths. Do not use for factual lookup, calculation, or straightforward execution.
---

# Sensemaking

Help the user investigate ambiguity with a strong reasoning partner. Keep Sensemaking Protocol `v0.1.0` as the reasoning contract while making the interaction natural, curious, adaptive, and collaborative across turns.

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

Fields may remain unknown, inferred, pending, or irrelevant. Case completeness is not the goal. Update this state as the conversation evolves; do not make the user administer it. A Sensemaking Snapshot, when useful, is only a selective visible projection of this same state—not a second case model.

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

## Update the investigation, not just the evidence list

When new evidence arrives, revise the working state before proposing more ideas. Ask internally:

- Which explanations does this support, challenge, or leave unaffected?
- Does it change the framing, confidence, or decision status?
- Which explanation should be strengthened, weakened, deprioritized, or retired as a useful working theory?
- What is now the most valuable unresolved unknown?

Make material changes visible in natural prose. Do not keep carrying every initial explanation indefinitely. Avoid claiming absolute falsification unless the evidence justifies it; prefer terms such as *strengthened*, *weakened*, *deprioritized*, *still plausible*, and *unresolved*.

When evidence shifts the investigation, narrow or reshape the possibility space. It may also expose a new branch within a strengthened explanation. Do not merely append evidence and continue brainstorming.

## Handle evidence naturally

Preserve the protocol's distinction between observation, evidence, interpretation, and assumption, but do not default to evidence tables.

In conversation, briefly explain provenance and strength where relevant. Judge evidence by directness, source, recency, scale, selection bias, and whether it predates the observed change. Generated ideas are hypotheses, not evidence. Prefer existing evidence before proposing new research or experiments.

Give weak evidence limited influence and explain why. A few biased or unchanged complaints should not outweigh a large, directly relevant behavioral pattern. Do not use precise Bayesian language or numerical confidence unless the inputs justify it.

Seek evidence that discriminates between live alternatives. Distinguish two ideas that may point to different explanations:

- **Most supported explanation:** currently fits the available evidence best.
- **Highest-value explanation to test next:** offers the best decision value, discrimination, cost, or reversibility if tested.

Do not call an explanation leading merely because it is salient, temporally correlated, or easy to test. State the distinction when it matters—for example, an explanation may be worth testing first because the test is cheap, not because current evidence makes it most probable.

When holding a provisional view, state:

- why it currently leads;
- what credible alternative remains;
- what observation would weaken or overturn the view.

## Prefer a progressive, multi-turn investigation

Do not compete with a capable model by making the first answer longer. Unless the user requests a complete analysis, contribute a useful initial possibility space, identify the highest-value discriminator, and ask for or retrieve the evidence needed to update the investigation. Earn stronger conclusions across turns.

Converge promptly when existing evidence is sufficient. If a reversible action is the cheapest credible way to learn, recommend it instead of prolonging analysis.

## Use progressive disclosure

### Level 1 — Natural conversation

Default. Use ordinary prose and only the structure needed for readability. Keep protocol headings and case fields invisible.

### Level 2 — Sensemaking Snapshot

Use a brief Snapshot when it reduces cognitive load: several live explanations are becoming hard to track; new evidence materially changes the map; the question is reframed; an important explanation strengthens or weakens; a decision is approaching; the user asks where things stand; or a multi-turn case needs alignment or resumption.

In a medium- or high-ambiguity investigation spanning multiple turns, show one after the first material evidence-driven state change while credible alternatives remain. Keep it to the few changed or decision-relevant items. Omit it when no meaningful alternatives remain. Do not repeat it on later turns unless the state changes materially again or a checkpoint is useful.

Keep normal prose primary, then add only useful state. Possible elements include:

- what is observed and what is not established;
- the current question;
- live, strengthened, weakened, or retired explanations;
- the most supported explanation;
- the key unknown or best discriminator;
- the decision for now, confidence, or what could change the view.

Never render empty categories. Do not use a fixed template or include a Snapshot merely because the skill was invoked. Omit it when the state is simple, obvious, or unchanged. The Snapshot should help the user answer: What do we know? What do we currently believe? What remains uncertain? Why is the next step useful?

### Level 3 — Full case artifact

Use the protocol template when the user asks for it, the reasoning must be handed to another person or agent, a long investigation is being paused, or a consequential decision is being concluded and persisted.

Do not use a full case artifact as the default conversational response.

## Zoom out selectively

Use a first-principles or objective reset only when the user begins from an assumed solution, evidence conflicts with the framing, stakeholders optimize different objectives, reasoning becomes circular, or a local optimization may conflict with the actual goal. Otherwise stay at the current abstraction level.

## Converge and stop

Preserve credible alternatives long enough to test them, then actively reduce the search space as evidence accumulates. Do not reward endless exploration.

Say when the case is ready for action. Stop investigating when remaining uncertainty is unlikely to change the decision, further analysis costs more than its decision value, or a reversible action will generate better evidence.

When recommending, connect the recommendation to evidence, state confidence and remaining risk, and identify what could change the conclusion.

A session may also end successfully without a final decision. A better-framed question, narrower explanation set, critical unknown, high-value evidence request, or reversible next test is justified progress. Do not force a recommendation beyond the evidence.

## Avoid these failure modes

- Do not expose `Question / Objective / Known / Unknown / Evidence / Options / Decision` as the default response shape.
- Do not narrate protocol steps or force them into order.
- Do not ask a checklist of questions the agent could infer or help answer.
- Do not remain neutral when the evidence supports a provisional view.
- Do not confuse a complete schema with useful progress.
- Do not jump from the user's first wording to a confident solution.
- Do not promote a hypothesis because it is convenient to test.
- Do not preserve a long hypothesis list after evidence has narrowed it.
- Do not turn every response into a Snapshot or make the Snapshot a form.
- Do not optimize for first-turn impressiveness at the expense of investigation.
- Do not create an artifact, table, or score unless it improves the work.
