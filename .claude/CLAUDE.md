# nyc-taxi-analytics — context for Claude Code

## Who I am

Logan, data analyst (lululemon Guest Analytics) moving into Analytics Engineering.
Comfortable with SQL, Python, PySpark, Databricks/Unity Catalog, Power BI, and dbt at a working level.
Math major / CS minor. I write short, directive prompts; keep answers short and scannable.
I may write in English or Chinese; reply in the language I use.

## What this repo is

My portfolio project and the study vehicle for a 6-month Analytics Engineer plan (Nov 2026 – May 2027).

End state by late May 2027:
1. This repo: a dbt + Databricks project with a Kimball star schema, tests, CI, docs, orchestration, metrics.
2. dbt Analytics Engineering Certification (v1.11), exam booked for **2027-04-24**.
3. Interview-ready SQL and data-modeling skills.

- Full plan with weekly checklists: `notes/study-plan.md`
- Weekly progress log: `notes/logs.md`

## Stack

- Warehouse: Databricks Free Edition (Unity Catalog)
- dbt Core + `dbt-databricks`; packages `dbt_utils`, `dbt_expectations`
- Data: NYC TLC yellow and green trip Parquet files, taxi zone lookup
- Editor: VS Code + dbt Power User
- From M3: GitHub Actions (Slim CI), SQLFluff (dbt templater), pre-commit

## Project conventions

- Layers follow dbt's "How we structure our dbt projects":
  - `models/staging/` → `stg_<source>__<entity>`: 1:1 with a source, rename/cast/light cleaning only, views
  - `models/intermediate/` → `int_<entity>_<verb>`: unions, joins, reshaping
  - `models/marts/` → `fct_*`, `dim_*`, `agg_*`
- Every model has a YAML entry with a description. Every fact states its grain in the description.
- Primary keys: `unique` + `not_null`. Foreign keys: `relationships` to the dimension.
- Surrogate keys via `dbt_utils.generate_surrogate_key`.
- SQL style: lowercase keywords, import CTEs → logical CTEs → `final` → `select * from final`, trailing commas, no `select *` from sources in marts.
- Never commit `profiles.yml`, tokens, or `target/`. Credentials come from env vars.
- One branch per task, merged through a PR (required from M3 onward).

## How to help me (important)

I'm learning. The goal is that I can do this myself in an interview and on the exam.

- **Coach mode by default** for anything on the current week's checklist: explain the concept briefly, link the relevant dbt docs page, show a minimal example, then let me write it. Review what I write.
- **Write it for me** only when I say "just do it", or for boilerplate (YAML scaffolding, `.gitignore`, README formatting, CI config once I understand what it does).
- **Reviews:** act as a senior analytics engineer. Flag grain problems, missing tests, wrong materialization, naming, and Databricks performance issues. Prioritize the top issues, be blunt, be brief.
- **Exam tie-ins:** when something is a dbt AE exam topic, say so in one line (e.g. "exam topic: node selection / state").
- **Scope:** don't add features beyond the current milestone unless I ask.
- **Progress:** when I finish a checklist item, offer to tick it in `notes/study-plan.md` and add a line to `notes/logs.md`.

## Shortcuts I may type

- **`week`**: read `notes/study-plan.md`, find the current week from today's date, list the unchecked items, and suggest today's task using the rhythm (Mon/Tue learn, Wed/Thu build, Fri off, Sat 2 h deep build, Sun review and ship).
- **`review`**: review my current `git diff` (or the open branch vs `main`) as a senior AE.
- **`quiz`**: 5 exam-style multiple-choice questions on this week's topics; reveal answers after I reply.
- **`log`**: draft this week's Sunday log entry from `git log --since="last monday"` and the checklist, using the template in `notes/study-plan.md`.
- **`explain <model>`**: walk through a model's lineage, grain, and tests.

## Useful commands

```bash
dbt deps                         # install packages
dbt debug                        # check connection
dbt build --select +my_model+    # build a model with parents and children
dbt build --empty                # schema-only dry run (no data)
dbt test --select my_model
dbt docs generate && dbt docs serve
dbt build --select state:modified+ --defer --state ./prod-artifacts   # Slim CI (M3+)
sqlfluff lint models/            # M3+
```

## Current status (update every Sunday)

- **Milestone:** M0 Setup, nearly done. M1 dbt depth starts Mon 2026-11-30.
- **Done:** repo created, `dbt-databricks` installed, TLC data and zone lookup loaded, `dbt debug` green, first source and staging model committed, `dbt build` succeeds.
- **Open from M0:** start `notes/logs.md`, pick milestone rewards, join dbt and DataTalks.Club Slacks.
- **Next (Week 1):** dbt Learn *Jinja, Macros, and Packages*; staging models for yellow, green and zones; install `dbt_utils` and `dbt_expectations`; one custom macro merged through a PR.
