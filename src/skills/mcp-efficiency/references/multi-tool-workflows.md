# Multi-Tool MCP Workflows

Use these rules when substantial work spans multiple MCP systems.

## Work in phases

Prefer completing one useful investigation or operation before switching systems.

Use:

`Tool A → conclusion → Tool B → conclusion`

rather than broadly inspecting every available system.

## Transfer conclusions, not dumps

Carry forward compact information such as:

- identifiers
- paths
- addresses
- relevant state
- relationships
- hypotheses
- conclusions
- expected behavior

Do not reproduce large outputs merely to establish context in another tool.

## Avoid duplicate discovery

If one system has already established a useful identifier or fact, reuse it directly with the next system instead of rediscovering it.

## Switch tools intentionally

Use another system only when it adds something useful, such as:

- capabilities unavailable in the current system
- live or runtime evidence
- independent verification that matters
- modification or inspection of another domain

Do not query multiple systems for the same information by default.

## Prefer shared references

When systems operate on the same artifact, prefer stable references such as paths, IDs, names, or addresses rather than transferring complete representations through MCP.

## Verify at boundaries

Verification is especially valuable when one system hands work to another.

Prefer one meaningful boundary check over repeated validation in both systems.

Return to an earlier system only when new evidence creates a specific new question.