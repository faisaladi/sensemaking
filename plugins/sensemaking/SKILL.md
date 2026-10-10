---
name: sensemaking
description: Apply the Sensemaking Protocol v0.1.0 to move from an ambiguous situation to a justified decision. Use when the user faces a consequential choice, diagnosis, strategy, or prediction under uncertainty — e.g. "should we build X", "why is conversion dropping", "which option should I pick", "how might we reach Y", "what happens if", "help me think this through", "make sense of this", or explicitly asks for /sensemaking or a sensemaking case. Do NOT use for factual lookups, calculations, or known procedures; route those directly.
---

# Sensemaking (protocol v0.1.0)

The canonical, frozen protocol is `references/sensemaking-protocol-v0.1.0.md`. Read it once per session before running a full case. This file is the operating procedure; if the two ever disagree, the protocol wins.

Optimize for better understanding and a justified next move, not for producing an answer.

## 1. Route first (always)

Classify the request before doing anything else. State the route in one line.

| Request condition | Route | What to do |
|---|---|---|
| Known question, factual answer | Retrieve | Answer directly. Stop. |
| Known variables, computable answer | Calculate | Compute. Stop. |
| Known problem, known procedure | Execute | Do it. Stop. |
| Low-cost, reversible uncertainty | Quick check | Name the one uncertainty, the cheapest check, and the default action. Stop. |
| Material ambiguity or competing paths | Sensemaking | Run the loop (section 3), compact output. |
| High-impact or hard-to-reverse choice | Rigorous sensemaking | Run the full loop and produce the case artifact (section 4). |

Do not run the full protocol when being wrong is cheap and easy to correct. Demanding analysis where execution suffices is a contract violation.

## 2. Pick the archetype

- **Diagnostic** — Why is this happening? → competing explanations.
- **Decision** — Which option? → credible options, always including "do nothing", "defer", or a reversible trial where relevant.
- **Strategy** — How might we achieve this? → current position, constraints, leverage points, paths.
- **Prediction** — What may happen? → scenarios, leading indicators, preparations. No false certainty.

The archetype changes the exploration method, not the loop.

## 3. The loop

Question → Objective → Reality → Unknowns → Explanations/Options → Evidence → Decision → Action. Iterate when new evidence changes framing.

1. **Frame.** Separate symptom, problem, decision, objective. Never accept a proposed solution as the problem definition. If framing is shaky, ask: "Are we solving the right problem?"
2. **Objective.** Desired outcome, success indicators, constraints, tradeoffs, decision owner, deadline. Specific enough to compare options.
3. **Reality.** Label every claim as exactly one of: **Observation**, **Evidence** (with source, recency, reliability), **Interpretation**, **Assumption**. AI-generated ideas are never evidence. User conviction is not validation.
4. **Unknowns.** Only those that could change the choice or whether to act at all (causal, predictive, preference, feasibility, normative). Prioritize.
5. **Explanations/Options.** Expand before converging. Keep credible alternatives alive long enough to compare.
6. **Evidence needed.** "What information would meaningfully change the decision?" Prefer the cheapest credible test: inspect existing evidence → investigate → experiment → build-to-learn. Each test states the decision it informs and the result that would change belief.
7. **Confidence.** Low/medium/high with a reason, separately for: problem understanding, explanation/forecast, chosen option, evidence quality.
8. **Decide.** One of: proceed · proceed with conditions · reversible trial · investigate further · change direction · defer · do not pursue. Give rationale, confidence, remaining risks, owner, next action.

### Stopping rules

Stop investigating when remaining uncertainty is unlikely to change the decision, more evidence costs more than it is worth, a safe reversible action would teach more, the deadline forces action (state the risks), or evidence says reframe/abandon. Never reward endless analysis.

## 4. Output

**Sensemaking route (compact):** use these headings, a few bullets each, and end with one dominant next action:

```
Route & archetype
Decision to be made
Objective (outcome · constraints · tradeoffs)
Reality (Observation / Evidence / Interpretation / Assumption — labeled)
Unknowns that could change the decision
Options or explanations
Cheapest credible test → result that would change the call
Recommendation (outcome · confidence + reason · risks · next action)
```

**Rigorous route:** fill `references/sensemaking-case-v0.1.0.md` completely. Ask the user before writing it to disk and where to save it; otherwise render it in chat. Leave the Retrospective section blank for later.

When information only the user has is missing (business context, values, owner, deadline), ask — do not assume. Batch questions; ask only those that could change the outcome.

## 5. Behavior contract

Must:
- distinguish facts, interpretations, assumptions, and generated hypotheses;
- make the implied decision explicit;
- challenge solution-first framing when consequential;
- connect every proposed investigation to a decision;
- scale rigor with uncertainty, consequence, and reversibility;
- expose uncertainty and remaining risks;
- leave value judgments and consequential commitments to the human.

Must not:
- treat user conviction as validation;
- present generated content as evidence;
- confuse "can build" with "should build";
- demand experimentation when direct execution is sufficient;
- fabricate certainty or source provenance;
- silently make high-impact value choices.

## 6. Dogfooding comparison (optional)

The protocol's open validation question is whether explicit structure beats ordinary AI conversation. If the user asks to compare, first give a plain, ordinary answer (no protocol structure), then the protocol-guided answer, then score both on: assumptions surfaced, alternatives considered, evidence gaps found, clarity of next action, whether the chosen action changed, and user effort. Do not claim the protocol is superior from a single case.
