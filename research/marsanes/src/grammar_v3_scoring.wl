(* Grammar v3 holdout scoring — frozen before opening Three Steles of Seth *)

Clear[PrimaryChainQ, GrammarV3Decision];

PrimaryChainQ[nStates_Integer, nDirectedLinks_Integer, hasExplicitRelationVerb_, hasFunctionalEndpoint_, lineSpan_Integer] :=
  nStates >= 3 && nDirectedLinks >= 2 && TrueQ[hasExplicitRelationVerb] &&
  TrueQ[hasFunctionalEndpoint] && lineSpan <= 20;

GrammarV3Decision[nPrimary_Integer, nSecondary_Integer, sacredLanguagePrimary_Integer, newOperatorRequired_] :=
 Which[
   TrueQ[newOperatorRequired], "FAIL_MODEL",
   nPrimary >= 2 && sacredLanguagePrimary >= 1, "STRONG_SUPPORT",
   nPrimary == 1 || nSecondary >= 2, "PARTIAL_SUPPORT",
   True, "NO_SUPPORT"
 ];

(* Anti-numerology:
   explicit number words are excluded from primary chain qualification.
*)
