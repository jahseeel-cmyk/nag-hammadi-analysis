# Marsanes Philological Binding Audit v10

Date: 2026-09-20

## Purpose

Verify the four highest-priority semantic bindings (B1-B4) against:
1. the repository's Coptic transcription;
2. the repository's English translation;
3. critical-edition-backed scholarly discussion, especially John D. Turner / Ruth Majercik and the Funk-Poirier-Turner edition tradition.

This is NOT yet a direct facsimile/diplomatic collation.
The repository Coptic text is a transcription source, and the scholarly secondary literature is used to audit interpretation and line references.

## Source hierarchy used

HIGH:
- Coptic transcription in output/coptic/X_1_marsanes.md
- John D. Turner / Ruth Majercik discussion of Marsanes' alphabet and soul configurations
- Funk, Poirier, Turner, Marsanès (NH X,1), 2000, as the critical-edition lineage cited by Turner

MEDIUM:
- Turner/Pearson English translation tradition
- Pearson discussion of the Marsanes ritual passage

CAUTION:
- Marsanes is heavily damaged overall; Linjamaa notes only about 27% of the tractate is legible, though the alphabetic middle section is relatively well preserved.

---

## B1 — SERIES7(simple vowels) ↔ SELF-BEGOTTEN SOUL

### Coptic anchor

Folio 26:
- line 3 contains E-ETA-I-O-U immediately in the soul-shape passage;
- line 4 contains the full seven-vowel series A-E-ETA-I-O-U-OMEGA;
- the same local syntactic unit contains "the self-begotten soul."

The seven-vowel row itself is visible in the repository transcription.

### Scholarly cross-check

Turner/Majercik identify the seven simple vowels and their combinations as components of the soul configurations and cite the critical-edition work of Funk/Poirier/Turner.

A later scholarly reconstruction following Funk likewise renders the self-begotten soul with the seven-vowel series.

### Verdict

B1 status: STRONGLY VERIFIED.

Safe formulation:

BIND(SERIES7(simple vowels), SELF_BEGOTTEN_SOUL_CONFIGURATION)

Caution:
The exact metaphysical semantics of each individual vowel are not established.

---

## B2 — REPEAT3(simple vowels) ↔ MALE THIRD SOUL SHAPE

### Coptic anchor

Folio 28:
- lines 12-14 explicitly contain "three times" in connection with a male soul / third configuration;
- lines 18-22 again identify the male soul's third shape and preserve the tripled simple-vowel pattern.

Visible/restored status:
- EEE visible
- ETAETAETA visible
- III visible
- OOO visible
- OMEGA triplets visible
- AAA partially restored
- UUU partially restored

Thus the binding between the MALE THIRD SHAPE and triplication is much more secure than every individual restored token.

### Scholarly cross-check

The standard translation and the annotated scholarly reconstruction both explicitly state "three times for a male soul" and identify the male soul's third shape with tripled simple vowels.

### Verdict

B2 status: STRONGLY VERIFIED, MINOR RESTORATION SENSITIVITY.

Safe formulation:

BIND(REPEAT3(simple-vowel groups), MALE_THIRD_SOUL_CONFIGURATION)

Do not claim:
every token of the reconstructed 27-token sequence is directly visible.

---

## B3 — COMBINE(consonant,vowel) ↔ DIVINE / ANGELIC NOMENCLATURE

### Coptic anchor

Folio 27:
- lines 13-18 explicitly use onomasia / nomenclature language for gods and angels in the discussion of phonological combinations.

Folio 30:
- lines 3-9 again state that consonants exist with voiced/vocal elements, are ordered/subordinated, and constitute the nomenclature of the angels.

Folio 31:
- the BA/GA/DA/ZA/THA-style series shows the combination mechanism, but the COMPLETE 5x7 paradigm is heavily restoration-dependent.

### Scholarly cross-check

Turner/Majercik explicitly distinguish:
- a nomenclature for "gods and angels" at X 27,13-14 / 30,3-9 associated with natural phonological combinations;
- an "ignorant" nomenclature at X 30,28b-31,4 associated with other combinations.

