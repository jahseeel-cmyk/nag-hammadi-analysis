# v13 79-Row Diagnostic — Source Leakage Check

Date: 2026-09-20

## Working dataset

79 rows across 14 corpus labels.

Class counts:
- TRANSFORMATION_FORMATION: 5
- DIVINE_NAMING_IDENTITY: 16
- REVELATION_VISION: 21
- ASCENT_PASSAGE: 19
- CONTROL_SUBJECTION: 4
- GENERIC_RITUAL_EFFECT: 8
- PEDAGOGICAL_PROSODIC_CONTROL: 6

## Pipeline diagnostic

Majority-class baseline:
26.58%

Corpus-majority "predictor":
77.22%

This is the key warning.

A classifier can recover much of the function label simply by knowing which corpus a row came from. Therefore source/function coupling is currently much stronger than the hypothesized cross-corpus performance signal.

## Leave-one-corpus-out pilot

Form only:
accuracy 36.71%
balanced accuracy 22.98%

Performance only:
accuracy 6.33%
balanced accuracy 3.69%

Form + performance:
accuracy 11.39%
balanced accuracy 8.44%

Pilot performance gain:
-25.32 percentage points.

Marsanes B4 nearest-neighbor performance distance:
- nearest ritual row: 0.75
- nearest prosodic control row: 0.75
- affinity delta: 0.00

## Interpretation

DO NOT score H13-1 through H13-4 yet.

The current result is not evidence that performance is irrelevant.

It is evidence that the dataset is badly confounded for the intended question:
- PGM contributes many performance-rich rows,
- several other corpora contribute primarily one function,
- control rows are too few,
- Marsanes has only one secure performance-bearing row,
- function labels are highly source-coupled.

This is exactly the kind of pilot failure the preregistration allowed us to diagnose before n >= 120.

## Required correction

The next phase must reduce source/function coupling before final hypothesis testing.

Priority:
1. expand non-PGM prosodic controls;
2. add performance-bearing ritual rows from multiple independent corpora/traditions;
3. cap any single corpus contribution to the primary balanced analysis;
4. preserve the full uncapped dataset as a sensitivity analysis;
5. retain leave-one-corpus-out evaluation.

No hypothesis threshold is changed.
