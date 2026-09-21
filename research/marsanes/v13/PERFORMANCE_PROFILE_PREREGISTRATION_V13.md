# Performance-Profile Experiment v13 — PREREGISTRATION

Freeze date: 2026-09-20

## Purpose

Test whether execution profiles add function-relevant information beyond bare written/formal structure across late-antique ritual corpora, and whether Marsanes aligns more closely with ritual/theurgic materials than with ordinary prosodic/grammatical controls.

This experiment follows the v12 result:

SACRED TOKEN = FORM + EXECUTION PROFILE

but treats that as a hypothesis to be stress-tested, not assumed.

## Primary hypotheses

H13-1 PERFORMANCE GAIN
Performance features will improve prediction of ritual function over form-only features.

Primary comparison:
Accuracy(Form+Performance) > Accuracy(Form)

Success criterion:
- improvement >= 10 percentage points under leave-one-text-out evaluation, AND
- permutation p < 0.01 for the improvement statistic.

H13-2 FUNCTIONAL CLUSTERING
Tokens with the same ritual function will cluster more strongly by execution profile than expected under shuffled function labels.

Success criterion:
- positive silhouette score for function labels using performance features,
- permutation p < 0.01.

H13-3 MARSANES AFFINITY
Marsanes performance-bearing rows will be closer, in standardized performance-feature space, to ritual/theurgic rows than to ordinary prosodic/grammatical controls.

Success criterion:
- mean nearest-neighbor distance to ritual rows < mean nearest-neighbor distance to control rows,
- permutation p < 0.01.

H13-4 FORM-ONLY LIMIT
Form-only features will not reliably distinguish sacred ritual function from matched pedagogical/prosodic controls.

Success criterion for preserving prior model:
- form-only leave-one-text-out accuracy <= Form+Performance accuracy,
- matched-control discrimination not significantly above chance.

## Function labels

Use only these frozen top-level labels:

ASCENT_PASSAGE
REVELATION_VISION
DIVINE_NAMING_IDENTITY
PROTECTION_APOTROPAIC
CONTROL_SUBJECTION
TRANSFORMATION_FORMATION
GENERIC_RITUAL_EFFECT
PEDAGOGICAL_PROSODIC_CONTROL

No new top-level label may be added after target annotation begins.
Ambiguous cases receive:
PRIMARY_FUNCTION + SECONDARY_FUNCTION
but only PRIMARY_FUNCTION is used in the preregistered classifier.

## Performance features

Binary unless specified:

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

Numeric:
REPETITION_N
ORDER_POSITION
DURATION_CLASS in {0 unspecified,1 short,2 long/prolonged}

## Form features

FORM_VOWEL_SERIES
FORM_CONSONANT_FRAME
FORM_VOWEL_CONSONANT_COMBINATION
FORM_REPETITION
FORM_GROUPING
FORM_PREFIX_SUFFIX
FORM_GRAPHIC_SEAL_SIGN
FORM_NAME_WORD
FORM_NONLEXICAL_SOUND
FORM_FIXED_SEQUENCE

## Boundary/access features

ACCESS_BOUNDARY_PRESENT
ACCESS_VERIFIER_PRESENT
ACCESS_TOKEN_SPECIFIC
ACCESS_BEHAVIOR_CHANGE
ACCESS_PASSAGE_FOLLOWS

These are analyzed secondarily and are NOT counted as performance features.

## Corpus strata

A. MARSANES
- secure B1-B4 relevant passages
- restoration status preserved

B. NAG HAMMADI / RELATED GNOSTIC
- Trimorphic Protennoia
- Three Steles of Seth
- Allogenes
- Discourse on the Eighth and Ninth
- Bruce Untitled Text
- Pistis Sophia
- Books of Jeu

C. JEWISH ASCENT
- Hekhalot Rabbati / related Hekhalot material where explicit procedure is available

D. GRECO-EGYPTIAN RITUAL
- PGM IV Mithras Liturgy
- PGM V.1-53
- PGM VII.756-794
- additional PGM spells selected by prespecified sampling rule below

E. THEURGIC THEORY
- Iamblichus, De Mysteriis VII
Theory rows are excluded from the primary token classifier and used in interpretation only.

F. CONTROLS
- ordinary Greek grammatical/prosodic descriptions
- matched school-style vowel/consonant paradigms
- non-ritual pitch/quantity/rhythm examples

## Sampling rule

Target n >= 120 token/procedure rows for v13 core analysis.

Per source:
- code every qualifying occurrence in the preselected passage/unit;
- do not cherry-pick only performance-rich examples;
- exclude rows where the relevant text is too fragmentary to determine function or execution;
- preserve excluded-row log with reason.

PGM expansion rule:
sample the first 20 qualifying ritual procedures encountered in the selected source edition/index after the already-known anchor passages, using source order rather than interest-based selection.

## Evidence status

Each row must be tagged:

PRIMARY_SECURE
PRIMARY_RESTORED
TRANSLATION_LEVEL
SCHOLARLY_PARAPHRASE
CONTROL_SYNTHETIC

Primary classifier excludes:
SCHOLARLY_PARAPHRASE
CONTROL_SYNTHETIC

except synthetic controls in the matched-control subanalysis.

## Analysis plan

1. Descriptive counts by corpus/function.
2. Form-only classifier.
3. Performance-only classifier.
4. Form+Performance classifier.
5. Leave-one-text-out evaluation.
6. Function-label permutation test, 10,000 permutations, seed 20260920.
7. Silhouette analysis by function.
8. Marsanes ritual-vs-control nearest-neighbor comparison.
9. Ablation:
   - remove silence
   - remove pitch
   - remove repetition
   - remove all nonlexical sound features
10. Sensitivity:
   - secure-only rows
   - remove PGM
   - remove Hekhalot
   - remove all related Jeuian texts
   - remove restoration-dependent Marsanes rows

## Falsification conditions

Downgrade Performance-Carrier model if:
- performance adds <10 percentage points over form-only,
- gain is not significant under permutation,
- Marsanes is not closer to ritual rows than controls,
- effect disappears in secure-only analysis,
- classification depends almost entirely on source identity,
- matched secular prosody performs equally well.

## Anti-anachronism

No:
- exact Hz mappings
- 432 Hz
- chakra assignments
- planetary-note mappings
- BPM reconstruction
- invented melody

unless independently supplied by an ancient source.

## Interpretation rule

A positive v13 result supports:

execution profile contributes to ritual function classification.

It does NOT by itself prove:
- a hidden universal code,
- direct borrowing among all corpora,
- identical metaphysical ontology,
- exact ancient performance reconstruction.
