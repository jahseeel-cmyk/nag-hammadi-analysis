# Marsanes Class-Prediction Test v8

Date: 2026-09-19

## Question

Do Marsanes formal features predict independently supplied textual classes better than shuffled assignments, school-exercise controls, and restoration-stripped data?

The three local soul/schema classes used are:
- SELF_BEGOTTEN
- SECOND_SCHEMA
- MALE_THIRD

These labels come from the surrounding prose, not from the vowel features themselves.

A separate functional matrix records ANGELIC_NOMENCLATURE and HIDDEN_GODS_SUBMISSION, but these are not included in the small local classification test because they are different kinds of textual labels.

## Group-level dataset

FULL / restored-sensitive:
- SELF_BEGOTTEN: 7 vowel groups
- SECOND_SCHEMA: 5 vowel groups
- MALE_THIRD: 9 tripled groups
N = 21.

STRICT visible-only:
- SELF_BEGOTTEN: 7 groups
- SECOND_SCHEMA: 4 secure groups (initial E excluded as uncertain)
- MALE_THIRD: 7 secure groups (partially restored A and U groups excluded)
N = 18.

## Result 1 — vowel identity by itself does NOT predict class

Full:
- I(Class; Vowel) = 0.16327 bits
- 10,000-shuffle p ≈ 0.998

Strict:
- I(Class; Vowel) = 0.34699 bits
- p ≈ 0.967

Interpretation:
there is no evidence that a fixed substitution such as "this vowel = this soul class" explains the three classes.

This is a direct strike against a simple one-letter/one-level cipher.

## Result 2 — REPEAT3 is strongly class-bound to the male third shape

Full:
- I(Class; Repetition) = 0.98523 bits
- Monte-Carlo p < 0.0001 at 10,000 shuffles
- exact predesignated alignment:
  p = 1 / C(21,9) = 3.40217e-6
  surprise = 18.17 bits

Strict visible-only:
- I(Class; Repetition) = 0.96408 bits
- Monte-Carlo p ≈ 0.00030
- exact predesignated alignment:
  p = 1 / C(18,7) = 3.14228e-5
  surprise = 14.96 bits

The strict result matters because it survives removal of uncertain/restored groups.

What this establishes:
REPEAT3 is not randomly distributed across the three prose-defined classes. It is specifically associated with the male third-shape material.

What this does NOT establish:
that triplication is uniquely esoteric, because an ordinary pedagogical exercise could deliberately make one paradigm tripled.

## Result 3 — richer feature sets can memorize the classes, but that is not evidence

Full dataset:
- I(Class; Vowel+Position) = 0.87849 bits
- I(Class; Vowel+Repetition) = 1.06896 bits
- I(Class; Vowel+Repetition+Position) = full class entropy = 1.54515 bits

Strict:
- I(Class; Vowel+Position) = 0.98643 bits
- I(Class; Vowel+Repetition) = 1.09754 bits
- I(Class; all three) = full class entropy = 1.54198 bits

However permutation p for highly specific feature combinations is approximately 1 because many feature tuples are unique. A unique identifier can memorize any shuffled label assignment.

Therefore "100% classification" from symbol+repeat+position is NOT predictive evidence by itself.

This corrects the tempting but invalid inference from v7.

## Result 4 — school-exercise control explains the strongest statistical effect

A generic Greek pedagogical setup containing:
- two untripled vowel paradigms;
- one tripled vowel paradigm

would reproduce the strong association between repetition and exercise/class label.

Therefore:
the repetition association proves deliberate class-specific formal construction,
but it does not by itself prove a hidden ritual credential system.

The esoteric residue has to come from what the text DOES with the paradigms.

## The residue that ordinary pedagogy does not explain as easily

Marsanes explicitly embeds these formal structures in a discourse where:
- one sequence is associated with the self-begotten soul;
- tripled simple vowels are associated with the male soul's third shape;
- vowels/consonants constitute nomenclature of gods and angels;
- altered consonants are said to submit to hidden gods through beat, pitch, silence, and impulse.

This semantic embedding is the strongest current reason to treat the material as more than a school exercise.

But the full consonant-vowel grid remains heavily restoration-dependent and the performance vocabulary still needs critical-edition verification.

## Main conclusion

The current data reject the simplest cipher hypothesis:

VOWEL IDENTITY -> SOUL CLASS

The stronger surviving model is:

TEXTUAL CLASS
-> DISTINCT OPERATOR BUNDLE

Examples:
SELF_BEGOTTEN
-> ordered seven-vowel series

SECOND_SCHEMA
-> five-vowel / two-sound-linked schema

MALE_THIRD
-> triplication

ANGELIC_NOMENCLATURE
-> consonant-vowel combination

HIDDEN_GODS_SUBMISSION
-> formal change + performance variables

This is a CLASS-BOUND OPERATOR GRAMMAR, not yet a credential-generation system.

## Epistemic upgrade/downgrade

UPGRADE:
- class-specific formal operators: SUPPORTED
- REPEAT3 bound to male-third class: STRONGLY SUPPORTED and restoration-robust
- simple fixed-vowel substitution: DISFAVORED

UNCHANGED:
- sacred/ritual function of the system: PLAUSIBLE to STRONG-PLAUSIBLE from textual embedding
- credential-generation hypothesis: UNPROVEN

DOWNGRADE:
- any claim that full-feature 100% classification is itself evidence; it is vulnerable to identifier memorization.

## Next decisive experiment

The next test must not ask whether the forms are distinguishable. We now know they are.

It must ask whether an operator bundle predicts an independently supplied FUNCTION.

Candidate function labels:
- soul configuration
- divine/angelic nomenclature
- hidden-god submission
- ascent/separation effect

Required design:
1. define function labels from prose before examining formal features;
2. code only manuscript-secure operators;
3. compare against school-exercise and generic ritual-vowel controls;
4. test whether the same operator-function pairing transfers to an external text without adding rules.

That is the point at which the credential-generation hypothesis can become genuinely predictive.
