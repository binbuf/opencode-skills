# Source Quality Guide

Source quality depends on the claim being evaluated.

Use the strongest source appropriate to the claim rather than applying a simplistic universal ranking.

## Tier A — Primary and authoritative evidence

Prefer whenever available:

- official technical documentation
- standards and specifications
- original academic papers
- original datasets
- government publications
- regulatory text
- court decisions
- source code repositories
- official release notes
- official changelogs
- direct benchmark methodology/results
- vendor documentation for documented product behavior

These sources are strongest for establishing what was officially specified, released, measured, required, or stated.

They may still contain bias, mistakes, marketing framing, or incomplete information.

A vendor is authoritative about what it officially claims or documents, but not automatically the strongest independent evidence that its product is superior.

---

## Tier B — Strong independent evidence

Examples:

- reputable independent technical testing
- recognized research institutions
- established specialist publications
- expert analysis showing methodology
- reproducible benchmarks
- high-quality investigative journalism
- authoritative textbooks or reference works

Prefer sources that expose their methodology and underlying evidence.

---

## Tier C — Practitioner evidence

Examples:

- GitHub issues
- GitHub discussions
- maintainer comments
- engineering blogs
- conference presentations
- expert practitioner writeups
- Reddit
- technical forums
- Stack Overflow
- community benchmarks

These sources can be extremely valuable for practical behavior that official documentation omits.

Use them especially for:

- bugs
- edge cases
- undocumented limitations
- setup difficulties
- compatibility problems
- real-world workflows

Do not treat isolated anecdotes as universal behavior.

Look for corroboration.

---

## Tier D — Discovery sources

Examples:

- generic blogs
- unsourced comparison pages
- aggregators
- SEO content
- reposts
- AI-generated summaries
- anonymous claims

Use primarily to discover terminology or stronger underlying sources.

Avoid using them as the primary evidence for consequential claims.

---

# Special cases

## Software and APIs

Prefer:

1. current official docs
2. current source code
3. release notes
4. maintainer statements
5. reproducible behavior
6. issue tracker evidence
7. independent technical discussion

Always check version numbers.

A correct answer for version N may be wrong for version N+1.

---

## AI models

Separate:

- vendor/model-card claims
- published benchmark results
- independent benchmark results
- user preference evaluations
- anecdotal reports

Check:

- exact model version
- reasoning settings
- tool use
- sampling configuration
- context length
- benchmark version
- contamination concerns
- pass@k / number of attempts
- scoring methodology
- hardware when relevant

Do not combine benchmark numbers produced under incompatible methodologies as though they were directly comparable.

---

## Product comparisons

Manufacturer documentation is useful for specifications.

Use independent testing for claims about:

- quality
- performance
- reliability
- battery life
- thermals
- usability
- real-world behavior

---

## News and current events

Prefer reporting closest to the event and direct records where practical.

Check both:

- publication date
- date the event actually occurred

Later reporting may correct earlier accounts.

---

# Source diversity

Source diversity means diversity of underlying evidence, not domain count.

Three articles quoting the same press release are one evidentiary chain.

Whenever a claim is consequential, determine where the information originated.

---

# Conflict resolution

When strong sources disagree:

1. verify they are discussing the same thing
2. check dates
3. check versions
4. check methodology
5. check definitions
6. inspect primary evidence
7. determine whether the disagreement can be reconciled

If it cannot, preserve the disagreement in the report.

Do not hide uncertainty merely to produce a cleaner conclusion.