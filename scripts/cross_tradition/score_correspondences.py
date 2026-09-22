#!/usr/bin/env python3
"""Rank cross-tradition correspondences by the current information-gain heuristic."""

from __future__ import annotations

import csv
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "data" / "cross_tradition" / "correspondence_scores.csv"
OUTPUT = ROOT / "data" / "cross_tradition" / "correspondence_scores_ranked.csv"

WEIGHTS = {
    "new_predictions": 0.25,
    "independent_corroboration": 0.20,
    "structural_compression": 0.18,
    "resistance_to_controls": 0.17,
    "historical_plausibility": 0.10,
    "reconstruction_power": 0.10
}


def score(row: dict[str, str]) -> float:
    return sum(float(row[key]) * weight for key, weight in WEIGHTS.items())


def main() -> None:
    with SOURCE.open(newline="", encoding="utf-8") as handle:
        rows = list(csv.DictReader(handle))

    for row in rows:
        row["information_gain_score"] = f"{score(row):.2f}"

    rows.sort(key=lambda item: float(row["information_gain_score"]), reverse=True)

    fieldnames = ["rank", *rows[0].keys()]
    with OUTPUT.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        for index, row in enumerate(rows, start=1):
            writer.writerow({"rank": index, **row})

    for index, row in enumerate(rows, start=1):
        print(f"{index:02d}. {row['id']} {row['information_gain_score']} {row['short_name']}")


if __name__ == "__main__":
    main()
