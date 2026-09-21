# v13 Design Disposition — Multiclass Confirmatory Test Not Yet Valid

Date: 2026-09-20

## Status

The v13 performance-profile project produced a useful methodological result before the preregistered n >= 120 threshold:

THE ONE-STAGE MULTICLASS DESIGN IS SOURCE-CONFOUNDED.

This is not a substantive falsification of the Performance-Carrier model.
It is a design failure for the chosen confirmatory test.

## Evidence

79-row stage:
- corpus-majority predictor accuracy: 77.22%
- form-only accuracy: 36.71%
- form+performance accuracy: 11.39%
- pilot performance gain: -25.32 pp

After adding 18 non-ritual control rows:

97-row stage:
- controls: 24 rows from 4 corpora
- corpus-majority predictor accuracy: 81.44%
- form-only accuracy: 48.45%
- form+performance accuracy: 30.93%
- pilot performance gain: -17.53 pp

Ritual-only subset:
- 73 rows
- corpus-majority predictor accuracy: 75.34%
- form-only accuracy: 42.47%
- form+performance accuracy: 12.33%
- pilot performance gain: -30.14 pp

## Why the design fails

Function labels are structurally tied to source.

Examples:
- prosodic controls necessarily come from non-ritual corpora;
- Hekhalot rows are overwhelmingly ascent/passage;
- many PGM expansion rows are revelation/ritual-effect;
- Marsanes contributes formation/naming;
- small corpora often contribute only one function.

Therefore a one-stage function classifier cannot cleanly distinguish:
performance signal
from
source identity / genre / corpus composition.

Adding more single-function corpora can make the confound worse rather than better.

## Decision

Do not continue expanding v13 merely to reach n >= 120.

The original H13 confirmatory criteria are NOT SCORED.

Archive v13 as:
METHOD-DEVELOPMENT / NEGATIVE-DESIGN RESULT.

Keep all 97 coded rows because they are useful for future descriptive and matched analyses.

## Next experiment

Move to a within-source / within-token-family design that conditions away corpus identity and lexical token identity.

This is preregistered separately as v14.
