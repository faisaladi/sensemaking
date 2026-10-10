# Sensemaking Protocol

Version: 0.1.0  
Status: frozen initial draft  
Released: 2026-08-22

## 1. Purpose

Sensemaking helps humans and AI move from ambiguous situations to justified decisions.

Use it when:

- the desired outcome matters;
- the situation or path is uncertain;
- multiple explanations or options may exist;
- evidence could change the decision; and
- premature action has meaningful cost or risk.

It is not a replacement for expertise, creativity, calculation, execution, or human judgment.

## 2. Core principle

The agent must optimize for better understanding and a justified next move, not merely for producing an answer.

```text
Question
   ↓
Objective
   ↓
Reality
   ↓
Unknowns
   ↓
Explanations / Options
   ↓
Evidence
   ↓
Decision
   ↓
Action
```

The loop is iterative. New evidence may change the framing, objective, possibilities, or decision.

## 3. Applicability and routing

Before opening a full sensemaking case, classify the request.

| Request condition | Default route |
|---|---|
| Known question, factual answer | Retrieve knowledge |
| Known variables, computable answer | Calculate |
| Known problem and known procedure | Execute |
| Low-cost, reversible uncertainty | Quick check |
| Material ambiguity or competing paths | Sensemaking |
| High-impact or hard-to-reverse choice | Rigorous sensemaking |

A full protocol run is unnecessary when the cost of being wrong is negligible and correction is easy.

### Question archetypes

1. **Diagnostic:** Why is this happening?
2. **Decision:** Which option should we choose?
3. **Strategy:** How might we achieve this outcome?
4. **Prediction:** What may happen, and how should we prepare?

The archetype chooses the exploration method; it does not change the core reasoning engine.

## 4. The sensemaking loop

### Step 1 — Frame the question

Identify and separate:

- **Symptom:** What was observed?
- **Problem:** What undesirable situation may exist?
- **Decision:** What commitment or choice is required?
- **Objective:** What outcome actually matters?

Do not accept a proposed solution as the problem definition. If framing is materially uncertain, perform a first-principles reset: “Are we solving the right problem?”

### Step 2 — Establish the objective

Record:

- desired outcome;
- success indicators;
- constraints;
- tradeoffs;
- decision owner, when relevant;
- decision horizon or deadline, when relevant.

An objective must be specific enough to compare options without pretending that every value can be reduced to one metric.

### Step 3 — Map reality

Keep these categories distinct:

- **Observation:** Directly observed state or event.
- **Evidence:** A source that supports or challenges a claim.
- **Interpretation:** Meaning inferred from observations.
- **Assumption:** A belief not yet adequately supported.

For material evidence, record provenance, recency, relevance, and reliability. AI-generated possibilities are not evidence.

### Step 4 — Identify decision-relevant unknowns

Ask what must be learned to make a better decision. Prioritize unknowns that could change the selected option or whether action should happen at all.

Common types:

- causal: why is this happening?
- predictive: what is likely to happen?
- preference: what do affected people value?
- feasibility: can this be done within the constraints?
- normative: which values or principles should govern the choice?

### Step 5 — Generate explanations or options

Use the question archetype to explore without premature convergence.

- Diagnostic questions generate competing explanations.
- Decision questions preserve and compare credible options, including “do nothing,” “defer,” or a reversible trial where relevant.
- Strategy questions map the current position, constraints, leverage points, and possible paths.
- Prediction questions develop plausible scenarios, indicators, and preparations rather than asserting false certainty.

Brainstorming expands the possibility space. Generated ideas remain hypotheses until supported.

### Step 6 — Determine evidence needed

Ask:

> What information would meaningfully change the decision?

Prefer the cheapest credible way to reduce the most consequential uncertainty:

- inspect existing evidence;
- investigate through analysis, observation, interviews, or expert review;
- experiment with a prototype, test, simulation, pilot, or technical spike;
- build to learn when implementation is the cheapest credible test.

Every proposed investigation should state the decision it informs and the result that would alter the current belief.

### Step 7 — Evaluate confidence

Assess confidence separately for:

- understanding of the problem;
- explanation or forecast;
- proposed intervention or option;
- evidence quality.

Use plain-language levels—low, medium, or high—with a reason. Confidence is a judgment, not a decorative score.

### Step 8 — Decide and act

Allowed outcomes include:

- proceed;
- proceed with conditions;
- run a reversible trial;
- investigate further;
- change direction;
- defer;
- do not pursue.

Record the decision, rationale, confidence, remaining risks, decision owner, and next action.

## 5. Stopping rules

Stop investigating when:

- the remaining uncertainty is unlikely to change the decision;
- further evidence costs more than its expected decision value;
- a safe, reversible action can generate better evidence;
- the decision deadline requires action with risks made explicit; or
- evidence shows the objective should be abandoned or reframed.

The protocol must not reward endless analysis.

## 6. Agent behavior contract

The agent must:

- distinguish facts, interpretations, assumptions, and generated hypotheses;
- make the implied decision explicit;
- challenge solution-first framing when consequential;
- preserve credible alternatives long enough to compare them;
- connect evidence collection to a decision;
- scale rigor with uncertainty, consequence, and reversibility;
- expose uncertainty and remaining risks;
- let humans own value judgments and consequential commitments.

The agent must not:

- treat user conviction as validation;
- present generated content as evidence;
- confuse “can build” with “should build”;
- demand experimentation when direct execution is sufficient;
- fabricate certainty or source provenance;
- silently make high-impact value choices for the user.

## 7. Minimal case artifact

Every persistent case should contain:

1. question and archetype;
2. decision to be made;
3. objective, constraints, and tradeoffs;
4. observations, evidence, interpretations, and assumptions;
5. decision-relevant unknowns;
6. competing explanations or options;
7. evidence needed and cheapest credible test;
8. decision rule, when it can be stated in advance;
9. conclusion, confidence, remaining risks, and next action.

The version-matched template is in `docs/templates/sensemaking-case-v0.1.0.md`.

## 8. Scale principle

The reasoning engine remains stable across personal, product, organizational, and public-policy questions. The evidence infrastructure and required rigor scale with the problem.

This protocol defines the reasoning contract only. It does not require a graph database, document inventory, analytics system, or visual canvas.

## 9. Initial validation

The primary validation question is:

> Does explicit reasoning structure improve decisions compared with ordinary AI conversation?

For each real case, compare an ordinary AI response with a protocol-guided response. Evaluate:

- important assumptions surfaced;
- credible alternatives considered;
- evidence gaps identified;
- clarity of the decision or next action;
- whether the chosen action changed;
- user effort and friction;
- retrospective usefulness after the outcome is observed.

Start with real product decisions and conversion investigations, then test other archetypes. Do not claim superiority until repeated comparisons provide evidence.

## 10. Versioning rule

This file is the immutable `v0.1.0` snapshot. Substantive changes require a new protocol file and version entry. Historical versions remain available for comparison and reproducibility.
