# Candidate v7 — Token Specificity / Credential Grammar

Status: CANDIDATE ONLY
Generated after Hekhalot + PGM v6 test.

## Core refinement

Access-control transduction is too broad to be the final distinguishing feature.

The new discriminating variable is TOKEN SPECIFICITY.

A credential system is strong when:
1. token T is locally bound to boundary/state B;
2. verifier V recognizes T;
3. presenting T changes V/B behavior;
4. a different boundary requires a different token or token-configuration;
5. token identity/form therefore carries state information.

## Formalization

Let T be a sacred carrier and B a boundary/state.

Specificity:
S(T,B) increases when T is used only or preferentially at B.

A candidate credential grammar predicts:

B_i -> T_i -> V_i -> PASS_i

rather than one universal token T used everywhere.

## Marsanes bridge

Marsanes may become relevant here if:
- vowel substitution,
- grouping,
- consonantal frames,
- repetition,
- pitch/beat/silence

systematically alter token identity according to level or function.

This suggests a new question:

Does the Marsanes grammar transform a base sacred form into level-specific credentials?

## Required next test

Before upgrading v7:
- build token-boundary pairs from Hekhalot;
- compare against PGM;
- then ask whether Marsanes' transformation rules predict a non-random token partition.

No planetary or numerical mapping should be introduced unless independently anchored.
