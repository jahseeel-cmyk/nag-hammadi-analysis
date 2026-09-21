# v13 Coding Manual

## Unit of analysis

One row = one discrete sacred utterance, name, seal, sound procedure, or formally specified vocal/graphic token with an identifiable local function.

Do not split a single procedural instruction into multiple rows unless the text assigns separate effects/stages.

## Required columns

token_id
corpus
text_unit
source_location
token_text
primary_function
secondary_function
evidence_status
restoration_flag
form_*
perf_*
access_*
notes
source_id

## Function coding rules

ASCENT_PASSAGE:
explicit movement through gate/realm/heaven/aeon or upward transfer.

REVELATION_VISION:
seeing, hearing, disclosure, gnosis, manifestation-to-awareness.

DIVINE_NAMING_IDENTITY:
nomenclature, identity, proper name, divine/angelic class identification.

PROTECTION_APOTROPAIC:
defence, warding, averting hostile power, safe passage without primary ascent focus.

CONTROL_SUBJECTION:
binding, compelling, subordinating, pacifying, ordering an entity.

TRANSFORMATION_FORMATION:
generation, shaping, configuring, forming soul/body/divine expression.

GENERIC_RITUAL_EFFECT:
ritual efficacy not fitting the above.

PEDAGOGICAL_PROSODIC_CONTROL:
non-ritual linguistic/musical/prosodic exercise or description.

## Performance coding rule

Mark a performance feature only if the text/edition explicitly prescribes or describes HOW the sound/form is executed.

Do not infer pitch from accent marks alone.
Do not infer rhythm from repetition alone unless temporal/metrical execution is explicit.
Do not infer silence from a textual pause unless silence is named or prescribed.

## Form/performance separation

REPEAT3 written as AAA:
FORM_REPETITION=1
REPETITION_N=3

If text also says "say three times":
PERF_REPETITION_COUNT=1

Thus written repetition and performed repetition are separate variables.

## Marsanes B4

Code:
PERF_BEAT_ICTUS=1
PERF_PITCH_SPECIFIED=1
PERF_SILENCE=1
PERF_ATTACK_ONSET=1

Function:
CONTROL_SUBJECTION only if direct agency is secure.
Otherwise:
DIVINE_NAMING_IDENTITY or GENERIC_RITUAL_EFFECT with note HIDDEN_POWER_ORDERING_AMBIGUOUS.

For preregistered analysis, use:
PRIMARY_FUNCTION = DIVINE_NAMING_IDENTITY
SECONDARY_FUNCTION = CONTROL_SUBJECTION
until B4 agency is resolved.

## Inter-rater future-proofing

Every nonzero feature should be defensible by a short source quote/location.
Ambiguous rows receive confidence:
HIGH / MODERATE / LOW.

Primary secure analysis uses HIGH + MODERATE only.
