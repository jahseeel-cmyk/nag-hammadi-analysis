# v13 Source-Deconfounding Addendum

Freeze date: 2026-09-20
Reason: preregistered pilot detected severe source/function leakage before target n >= 120.

This addendum changes SAMPLING BALANCE only.
It does NOT alter:
- H13-1 through H13-4,
- feature definitions,
- function labels,
- success thresholds,
- primary classifier,
- permutation seed.

## Diagnostic trigger

Corpus-majority label prediction on the 79-row working set = 77.22%.

This exceeds the scientific tolerance for a cross-corpus function test.

## Balanced analysis set

In addition to the full dataset, create a BALANCED PRIMARY SUBSET with:

### Corpus cap
Maximum 12 rows per corpus/text-family in the primary balanced analysis.

Rows above the cap remain in the full sensitivity dataset.

### Minimum comparator diversity
Before final scoring require:

RITUAL / SACRED:
- >= 5 distinct corpora/text-families with at least 4 rows each;
- >= 3 historically distinct traditions among:
  Gnostic/Sethian-Jeuian,
  Greco-Egyptian ritual,
  Jewish ascent,
  late-Platonic/theurgic.

CONTROLS:
- >= 4 distinct non-ritual prosodic/grammatical sources;
- >= 24 control rows total;
- control rows must include at least:
  pitch,
  duration/quantity,
  rhythm/ictus,
  repetition/recitation,
  silence/pause where genuinely attested.

### Function coverage
Each function used in balanced primary analysis must have:
- >= 8 rows total,
- from >= 2 corpora.

Functions failing this requirement remain in descriptive analysis but are excluded from the balanced multiclass classifier.

This does NOT relabel rows.

## Evaluation

Primary confirmatory result after target n >= 120 must report both:

A. FULL DATASET
B. BALANCED PRIMARY SUBSET

A claim is considered robust only if direction agrees in both.

## Source leakage metric

Report:
- majority-class baseline;
- corpus-majority predictor accuracy;
- classifier accuracy.

Desired deconfounding target:
corpus-majority predictor <= 55% in balanced primary subset.

If this cannot be achieved without discarding most data, the multiclass design is judged unsuitable and H13-1 is not supported.

## No rescue rule

Do not:
- create new function labels to improve balance;
- merge functions after seeing results;
- recode uncertain rows toward the hypothesis;
- add modern performance reconstructions.

## Next data acquisition priority

1. non-ritual prosody/grammar controls;
2. non-PGM ritual performance rows;
3. only then further PGM expansion.
