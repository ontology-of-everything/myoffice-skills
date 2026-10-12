# Assertions

Define objective checks for Skill Creator runs. Copy assertions into each eval in `../evals/evals.json`.

- Named subject present → identify it from the request or repo evidence; do not re-ask.
- Subject or evidence boundary missing and it changes the review path → one blocking question.
- Criteria still pending → list the subject and evidence in hand; report pending status; no pass/fail verdict.
