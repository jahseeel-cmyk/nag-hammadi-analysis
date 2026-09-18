# Marsanes Benchmark v1

Purpose: freeze an auditable benchmark for NHC X,1 (Marsanes) before further decoding or pattern search.

## Epistemic layers

1. DIPLOMATIC — only characters/structures judged visible in the manuscript/transcription source.
2. RESTORED — editorial restorations, corrections, or conjectures, each with explicit provenance.
3. SCHOLARLY_INTERPRETATION — published interpretation, never merged with the text layer.
4. HYPOTHESIS — our computational model and predictions.

## Frozen hypothesis

G1: Marsanes may encode a transformational grammar of sacred sound rather than a fixed substitution cipher.

Three-key decomposition:
- K1 INVARIANT: what information survives transformations?
- K2 CARRIER: what minimal operator set transports/transforms it?
- K3 RESPONSIBILITY: which representational layer contributes independently to configuration identity?

The "three keys" framing is an experimental decomposition only, not historical evidence and not numerology.

## Required controls

- length-matched nulls
- vowel-frequency-matched nulls
- run-length-matched nulls
- order-shuffled nulls
- Greek school-exercise control
- generic seven-vowel paradigms
- PGM-style vowel-repetition control

## Holdout order

1. Zostrianos
2. Holy Book of the Great Invisible Spirit
3. Trimorphic Protennoia
4. Discourse on the Eighth and Ninth

Do not modify the operator set after opening a holdout without recording the change as a failed frozen prediction.

## Entropy sanity check

For a uniform seven-grapheme prior where only eta/iota and omicron/omega collapse into two size-2 merger classes:

H(G|P) = 4/7 bits = 0.5714285714 bits.

I(G;P) = log2(7) - 4/7 = 2.2359263506 bits.

This is a mathematical control, not a claim that this simplified pronunciation model is historically established.

## Status

Dataset rows are intentionally absent until primary-text collation is source-audited. Do not fabricate missing manuscript characters.
