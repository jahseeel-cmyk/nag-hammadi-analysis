# Codex X Manuscript-Image Collation Protocol v14

Freeze date: 2026-09-20

## Why v14 supersedes v13 as the primary lane

The completed Deep Research synthesis identifies manuscript-image collation as the highest-information next step.

Reason:
many of the project's strongest numerical/formal claims are sensitive to editorial restoration. Before adding another large cross-corpus classifier, the project needs a physically grounded distinction between:

D_VISIBLE = marks actually visible in the manuscript image

and

D_CRITICAL = the critical/editorially reconstructed text.

The performance-profile v13 branch is preserved as a side experiment and is not deleted.

## First target

Nag Hammadi Codex X, page 31.

Why page 31:
- it contains the consonant-vowel substitution material;
- the critical transcription is highly restoration-sensitive;
- Linjamaa reproduces the page as Figure 5.2;
- Claremont's Nag Hammadi Archive index identifies Codex X page 31 as J-series item 1251.

Archive record locator:
https://ccdl.claremont.edu/digital/collection/nha/id/1251

Published image comparator:
Paul Linjamaa, The Nag Hammadi Codices and their Ancient Readers, ch. 5, Figure 5.2, printed p. 126.

## Evidence layers

L0 IMAGE
Raw archival/facsimile photograph.

L1 DIPLOMATIC
Only legible marks judged present on the photograph.
No bracket restorations.

L2 UNCERTAIN_VISIBLE
Visible traces that cannot be assigned with high confidence.

L3 CRITICAL
Editor-restored reading, preserving brackets/restoration provenance.

L4 NORMALIZED
Analytical Greek/Coptic normalization.

Never merge L0-L4 silently.

## Required image-collation fields

record_id
codex
tractate
codex_page
line_start
line_end
archive_item_id
image_series
image_coordinates_x
image_coordinates_y
image_coordinates_w
image_coordinates_h
diplomatic_coptic
uncertain_trace
critical_coptic
normalized_sequence
editorial_status
restoration_source
transcription_confidence
critical_confidence
notes

## Expanded decoder fields

For sequence-level rows also record:
- reconstructed Greek form
- Coptic Unicode codepoints
- Greek Unicode codepoints
- repetition count
- sequence length
- vowel/consonant class
- quantity/length class
- accent/pitch class
- aspiration class
- tokenization version
- parallel-text citation
- candidate numerical/cosmological mappings only as model-specific fields, never ground truth

## Page-31 first-pass scope

Primary grid:
five consonantal frames across seven vowel rows.

Rows:
A
E
ETA
I
O
U
OMEGA

Consonants:
B
G
D
Z
TH

Total critical grid cells:
35.

Secondary sequence:
beta interleaved with the vowel inventory on line 29.

## Collation rule

A cell is SECURE_VISIBLE only if all graphemes needed for that cell are represented without restoration brackets and without uncertainty dots in the current transcription AND direct image inspection agrees.

A cell is UNCERTAIN_VISIBLE if the required graphemes appear outside restoration brackets but one or more carry uncertain/dotted status.

A cell is RESTORATION_DEPENDENT if one or more required graphemes are supplied inside brackets.

The current CSV is a PRE-IMAGE PROXY derived from the critical transcription.
Its statuses MUST be replaced/confirmed against the actual photograph before being called manuscript-verified.

## Quantitative outputs

For each page/block calculate:

secure_visible_fraction
uncertain_visible_fraction
restoration_dependent_fraction

For every structural invariant calculate twice:

T_visible
T_critical

Editorial dependence:

ED(T) = distance(T_visible, T_critical)

For counts:
ED_count = |T_critical - T_visible| / max(1, T_critical)

## Immediate falsifier

Any hypothesis that depends on the full 5x7 grid as physically preserved is downgraded if direct image collation confirms that most cells are restoration-dependent.

## Do not do yet

- no new planetary assignment;
- no new 27/Timaeus claim;
- no frequency reconstruction;
- no filling gaps from expected pattern while labeling them "visible";
- no OCR-led transcription unless human/vision inspection fails.

## Completion criterion for page 31

Page 31 is complete only when:
1. the archival/facsimile image is locally inspected;
2. lines 1-29 receive image coordinates;
3. each grid cell is tagged secure/uncertain/restored/lost;
4. the current repo transcription is reconciled against the image;
5. all v1-v13 claims touching page 31 are re-scored against D_VISIBLE and D_CRITICAL.
