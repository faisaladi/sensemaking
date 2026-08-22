# Sensemaking Skill v0.3.0 — Multi-turn Evaluation

## Primary question

Does Sensemaking make a multi-turn investigation easier to reason about and more epistemically disciplined than ordinary frontier-model conversation, without requiring a different final conclusion?

Compare two isolated runs using the same frontier model and reasoning effort:

- A: ordinary model without the skill;
- B: model using the Sensemaking skill.

Judge the complete investigation, not only the first response.

## Synthetic purchase-conversion case

### Turn 1 — ambiguous opening

> Purchase conversion has fallen over three months while paid-media spend rose. Marketing says we need more budget. Help us decide what to do.

Expected Sensemaking behavior:

- challenges budget as an unproven solution;
- contributes a compact, plausible possibility space;
- distinguishes observation from causal interpretation;
- identifies a high-value discriminator and asks for at most one focused evidence request;
- usually omits a Snapshot because the case is still early;
- avoids an exhaustive first-turn consulting report.

### Turn 2 — strong discriminating evidence

> Organic/direct conversion stayed at 4.1% to 4.0%. Paid search stayed at 3.3% to 3.2%. Paid social fell from 3.6% to 1.2%, while paid-social sessions grew from 6,000 to 17,000. Checkout completion stayed stable.

Expected Sensemaking behavior:

- reframes the question around incremental paid-social traffic;
- strengthens a paid-social acquisition-quality or message-audience explanation;
- weakens a site-wide funnel explanation;
- shows the material state change with a brief Snapshot while credible alternatives remain;
- identifies the next discriminator inside paid social rather than expanding a broad list.

### Turn 3 — weak counterevidence

> Support logged six price complaints this month. That volume is unchanged from before the decline, and support users are a self-selected group.

Expected Sensemaking behavior:

- keeps price possible but gives this evidence limited influence;
- explains the limits: unchanged baseline, small scale, selection bias, and indirect relation to abandonment;
- does not let weak complaints outweigh channel-level behavior across thousands of sessions;
- preserves or tightens the current investigation instead of reopening every theory.

### Turn 4 — mechanism evidence

> When paid social scaled, the team widened its lookalike audience from 1% to 10%. Creative, landing page, and pricing were unchanged. The conversion decline is concentrated in the expanded audience.

Expected Sensemaking behavior:

- treats audience expansion and lower-intent marginal traffic as the most supported explanation, with qualified confidence;
- deprioritizes site-wide funnel and pricing explanations;
- recommends a reversible rollback, segmented test, or spend reallocation tied to the evidence;
- uses a near-decision Snapshot only if it makes the convergence clearer;
- states remaining uncertainty and what could change the view.

## Targeted behavioral cases

### Support is not test priority

Prompt:

> Two explanations remain. Existing evidence slightly favors A, but testing A takes six weeks. A one-day test of B would strongly rule B in or out and change tomorrow's decision. Which is leading, and what should we test?

Pass if the agent distinguishes the most supported explanation (A) from the highest-value next test (B). Fail if it calls B most likely merely because B is convenient to test.

### Snapshot restraint

Prompt:

> I can reverse this preference tomorrow. Pick the cheaper option unless there is a strong reason not to.

Pass if the agent gives a concise recommendation and assumption without a Snapshot or full case structure.

### Valid non-decision endpoint

Prompt:

> The channel evidence rules down a site-wide issue, but we do not yet have campaign-level data to separate targeting from creative.

Pass if the agent names the narrowed question and next evidence without forcing a causal conclusion or action beyond the evidence.

## Comparison rubric

Across all turns, assess whether each run:

1. maintains a clear shared hypothesis state;
2. visibly updates the state when evidence arrives;
3. distinguishes strong from weak evidence;
4. retires or deprioritizes weakened explanations;
5. reframes the question when justified;
6. avoids calling an explanation leading without support;
7. asks for evidence that discriminates among remaining explanations;
8. converges without endless brainstorming;
9. remains conversational;
10. makes it easy to answer: What do we know? What do we believe? What remains uncertain? Why this next step?

Record concrete evidence from the responses. Do not reward the skill merely for using more headings or producing more text.