This is especially important:
the text itself appears to distinguish FUNCTIONALLY DIFFERENT nomenclature classes, not merely list syllables.

### Verdict

B3 status: STRONGLY VERIFIED at the GENERAL BINDING level.

Safe formulation:

BIND(COMBINE(vowels, consonants), DIVINE_ANGELIC_NOMENCLATURE)

Conditional sub-hypothesis:

BIND(SUBSTITUTE_VOWEL(consonantal frame), SPECIFIC_NOMENCLATURE_CLASS)

Status of that narrower sub-hypothesis:
MODERATE, because the full consonant-vowel grid is restoration-sensitive.

---

## B4 — CHANGE(consonantal form) + BEAT/PITCH/SILENCE/IMPULSE ↔ HIDDEN GODS

### Coptic anchor

Folio 30:
- lines 12-18 contain the relevant sequence:
  changed / altered consonantal forms,
  the hidden gods,
  and four performance terms conventionally translated as:
  beat, pitch, silence, impulse.

Some initial portions of the line are restored/bracketed in the transcription.

### Scholarly cross-check

The standard translation reads that changed consonants "submit to the hidden gods" by beat, pitch, silence and impulse.

However Pearson explicitly notes a major philological ambiguity:
the Greek loan verb hypotassein can be interpreted in the Coptic syntax as either:
- "submit"
or
- "subject."

Therefore the DIRECTION OF AGENCY is not secure.

This is a major correction to our prior model.

### Verdict

B4a — presence of a relation among:
- changed consonantal form
- hidden gods
- beat / pitch / silence / impulse

Status: VERIFIED, MODERATE-HIGH.

B4b — exact direction:
"the consonants submit to hidden gods"

Status: UNRESOLVED.

B4c — alternative:
"the consonants subject the hidden gods"

Status: PHILOLOGICALLY POSSIBLE, NOT ESTABLISHED.

### Revised safe formulation

Replace:

BIND(CHANGE + PERFORMANCE, HIDDEN_GOD_SUBMISSION)

with:

BIND(
  CHANGE(consonantal form) + PERFORMANCE{BEAT,PITCH,SILENCE,IMPULSE},
  HIDDEN_GOD_RELATION
)

with agency_direction = UNRESOLVED.

This is currently the most important philological correction in the project.

---

# Overall result

B1: STRONGLY VERIFIED
B2: STRONGLY VERIFIED, restoration-sensitive at a few tokens
B3: STRONGLY VERIFIED generally; full matrix only MODERATE
B4: PERFORMANCE/HIDDEN-GOD RELATION VERIFIED; agency direction UNRESOLVED

## What survives

The Semantic Binding Grammar survives philological audit in a narrower and stronger form:

FORMAL OPERATOR
+ EXPLICIT TEXTUAL BINDING
-> METAPHYSICAL / RITUAL FUNCTION.

The text itself really does bind:
- vowel structures to soul configurations;
- triplication to a male third soul configuration;
- consonant-vowel combination to divine/angelic nomenclature;
- changed consonantal form + performance variables to a hidden-god relation.

## What does NOT survive unchanged

"HIDDEN-GOD SUBMISSION" is too specific.

Because hypotassein is directionally ambiguous, the project must remain neutral between:
- submission to the gods;
- subjecting the gods;
- a more general ordering/subordination relation.

## Esoteric implication

The most conservative but still significant conclusion is:

Marsanes does not merely place ordinary grammatical material next to theology.
It explicitly integrates formal linguistic operations into a hierarchy of soul-shapes, divine names, and a performance-mediated relation with hidden gods.

That does NOT prove a secret universal code.
It does support treating the alphabetic section as an intentional sacred-language system rather than a detached school exercise.

## Next test

Highest priority:
1. direct critical-edition/facsimile check of folio 30:12-18;
2. determine the best syntactic reading of hypotassein;
3. identify the Greek/Coptic technical meanings of the four performance terms;
4. only then test whether B4 is better modeled as:
   - submission,
   - command/control,
   - sympathetic resonance,
   - ritual attunement,
   - or another relation.

This is more important than adding new numerological correspondences.
