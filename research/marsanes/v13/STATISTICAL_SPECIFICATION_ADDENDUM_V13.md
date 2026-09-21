# v13 Statistical Specification Addendum

Freeze date: 2026-09-20
Status: frozen before pilot model evaluation.

The main preregistration fixed the comparisons but did not name the exact classifier/distance rules. This addendum closes that gap before running the pilot analysis.

## Primary classifier

Bernoulli Naive Bayes with Laplace smoothing alpha=1.

For each leave-one-text-out fold:
- hold out every row from one text/corpus unit;
- fit feature probabilities only on remaining rows;
- estimate class priors from training rows with Laplace smoothing;
- predict the class with maximum log posterior;
- deterministic tie-break: lexicographic class label.

No source/corpus identity is included as a predictor.

## Primary feature sets

FORM:
all FORM_* binary columns plus REPETITION_N, ORDER_POSITION, DURATION_CLASS where present.

PERFORMANCE:
all PERF_* binary columns plus REPETITION_N and DURATION_CLASS only when they refer to performed execution, not merely written repetition.

FORM_PLUS_PERFORMANCE:
union of the above.

ACCESS features are excluded from the primary H13-1 classifier to avoid trivially encoding ASCENT_PASSAGE.

## Primary metric

Overall leave-one-text-out accuracy.

Secondary:
balanced accuracy = mean per-class recall.

H13-1 remains:
Accuracy(Form+Performance) - Accuracy(Form) >= 0.10
and permutation p < 0.01.

## Permutation test

10,000 permutations.
Seed = 20260920.

Permutation unit:
shuffle PRIMARY_FUNCTION labels at the TEXT level, not row level, whenever a text contributes multiple rows.
This preserves within-text dependence and reduces pseudo-replication.

If a text contains multiple function labels, shuffle the text-level vector of row labels as a block to another text with the same row count where feasible; otherwise use restricted row-label permutation within corpus stratum as sensitivity analysis.

Pilot analysis may use unrestricted row-label shuffling only as DESIGN DIAGNOSTIC and must not be reported as the final preregistered p-value.

## Distance for clustering

Binary execution profiles:
Jaccard distance.

Numeric execution features:
scaled to [0,1] and appended; mixed distance is mean of available component distances.

Silhouette is computed from the resulting pairwise distance matrix.

## Marsanes affinity H13-3

Compare each Marsanes performance-bearing row to:
A. ritual/theurgic rows;
B. PEDAGOGICAL_PROSODIC_CONTROL rows.

Use nearest-neighbor Jaccard distance on PERFORMANCE features only.

Statistic:
Delta = mean(distance_to_control) - mean(distance_to_ritual).

Positive Delta favors ritual affinity.

Permutation:
shuffle ritual/control group labels among comparator rows, 10,000 permutations.

## Missingness

Unspecified is NOT equivalent to absent where the source is fragmentary.

Codes:
0 = explicitly not present / not prescribed in a sufficiently preserved unit
1 = present
NA = indeterminate due to lacuna, translation uncertainty, or unavailable detail

Primary models use pairwise available features.
Sensitivity analysis recodes NA->0 to test robustness.

## Pilot rule

The first pilot dataset is for pipeline debugging only.

No hypothesis may be declared supported or falsified from the pilot unless:
- target n >= 120 has been reached,
- prespecified sampling rule is complete,
- primary text-level permutation is run.

Pilot can identify:
- coding problems,
- source-identity leakage,
- unstable labels,
- impossible success criteria,
- need for additional controls.
