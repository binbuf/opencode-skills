# Citation Rules

Citations exist so the reader can determine whether the answer is supported by evidence.

## Core rule

Every consequential externally verifiable claim should be traceable to evidence.

Citation density should follow claim density.

Do not attach citations merely to make prose look authoritative.

---

# Citation placement

Place citations immediately after the claim or paragraph they support.

Avoid dumping all citations at the end of a long section when it is unclear which source supports which statement.

Use normal Markdown links where appropriate:

[Source title](https://example.com)

When several sources support one claim, cite the strongest sources rather than every source encountered.

---

# Never fabricate

Never invent:

- URLs
- article titles
- authors
- publication dates
- quotations
- DOI numbers
- benchmark numbers
- documentation sections
- repository issues

If source metadata cannot be established, omit the unknown field.

---

# Search results

A search-result snippet is primarily a discovery mechanism.

Open the underlying source when possible.

Do not present the wording of a search-result snippet as if the underlying document had been verified.

---

# Primary sources

When a claim concerns:

- what a product supports
- what an API exposes
- what a standard requires
- what version introduced a feature
- what a paper measured
- what a repository implements
- what an organization officially announced

prefer the primary source.

Independent sources may then be added to evaluate whether real-world behavior matches the official claim.

---

# Quantitative claims

For numbers, establish relevant conditions.

Examples:

- benchmark version
- model version
- hardware
- test configuration
- date
- population
- sample size
- currency
- geographic market

Do not strip qualifiers that materially affect interpretation.

---

# Quotes

Prefer paraphrase unless exact wording matters.

Keep quotations short.

A quotation does not eliminate the need to explain its context.

---

# Local project evidence

For claims based on local repository files, provide:

- file path
- relevant symbol, heading, or line range when available

Do not represent local implementation evidence as external validation.

---

# Secondary attribution

If Source B says Source A reported something, locate Source A when reasonably possible.

If the original source cannot be found, make the attribution chain explicit.

---

# Disagreement

When credible sources disagree materially, cite both sides.

Do not cite only the evidence favoring the report's preferred conclusion.

Explain why the disagreement exists when evidence allows.

---

# Source list

`sources.md` should prioritize the sources that materially contributed to the answer.

Recommended format:

## Primary sources

### Source title
- Organization/author:
- Date:
- URL:
- Used for:
- Notes:

## Independent sources

...

## Practitioner/community evidence

...

## Sources considered but rejected

Include rejected sources only when the reason is useful, such as:
- obsolete version
- methodology mismatch
- duplicated underlying source
- unsupported claim