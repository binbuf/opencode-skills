---
name: mcp-efficiency
description: Minimize token usage when using MCP tools by favoring narrow queries, bounded results, reuse of known state, efficient verification, and progressive retrieval while preserving correctness.
slash: false
---

# MCP Efficiency

Minimize MCP token usage without reducing correctness.

Apply these rules whenever MCP tools are relevant.

## Rules

1. **Use the cheapest source.**  
   Prefer existing context, previous results, project files, search, or local commands when they already provide the needed information. Use MCP when live or application-specific state or actions are required.

2. **Query narrowly.**  
   Prefer exact identifiers, paths, objects, addresses, filtered searches, small ranges, summaries, metadata, and direct relationships over broad enumeration.

3. **Use progressive retrieval.**  
   Start with:
   
   `identify → summarize → inspect relevant detail → expand if needed`

   Do not request maximum detail up front.

4. **Bound results when supported.**  
   Use filters, limits, ranges, pagination, or shallow traversal. Do not invent parameters absent from the tool schema.

5. **Avoid large dumps.**  
   Avoid full logs, hierarchies, graphs, databases, traces, raw data, or other large responses unless genuinely necessary. Ask whether a smaller query can answer the immediate question first.

6. **Reuse known state.**  
   Do not repeat a read when equivalent information is already available and the underlying state has not changed. If only part may have changed, inspect only that part.

7. **Batch related work.**  
   Prefer:

   `targeted read → related changes → one meaningful verification`

   over repeatedly alternating reads and writes.

8. **Verify deliberately.**  
   Verify when results are ambiguous, operations are risky, state may have partially changed, or later work depends on exact state. Do not automatically reread after every successful operation.

9. **Stop when sufficient.**  
   Once enough information exists for the next useful action, act. Do not keep exploring merely because more information is available.

10. **Correctness wins.**  
    Expand scope or retrieve additional data whenever it is genuinely required to complete the task reliably.

## Multi-tool tasks

If substantial work will move between multiple MCP systems, read `references/multi-tool-workflows.md`.

For ordinary tasks, do not load additional reference material.