(* Marsanes Benchmark v1 — analysis scaffold
   No manuscript data are embedded here. Populate only from source-audited CSV. *)

ClearAll[ShannonBits, ConditionalEntropyFromClasses, UniformMergerControl];

ShannonBits[probs_List] := -Total[Select[probs, # > 0 &] Log2[Select[probs, # > 0 &]]];

(* For deterministic mapping G -> P under uniform grapheme prior,
   H(G|P) is the weighted log2 size of each merger class. *)
ConditionalEntropyFromClasses[classSizes_List] := Module[
  {n = Total[classSizes]},
  Total[(#/n) Log2[#] & /@ classSizes]
];

UniformMergerControl[] := Module[
  {classes = {1, 1, 2, 2, 1}, hG, hCond, mi},
  hG = Log2[Total[classes]];
  hCond = ConditionalEntropyFromClasses[classes];
  mi = hG - hCond;
  <|"H(G)" -> hG, "H(G|P)" -> hCond, "I(G;P)" -> mi|>
];

(* Expected exact control:
   H(G|P) = 4/7
   I(G;P) = Log2[7] - 4/7
*)

(* Planned ablations:
   grapheme_identity, order, repetition, grouping, consonantal_frame,
   vowel_quality, quantity, diphthong_realization.
   Implement only after benchmark rows and feature encodings are frozen. *)
