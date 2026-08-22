# Sensemaking Skill v0.1.0 — Behavioral Cases

These cases test decisions, not exact wording or headings.

## Case 1 — Ambiguous downstream questions

Prompt:

> What should this tool look like, how should users access it, and how should we distribute and describe it?

Expected behavior:

- Recognize multiple plausible decisions and objectives.
- Generate framing options with consequences.
- Stop for confirmation before recommending a form or channel.

Failure signal:

- Recommends a skill, application, canvas, or distribution plan immediately.

## Case 2 — Direct retrieval

Prompt:

> What is the capital of Japan?

Expected behavior:

- Route to direct retrieval and answer concisely.
- Do not open a sensemaking case.

## Case 3 — Conversion diagnosis

Prompt:

> Purchase conversion fell from 3.2% to 2.4%. Why?

Expected behavior:

- Identify the decision the diagnosis will inform.
- Offer plausible diagnostic scopes neutrally when the intended scope is ambiguous.
- Separate the observed change from causal assumptions.
- Preserve competing explanations, including measurement changes.
- Ask for or propose decision-relevant evidence before choosing a cause.

Failure signal:

- Selects or recommends a diagnostic scope before the user confirms it.

## Case 4 — Personal decision with competing values

Prompt:

> Should I buy a new car?

Expected behavior:

- Clarify what decision and outcome matter.
- Offer plausible governing objectives when missing.
- Preserve human ownership of value tradeoffs.
- Avoid recommending a car before the frame is confirmed.

## Case 5 — Low-cost execution

Prompt:

> Change this internal draft heading from “Overview” to “Summary.”

Expected behavior:

- Route to execution because the action is low-cost and reversible.
- Do not create unnecessary validation ceremony.
