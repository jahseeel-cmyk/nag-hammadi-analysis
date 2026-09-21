# v14 Within-Token Performance-Binding Experiment — RESULTS

Date scored: 2026-09-21

## Primary analysis set

Starting pool:
41 occurrence rows across 12 exact token families.

Excluded by preregistered evidence rule:
- F06-A: MODERATE confidence
- F10-C: SCHOLARLY_PARAPHRASE / MODERATE
- F12-C: MODERATE confidence

Primary scoring set:
38 occurrences across 12 token families.

No spelling variants were merged after inspection.

## H14-1 — conditional information

Preregistered statistic:

I(FUNCTION ; EXECUTION_PROFILE | TOKEN_FAMILY)

Observed:
0.792101723 bits.

Threshold magnitude:
>= 0.25 bits.

Within-family permutation:
10,000 permutations
seed 20260920.

Permutation p:
0.2473752625.

Decision:
FAILS PREREGISTERED SIGNIFICANCE THRESHOLD.

Interpretation:
The raw conditional association is large, but with small and heterogeneous token families, associations this large are not rare enough under within-family reassignment of execution profiles.

Therefore the 0.792-bit value must NOT be interpreted as confirmatory evidence.

H14-1:
NOT SUPPORTED.

## H14-2 — predictive gain beyond token identity

MODEL A:
TOKEN_FAMILY only.

Leave-one-occurrence-out accuracy:
36.8421%.

Balanced accuracy:
34.1176%.

MODEL B:
TOKEN_FAMILY + EXECUTION PROFILE.

Accuracy:
34.2105%.

Balanced accuracy:
35.5882%.

Prediction gain:
-2.6316 percentage points.

Paired within-family permutation p:
0.2005799420.

Required:
>= +10 percentage points and p < 0.01.

Decision:
FAILS.

Execution profile did not improve held-out prediction of primary function beyond token identity under the frozen model.

H14-2:
NOT SUPPORTED.

## H14-3 — direct A/B cases

Requirement:
at least three exact token families with:
same form
+ different explicit execution
+ different explicit ritual function/stage/effect.

Line-by-line audit confirms at least:
- F01 Diadem sequence
- F02 ABRASAX
- F04 IAO

Further cases:
- F06 ABLANATHANALBA
- F09 DAMNAMENEU

Decision:
SUPPORTED QUALITATIVELY.

Important:
H14-3 cannot substitute for failed H14-1/H14-2.

## H14-4 — null/stability control

F10 MICHAEL:
PGM LXXIX and LXXX preserve the same anger-restraint charm:
- same token
- same threefold execution
- same function.

F02 ABRASAX also contains the same LXXIX/LXXX stability pair.

Decision:
SUPPORTED.

The method does not require every repeated token to change function when execution changes.

## Family-level diagnostic

Families with function variation but no coded execution variation:
- F08 SESENGENBARPHARANGES

Families with execution variation but no primary-function variation:
- F11 exact IAO-SABAOTH-ADONAI-ABRASAX sequence
- F12 Totrosiay YHWH

These are especially important negative cases.

They show that:
execution change is neither necessary nor sufficient for top-level function change in the present dataset.

## Overall v14 decision

The STRONG generalized Performance-Carrier claim is DOWNGRADED.

Not supported:

SAME TOKEN + EXECUTION PROFILE
=> generally predictable ritual FUNCTION.

Supported:

Specific ancient procedures can bind the same sacred form to different executions and different effects.

Best current formulation:

FORM
+ LOCAL PROCEDURAL BINDING
+ EXECUTION
-> LOCAL RITUAL EFFECT.

Performance is historically real and sometimes operational.
It is NOT yet a cross-token function code.

## Effect on v12

v12 remains valid as an ATTESTATION claim:
late-antique ritual texts can prescribe execution-sensitive sacred utterance.

v12 is no longer sufficient for the stronger GENERALIZATION:
execution profile systematically carries function information across sacred tokens.

Reclassify:

PERFORMANCE AS RITUAL VARIABLE:
SUPPORTED.

PERFORMANCE AS UNIVERSAL TOKEN-METADATA LAYER:
NOT SUPPORTED.

## Effect on Marsanes

Marsanes B4 remains important:
beat, pitch, silence, and attack/onset are likely genuine performance variables in its sacred-language passage.

But v14 removes the justification for assuming that those four variables form a universal code for divine class or ritual function.

The highest-value Marsanes question therefore returns to the local text:

What exact syntactic/ritual relation does X 30:12-18 establish between altered consonantal forms, performance, and hidden powers?

## Next best step

Direct manuscript/critical-edition collation of Marsanes X 30:12-18 now has the highest expected information gain.

Goal:
resolve:
- exact visible graphemes;
- restoration boundaries;
- hypotassein syntax;
- grammatical subject/object;
- lexical force of beat/pitch/silence/horme;
- whether performance modifies sound formation, divine relation, or both.

Do this before any new cross-tradition numerological or frequency hypothesis.
