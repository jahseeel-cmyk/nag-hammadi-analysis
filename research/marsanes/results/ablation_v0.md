# Marsanes Length-Matched Ablation v0

## Scope

This is the first actual length-matched local ablation using only material already present in this repository's Linssen-based Coptic transcription. It is **not yet the critical-edition freeze**. The purpose is to obtain a reproducible preliminary result while preserving restoration/uncertainty boundaries.

## Source observations

### C1
Folio 26 line 4 preserves the full seven-vowel sequence:

A E ETA I O U OMEGA

Status in the repository transcription: all seven visible.

### C2
Folio 26 line 3 has:

E ETA I O U

The initial E carries an uncertainty dot. Therefore C2 is not counted as fully secure in the strict dataset.

### C3 male triplet block
Folio 28 lines 21-22 gives the restored pattern:

AAA | EEE | ETAETAETA | III | OOO | UUU | OMEGAOMEGAOMEGA | OMEGAOMEGAOMEGA | OMEGAOMEGAOMEGA

Strict visibility:
- AAA: 1 visible, 2 restored
- EEE: 3 visible
- ETAETAETA: 3 visible
- III: 3 visible
- OOO: 3 visible
- UUU: 2 visible, 1 restored
- each of the three OMEGA triplets: fully visible

Thus 24 of 27 grapheme tokens in the restored male block are visible in this transcription (88.9%); 3 are editorially restored (11.1%). This is a transcription-level count, not yet a facsimile/critical-edition judgment.

## Local length-matched test

Target: vowel identity of equal-length homogeneous triplet groups.

Simplified acoustic sensitivity mapping:
- ETA -> I
- OMEGA -> O
- all other tested vowel identities remain distinct

This mapping is a sensitivity model, not a claim of exact historical pronunciation.

### Strict visible male-triplet subset

Groups used:
EEE, ETAETAETA, III, OOO, OMEGA^3, OMEGA^3, OMEGA^3

Wolfram exact result:

- H(Target) = 2.128085279 bits
- H(Target | collapsed sound) = 0.749301785 bits
- I(Target; collapsed sound) = 1.378783493 bits
- normalized MI I/H(Target) = 0.647898610
- best possible reconstruction of grapheme identity from collapsed sound = 5/7 = 0.714285714
- unique written target types = 5
- unique collapsed sound types = 3
- type collisions = 2

Full grapheme identity reconstructs the target perfectly by definition.

### Restored full male-triplet pattern

Groups:
A, E, ETA, I, O, U, OMEGA, OMEGA, OMEGA

- H(Target) = 2.641604168 bits
- H(Target | collapsed sound) = 0.582790278 bits
- I(Target; collapsed sound) = 2.058813890 bits
- normalized MI = 0.779380164
- best possible reconstruction from collapsed sound = 7/9 = 0.777777778
- unique written target types = 7
- unique collapsed sound types = 5
- type collisions = 2

## Ablation findings

### Grapheme vs sound
PRELIMINARY SUPPORT for FH004 / H3K-3 at the **local vowel-identity level**:
written grapheme identity preserves distinctions that the simplified acoustic-collapse model loses.

This does **not** yet show that grapheme identity is the primary carrier of the entire soul-configuration system.

### Repetition
NEGATIVE / TARGET-DEPENDENT RESULT:
for homogeneous triplets XXX, replacing XXX with X preserves vowel identity exactly. Therefore repetition contributes 0 additional bits to **vowel-identity classification** in this local test.

Repetition may still encode configuration, operation, grouping, or ritual performance; this test simply shows that it is not needed to identify which vowel a homogeneous triplet contains.

### Order
For a homogeneous triplet, internal symbol order is invariant under permutation and therefore contributes no information to vowel identity. Order must be tested at the inter-group or cross-configuration level instead.

## Consonant-grid restoration dependence

Folio 31 contains the BA/GA/DA/ZA/THA-style paradigm across seven vowel rows.

Under a deliberately strict cell rule in the repository transcription:
- A row: 2/5 secure
- E row: 3/5 secure
- ETA row: 2/5 secure
- I row: 0/5 secure
- O row: 2/5 secure
- U row: 0/5 secure
- OMEGA row: 2/5 secure

Strict secure cells = 11/35 = 31.4%.

Therefore the *complete* 5 x 7 consonant-vowel grid is strongly restoration-dependent in this transcription, even though portions of the pattern are directly visible. It must not be used as if all 35 cells were manuscript-observed.

## False-excitement control

The restored C1 and C3 vowel groups follow standard Greek vowel order.

If one naively assumes all 7! vowel orders are equally probable, an exact order match has:

p = 1/5040 = 0.0001984126984
surprise = 12.299208 bits

But that null is historically inappropriate if a Greek alphabet/school paradigm already predicts standard vowel order. Under the school-paradigm null, the order is expected.

This is a concrete demonstration of why historically matched controls are mandatory: an apparently extraordinary numerical result can vanish under the correct mundane baseline.

## Current classification

- Deliberate vowel architecture: strongly supported by the transcription.
- C1 full seven-vowel sequence: transcription-secure.
- C2 five-vowel sequence: mostly visible but one uncertain token.
- C3 male triplet architecture: strongly visible at token level, with A and U partially restored.
- Grapheme distinctions retain local information after a plausible merger model: preliminary computational support.
- Repetition as the indispensable carrier of vowel identity: not supported by this local test.
- Complete 5 x 7 consonant-vowel paradigm as fully observed manuscript data: not supported; restoration dependence is high.
- Unified hidden grammar: still unproven.

## Next required test

After critical-edition/facsimile verification, define an inter-group or transition target where length is matched and repetition/order can actually vary. Then compare:
1. grapheme identity
2. inter-group order
3. run/group boundaries
4. consonantal scaffold
5. acoustic mapping

against school-exercise and frequency/run-matched nulls.
