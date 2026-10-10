# Sensemaking

Sensemaking is an open protocol for helping humans and AI move from ambiguous situations to justified decisions.

The first release is deliberately small. It defines the reasoning contract and a reusable case template; it does not prescribe an application, canvas, database, or integration stack.

## Frozen release

- Version: `v0.1.0`
- Status: frozen protocol draft
- Date: 2026-08-22
- Canonical artifact: [`docs/protocol/sensemaking-protocol-v0.1.0.md`](docs/protocol/sensemaking-protocol-v0.1.0.md)
- Case template: [`docs/templates/sensemaking-case-v0.1.0.md`](docs/templates/sensemaking-case-v0.1.0.md)

Changes to the protocol must be published as a new version. The `v0.1.0` files should not be edited after release except to repair broken links or obvious transcription errors; such repairs must be recorded in the changelog.

## Current validation question

> Does explicit reasoning structure improve decisions compared with ordinary AI conversation?

The initial validation is dogfooding across real decisions, comparing an ordinary AI response with a protocol-guided response.

## Repository structure

```text
docs/protocol/               Frozen protocol releases
docs/templates/              Version-matched working templates
plugins/sensemaking/         Claude Code plugin (also a plain skill folder)
.claude-plugin/              Plugin marketplace manifest
scripts/                     Repository checks
CHANGELOG.md                 Release history
VERSION                      Current released version
```

## Claude Code plugin

The protocol ships as a Claude Code plugin that adds one skill, `sensemaking`. The skill triggers on consequential, uncertain decisions, or you can invoke it directly.

Install (Claude Code 2.1.275 or later):

```text
/plugin install sensemaking --marketplace faisaladi/sensemaking
```

On older versions:

```text
/plugin marketplace add faisaladi/sensemaking
/plugin install sensemaking@sensemaking
```

Without the plugin system, copy `plugins/sensemaking/` to `~/.claude/skills/sensemaking/`. The folder is a plain skill as well as a plugin.

The plugin bundles byte-identical copies of the frozen protocol and template in `plugins/sensemaking/references/`. Run `scripts/check-skill-sync.sh` after any change to confirm they still match `ARTIFACTS.sha256`, and `claude plugin validate plugins/sensemaking && claude plugin validate .` to check the manifests. The plugin is tooling, not part of the protocol: editing it bumps the plugin version in `plugin.json` and `marketplace.json`, not the protocol version.

## Scope boundary

This release includes:

- applicability and routing rules;
- the core reasoning loop;
- evidence and confidence handling;
- decision outcomes and stopping rules;
- a minimal case artifact;
- a validation plan.

It intentionally excludes:

- product UI or visual canvas;
- persistent evidence infrastructure;
- connectors and external write actions;
- automated scoring claims;
- monetization architecture.

## License

No license has been selected yet. Until one is added, normal copyright restrictions apply. Choosing an open-source license is a separate explicit decision.
