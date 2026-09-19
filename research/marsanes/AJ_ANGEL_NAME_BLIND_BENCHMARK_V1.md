# Apocryphon of John Angel-Name Benchmark — Blinded Design v1

## Why this benchmark is needed

The existing AJ_angel_name_translations.yaml contains many proposed etymologies and correspondential interpretations, but the project has already seen the body-part assignments. A new analysis by the current model would therefore not be genuinely blind.

The next valid test must separate:
1. NAME / COPTIC FORM
2. ETYMOLOGICAL ANALYSIS
3. BODY-PART ANSWER KEY
4. ESOTERIC INTERPRETATION

## Benchmark design

### Phase A — blind linguistic packet
For each selected name, provide only:
- manuscript form
- normalized transliteration
- immediate orthographic uncertainty
- no body part
- no laterality
- no regional category
- no Swedenborg/correspondential interpretation

### Phase B — independent semantic coding
An evaluator who has not seen the answer key assigns:
- likely language(s)
- full-form morphological parse
- literal gloss
- semantic domain
- confidence
- alternative parse(s)

### Phase C — locked prediction
Map each semantic domain to one or more predicted anatomical/function classes:
- sensory
- structural
- circulatory
- digestive
- reproductive
- locomotor
- boundary/covering
- speech/hearing
- cognitive/faculty
- unknown

### Phase D — reveal answer key
Score:
- exact body-part hit
- same-system hit
- same-function-class hit
- chance/null expectation
- confidence calibration

## Anti-fitting rules

- partial syllable matches do not count unless the rest of the form is explained;
- no semantic fit may be inferred from the known body part;
- Greek/Hebrew/Egyptian alternatives must be ranked before reveal;
- Swedenborgian correspondence is scored only after linguistic scoring;
- etymologies sourced only from this repository are not independent evidence.

## Immediate task

Create a fresh blind packet from Coptic manuscript forms and find an independent evaluator or isolated model context that has not seen AJ_angel_name_translations.yaml.

Until then, the existing etymologies remain hypothesis-generating data, not a successfully blinded validation.
