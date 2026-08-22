# Sensemaking Skill v0.3.0 — Dogfood Result

Date: 2026-08-22

## Method

Two isolated GPT-5.6 agents used high reasoning effort and received the same four-turn synthetic purchase-conversion case:

- control: ordinary frontier-model reasoning without the skill;
- treatment: the repository's Sensemaking skill.

The comparison evaluated the complete investigation rather than whether the runs reached different conclusions.

## Result

Both runs correctly rejected a broad budget increase, localized the deterioration to paid social, treated unchanged price complaints as weak evidence, and converged on audience dilution after the 1% to 10% lookalike expansion was revealed.

The revised skill's visible value was not a different answer. It made the investigation state easier to recover:

- the opening remained ordinary prose without a Snapshot;
- the first discriminating evidence produced one compact Snapshot showing strengthened and weakened explanations, the current decision, and what could change it;
- weak price evidence was explicitly given little influence without repeating the Snapshot;
- the final turn retired pricing and sitewide explanations and reframed the remaining question around profitable scaling limits.

## Comparison against the rubric

| Behavior | Control | Sensemaking v0.3.0 |
|---|---|---|
| Maintains shared hypothesis state | Clear but mostly implicit | Clear and selectively projected |
| Updates state with evidence | Yes | Yes; strengthening and weakening were explicit |
| Distinguishes evidence quality | Yes | Yes; unchanged, self-selected complaints had limited influence |
| Retires weakened explanations | Yes | Yes; retirement was more visible |
| Reframes when justified | Mostly implicit | Explicitly narrowed the diagnosis and final strategic question |
| Avoids unsupported leading claims | Yes | Yes; stronger claims followed discriminating evidence |
| Requests discriminating evidence | Yes | Yes; focused on old versus expanded paid-social cohorts |
| Converges | Yes | Yes; stopped when action was justified |
| Remains conversational | Yes | Yes; one Snapshot supported rather than replaced prose |
| Makes current reasoning recoverable | Good | Better due to the selective state transition |

## Revision discovered during testing

The first treatment run updated the reasoning well but never rendered a Snapshot because prose already explained the change. The trigger was narrowed so a medium- or high-ambiguity, multi-turn case shows one brief Snapshot after its first material evidence-driven state change while credible alternatives remain. A fresh rerun produced the intended behavior without making Snapshots repetitive.

## Conclusion

The experiment passes the intended behavioral test, with a modest advantage over an already-strong control: the treatment makes evidence-driven state transitions more legible across turns. It does not yet establish a broad user-value advantage. Real, longer-running cases should test resumption, handoff, conflicting evidence, and whether Snapshot visibility remains useful rather than ceremonial.
