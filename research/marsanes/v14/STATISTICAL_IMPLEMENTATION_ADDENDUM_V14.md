# v14 Statistical Implementation Addendum

Freeze date: 2026-09-21
Status: frozen before any H14 scoring.

The preregistration fixed the hypotheses, thresholds, and within-family permutation logic. This addendum freezes the exact estimator/predictor implementation.

## Primary analysis set

Include only rows with:
- confidence = HIGH
and evidence status in:
- PRIMARY_SECURE
- TRANSLATION_LEVEL
- PROCEDURAL_REUSE_EXPLICIT_REFERENCE

Exclude:
- MODERATE confidence
- SCHOLARLY_PARAPHRASE
- unresolved orthographic-family merges
- rows dependent on speculative normalization

Families remain eligible only if at least 2 included occurrences survive.

## Execution profile representation

Binary vector in frozen feature order:
PERF_BEAT_ICTUS
PERF_PITCH_SPECIFIED
PERF_SILENCE
PERF_ATTACK_ONSET
PERF_BREATH_PATTERN
PERF_ASPIRATION
PERF_PROLONGATION
PERF_REPETITION_COUNT
PERF_HISS
PERF_POP_CLICK
PERF_BELLOW
PERF_GROAN_MOAN
PERF_ANIMAL_TIMBRE
PERF_DIRECTIONAL_PROJECTION
PERF_VOLUME_INTENSITY
PERF_GESTURE_COUPLED
PERF_BODY_POSTURE_COUPLED

Numeric performed variables are appended:
REPETITION_N
DURATION_CLASS

For conditional mutual information, numeric values are discretized exactly by their observed integer/category value.

Missing blank = 0 only where the row's source unit is sufficiently preserved and the feature is simply not prescribed.
Rows with indeterminate performance are excluded rather than zero-filled.

## H14-1 estimator

Use the empirical plug-in estimator:

I(FUNCTION; EXECUTION | TOKEN_FAMILY)
=
sum_f P(f) I(FUNCTION; EXECUTION | family=f)

No bias correction is used for the primary statistic because the preregistered within-family permutation distribution supplies the inferential null.

Permutation:
- 10,000 permutations
- seed 20260920
- shuffle complete execution-profile rows ONLY within each token family
- keep function labels, token family, corpus, and occurrence count fixed
- p = (1 + count(null >= observed))/(10001)

Success:
- observed CMI >= 0.25 bits
- p < 0.01

## H14-2 predictor

MODEL A — TOKEN FAMILY ONLY
For each held-out occurrence:
- predict the most common FUNCTION among the other occurrences in the same token family.
- ties resolved lexicographically.
- if removing the held-out row leaves no other occurrence, the row is not eligible. Under v14 all retained families have >=2 rows.

MODEL B — TOKEN FAMILY + EXECUTION
For each held-out occurrence:
1. restrict candidates to other occurrences in the same token family;
2. calculate Gower-style mixed distance:
   - Jaccard distance over binary execution features;
   - scaled absolute distance for REPETITION_N using family maximum;
   - scaled absolute distance for DURATION_CLASS using range 0-2;
3. select nearest occurrence(s);
4. predict majority FUNCTION among nearest ties;
5. remaining ties resolved lexicographically.

Primary metric:
overall leave-one-occurrence-out accuracy.

Secondary:
balanced accuracy over functions present.

Prediction gain:
Accuracy(B) - Accuracy(A)

Paired permutation:
- 10,000 within-family execution-profile shuffles
- recompute MODEL B after each shuffle
- MODEL A remains fixed
- p = (1 + count(null_gain >= observed_gain))/(10001)

Success:
- gain >= 0.10
- p < 0.01

## H14-3 direct A/B audit

A family qualifies only if:
- exact token identity is secure;
- at least two occurrences have explicitly different execution profiles;
- at least two occurrences have explicitly different primary functions/effects;
- both occurrences are HIGH confidence;
- no restoration-dependent token identity.

Anaphoric reuse is allowed only when the ancient procedure explicitly directs reuse of "the same names"/"them" immediately after printing the formula.

## H14-4 null stability

At least one family with:
same token + same execution + same function
must be retained and inspected.

PGM LXXIX/LXXX ABRASAX/MICHAEL anger-restraint witnesses are predesignated null candidates.

## No rescue rule

If H14-1 or H14-2 fails:
- do not merge functions;
- do not merge spelling variants;
- do not remove null families;
- do not add unregistered performance features;
- do not substitute qualitative H14-3 cases for failed aggregate thresholds.
