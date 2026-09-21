# v14 — Within-Token Performance-Binding Experiment — PREREGISTRATION

Freeze date: 2026-09-20

## Central question

Does execution profile carry function-relevant information after controlling for BOTH:
1. source/corpus identity, and
2. lexical/graphic token identity?

This directly targets the strongest still-unproven version of the Performance-Carrier model:

SAME FORM + DIFFERENT EXECUTION
-> DIFFERENT RITUAL FUNCTION / STATE.

## Unit of analysis

One occurrence of a repeated sacred token.

A TOKEN FAMILY requires:
- exact same normalized lexical string, OR
- exact same graphic seal/sign identifier, OR
- editorially identical formula sequence.

No semantic-equivalence grouping is allowed.
No grouping by "similar sounding" forms.

## Eligible corpora

Priority:
1. Greek Magical Papyri
2. Books of Jeu
3. Pistis Sophia
4. Hekhalot material
5. Marsanes, only where repeated token identity is manuscript-secure

Iamblichus remains theoretical comparator, not an occurrence dataset.

## Minimum dataset

At least:
- 10 token families,
- each with >= 2 occurrences,
- total >= 30 occurrences,
- at least 3 source corpora if feasible.

If 10 families cannot be found without relaxing token identity, STOP and report failure to instantiate the test.

## Frozen variables

TOKEN_FAMILY
CORPUS
OCCURRENCE_ID

EXECUTION PROFILE:
- beat/ictus
- pitch
- silence
- attack/onset
- breath
- aspiration
- prolongation
- performed repetition
- hiss
- pop/click
- bellow
- groan/moan
- animal/vocal timbre
- directional projection
- volume/intensity
- gesture coupling
- body/posture coupling

FUNCTION:
same frozen v13 labels:
- ASCENT_PASSAGE
- REVELATION_VISION
- DIVINE_NAMING_IDENTITY
- PROTECTION_APOTROPAIC
- CONTROL_SUBJECTION
- TRANSFORMATION_FORMATION
- GENERIC_RITUAL_EFFECT

PEDAGOGICAL_PROSODIC_CONTROL is excluded from the primary repeated-token analysis.

## H14-1 — conditional information

Primary statistic:

I(FUNCTION ; EXECUTION_PROFILE | TOKEN_FAMILY)

Success:
- conditional mutual information >= 0.25 bits
- within-family permutation p < 0.01
- 10,000 permutations
- seed 20260920

Permutation rule:
shuffle execution profiles among occurrences ONLY WITHIN the same token family.

This preserves:
- token identity,
- corpus,
- family frequency.

## H14-2 — prediction gain

Compare:

MODEL A:
TOKEN_FAMILY only

MODEL B:
TOKEN_FAMILY + EXECUTION_PROFILE

Evaluation:
leave-one-occurrence-out, with family retained in training.

Success:
MODEL B accuracy - MODEL A accuracy >= 10 percentage points
AND
paired permutation p < 0.01.

Secondary:
balanced accuracy.

## H14-3 — direct A/B cases

High-bar qualitative prediction:

At least 3 independent token families must show:

same written/graphic token
+
explicitly different execution profile
+
explicitly different ritual stage/function/effect.

Each case must survive:
- source-location audit,
- translation/critical-edition audit,
- no restoration-dependent token identity.

This criterion is NOT replaceable by aggregate statistics.

## H14-4 — null family control

Families where:
same token
+
same execution
+
same function

must remain stable.

If the method spuriously creates function differences in stable families, downgrade the model.

## Evidence hierarchy

PRIMARY_SECURE
PRIMARY_RESTORED
TRANSLATION_LEVEL
SCHOLARLY_PARAPHRASE

Primary confirmatory analysis:
PRIMARY_SECURE + high-confidence TRANSLATION_LEVEL only.

Sensitivity:
include PRIMARY_RESTORED.

SCHOLARLY_PARAPHRASE:
descriptive only.

## Anti-fitting

Do not:
- merge near-synonyms into one token family;
- treat same deity with different names as same token;
- infer pitch from accent marks unless performance is explicit;
- infer repetition from written duplication unless performed repetition is explicit;
- invent Hz/BPM/melody;
- change function labels after family inspection.

## Failure conditions

Downgrade the strong Performance-Carrier hypothesis if:
- repeated token families are too rare to instantiate the test;
- execution profile adds <0.25 bits conditional information;
- prediction gain <10 pp;
- no direct A/B families exist;
- apparent effect depends on one corpus only.

## Interpretation

Positive v14 result supports:
execution profile contributes information beyond token identity.

It does NOT prove:
- universal occult code,
- same metaphysics across corpora,
- exact Marsanes pronunciation,
- direct historical borrowing.
