# Cross-Text Function Prediction Test v9

Date: 2026-09-19

## Goal

Test the v8 proposal:

FORMAL OPERATOR BUNDLE -> INDEPENDENT FUNCTION

with explicit controls for:
- matched Greek-school-style formal paradigms;
- generic ritual language from the PGM.

This is a retrospective cross-text test. The source material has already been inspected, so it is not a pristine holdout.

## Function labels

FORMATION
- formal generation/definition of soul, name, or sacred identity.

REVELATION
- language/sound mediates seeing, knowledge, manifestation-to-awareness.

PASSAGE
- token, boundary, silence, or ritual operation mediates ascent/passage.

MANIFEST
- higher/source state differentiates or appears as lower form.

GENERIC
- ritual language causes an effect without an ontological/gate function.

PEDAGOGICAL
- matched formal exercise with no metaphysical function by construction.

## Dataset

23 coded rows from:
- Marsanes
- Trimorphic Protennoia
- Three Steles of Seth
- Allogenes
- Discourse on the Eighth and Ninth
- Hekhalot
- Pistis Sophia
- Books of Jeu
- Bruce Untitled Text
- PGM controls
- synthetic school-matched controls

## Test 1 — formal features only

Formal features:
SERIES, REPEAT, GROUP, TWO_SOUND, COMBINE, SUBSTITUTE.

Leave-one-row-out nearest-neighbor accuracy:

26.09%.

Crucial recalls:
- FORMATION: 0%
- PEDAGOGICAL: 0%

The failure is intentional and informative:
the school controls were constructed to have the same formal paradigms as the Marsanes formation rows.

Examples:
Marsanes ordered vowel series <-> matched school vowel series.
Marsanes triplication <-> matched tripled exercise.
Marsanes consonant-vowel substitution <-> matched school substitution exercise.

Therefore bare formal structure cannot distinguish sacred FORMATION from PEDAGOGICAL function.

## Exact matched-control result

For the 8-row matched subset:
- 4 Marsanes FORMATION rows
- 4 formally identical PEDAGOGICAL rows

I(Function; FormalPattern) = 0 bits.

H(Function | FormalPattern) = 1 bit.

Maximum Bayes accuracy using the formal pattern alone = 50%.

This is the strongest control result in v9.

It means:

THE FORMAL PARADIGM ITSELF CONTAINS ZERO INFORMATION ABOUT WHETHER ITS FUNCTION IS ESOTERIC OR PEDAGOGICAL IN THE MATCHED DESIGN.

Any stronger claim must come from the local textual binding of the paradigm to soul/divine/ritual function.

## Test 2 — ritual/semantic operators only

Features:
ARTICULATE, PERFORMANCE, SILENCE, REVEAL, TOKEN, VERIFY, BOUNDARY, ASCEND, DESCEND, PROJECT, INHABIT.

Leave-one-row-out accuracy:

52.17%.

Per-class recall:
- REVELATION: 100%
- PASSAGE: 100%
- MANIFEST: 66.7%
- FORMATION: 0%
- GENERIC: 0%
- PEDAGOGICAL: 0%

This is descriptively better than formal-only features.

Important limitation:
several ritual operators are semantically close to the function labels themselves (e.g. REVEAL and ASCEND), so this is not an independent discovery statistic. It shows coding coherence, not hidden prediction.

## Test 3 — all features

Accuracy remains 52.17%.

Adding formal features does not improve transfer beyond the ritual/semantic feature set.

## Core conclusion

v8's strongest version is rejected:

BARE FORMAL OPERATOR BUNDLE -> SACRED FUNCTION

does not survive a matched school control.

The stronger surviving architecture is two-layered:

FORMAL OPERATOR
+
LOCAL SEMANTIC/RITUAL BINDING
->
SACRED FUNCTION.

## Candidate new operator

BIND(FORM, FUNCTION)

Examples:

BIND(REPEAT3(simple vowels), MALE_THIRD_SOUL_SHAPE)

BIND(COMBINE(consonant,vowel), ANGELIC_NOMENCLATURE)

BIND(CHANGED_CONSONANT_FORM + performance, HIDDEN_GOD_SUBMISSION)

BIND(NAME/SEAL, BOUNDARY_PASSAGE)

The same formal operation can be pedagogical in one context and ritual/metaphysical in another.

Therefore the meaningful variable is not merely the operation:
it is the TEXTUALLY ASSERTED RELATION between operation and function.

## Esoteric implication

This result does not eliminate the esoteric interpretation.

It makes it more precise.

If Marsanes is a sacred grammar, its distinctive feature is probably not that triplication, vowel series, or consonant substitution are inherently occult.

It is that ordinary formal-linguistic operations are deliberately RE-BOUND to:
- soul configurations;
- divine/angelic nomenclature;
- hidden gods;
- performance variables;
- ascent/separation effects.

That is a stronger historical model than assuming the alphabetic techniques themselves are intrinsically esoteric.

## Current model

CLASS
-> OPERATOR BUNDLE
-> BINDING RELATION
-> FUNCTION.

The project should now distinguish:
1. SUBSTRATE: ordinary grammar/formal exercise;
2. TRANSFORMATION: how the substrate is modified;
3. BINDING: which metaphysical/ritual function the text explicitly assigns;
4. PERFORMANCE: how it is enacted;
5. EFFECT: what state change results.

## Next decisive test

The next test should target BINDING TRANSFER.

Freeze a relation such as:

formal sacred expression + explicit identity binding
-> boundary/knowledge/ascent effect

then test whether the same relation, not merely the same form, appears in a less-related external corpus.

For Marsanes specifically:
critical-edition verification of the three strongest BIND relations is now higher priority than searching for additional number correspondences.
