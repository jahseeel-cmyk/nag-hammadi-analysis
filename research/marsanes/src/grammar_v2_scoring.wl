(* Grammar v2 preregistration utilities.
   DO NOT populate with Trimorphic data before opening the holdout. *)

Clear[ExactMatchCount, PermutationNullP, GrammarV2Decision];

ExactMatchCount[repeatCounts_List, anchorCounts_List] /; Length[repeatCounts] == Length[anchorCounts] :=
 Count[MapThread[SameQ, {repeatCounts, anchorCounts}], True];

PermutationNullP[repeatCounts_List, anchorCounts_List] /; Length[repeatCounts] == Length[anchorCounts] :=
 Module[{obs, perms, dist},
   obs = ExactMatchCount[repeatCounts, anchorCounts];
   perms = DeleteDuplicates[Permutations[anchorCounts]];
   dist = ExactMatchCount[repeatCounts, #] & /@ perms;
   N[Count[dist, x_ /; x >= obs]/Length[dist], 12]
 ];

GrammarV2Decision[nUnits_Integer, nExactPrimaryMatches_Integer, newStructuralOperators_Integer] :=
 Which[
   nUnits < 2, "INSUFFICIENT_DATA",
   newStructuralOperators > 0, "FAIL_FROZEN_GRAMMAR",
   nExactPrimaryMatches >= 2, "STRONG_DIRECTIONAL_SUPPORT",
   nExactPrimaryMatches == 1, "PARTIAL_SUPPORT",
   True, "NO_SUPPORT_FOR_COUNT_PARAMETER"
 ];

(* p-values are permitted only when nUnits >= 4. *)
