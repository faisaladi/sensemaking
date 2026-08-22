# Sensemaking Skill v0.2.0 — Behavioral Cases

Historical suite. Superseded by `sensemaking-skill-v0.3.0.md` for the current interaction experiment.

These cases evaluate decisions and interaction quality, not exact wording, headings, or protocol-field completion.

## Case 1 — Solution-biased conversion diagnosis

Prompt:

> Conversion has been low for months. Marketing thinks we need more budget.

Expected behavior:

- Challenge budget as an assumed solution.
- Contribute several plausible causal explanations.
- Identify a discriminator such as conversion by source over time.
- Ask at most one high-value follow-up question in the first response.
- Use natural prose without visible protocol headings.

Failure signals:

- Asks the user for objective, evidence, assumptions, and alternatives as separate questions.
- Recommends more budget or a specific fix before discriminating causes.

## Case 2 — Nonlinear reframing

Conversation:

1. User: “Why is overall purchase conversion low?”
2. Later evidence: “Organic conversion is unchanged. Paid traffic doubled and converts much worse.”

Expected behavior:

- Reframe the investigation toward incremental paid-traffic performance.
- Explain why the new evidence changes the question.
- Deprioritize site-wide explanations without pretending they are impossible.
- Select the next discriminator based on the revised frame.

Failure signal:

- Continues completing the original case fields without adapting the question.

## Case 3 — Several downstream product questions

Prompt:

> What should this tool look like, how should users access it, and how should we distribute and describe it?

Expected behavior:

- Notice that the questions may represent dependent decisions.
- Infer a provisional governing objective when context supports one, or offer a compact set of plausible frames when it does not.
- Advance the reasoning with useful implications rather than returning a complete solution or a mandatory form.
- Ask only the question whose answer most changes the path.

Failure signals:

- Immediately recommends an application, skill, canvas, or distribution channel.
- Dumps a full protocol-shaped case.

## Case 4 — Agent contribution

Prompt:

> Our activation rate dropped after onboarding changed. Help me investigate.

Expected behavior:

- Contribute likely explanations and causal structure.
- Connect the timing to the onboarding change while preserving coincidence and measurement as alternatives.
- Propose evidence that distinguishes behavior change from tracking change.
- Avoid asking the user to generate the hypotheses.

## Case 5 — Opinionated but careful

Prompt context:

- Paid conversion deteriorated immediately after campaign expansion.
- Organic conversion and checkout completion remained stable.

Expected behavior:

- State that traffic quality currently leads and explain why.
- Preserve the strongest alternative, such as paid-offer mismatch.
- State what evidence would overturn or refine the view.

Failure signals:

- Lists possibilities without reasoning between them.
- Claims certainty that the evidence does not support.

## Case 6 — Direct retrieval and execution

Prompts:

> What is the capital of Japan?

> Change this internal draft heading from “Overview” to “Summary.”

Expected behavior:

- Answer or execute directly.
- Do not open a sensemaking case or explain the protocol.

## Case 7 — Useful convergence

Prompt context:

- Two explanations remain.
- Additional desk analysis is unlikely to separate them.
- A safe one-week reversible trial can.

Expected behavior:

- Say that further analysis is unlikely to change the immediate choice.
- Recommend the reversible trial with its learning objective.
- State the remaining uncertainty without prolonging exploration.

## Case 8 — Full artifact on demand

Prompt:

> Create a handoff artifact for another agent from our investigation.

Expected behavior:

- Read and follow Protocol v0.1.0 and the version-matched case template.
- Produce a structured, provenance-aware case artifact.
- Preserve unknown, inferred, pending, and irrelevant fields honestly.

## Revision-level acceptance

Across dogfood cases, the skill should:

1. feel like a thinking partner rather than a form;
2. ask fewer, higher-value questions;
3. contribute hypotheses, options, connections, and contradictions;
4. adapt when evidence changes the investigation;
5. keep protocol structure mostly invisible in normal conversation;
6. disclose structure progressively when useful;
7. converge without forcing or delaying a conclusion;
8. preserve the protocol's epistemic discipline;
9. require less user effort than manual protocol completion;
10. produce a rigorous case artifact when explicitly needed.
