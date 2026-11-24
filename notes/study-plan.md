# Analytics Engineer Study Plan (Nov 2026 – May 2027)

Source of truth: the Claude doc version of this plan. This file is the repo copy so Claude Code can read it and tick items off.

## Summary

By late May 2027: a public dbt + Databricks portfolio repo with green CI, the dbt Analytics Engineering Certification, and interview-ready SQL and data-modeling skills. 24 study weeks plus a setup week and two buffer weeks, at about 7 hours a week.

Skipped because already known: dbt Fundamentals, intro SQL, intro Python. Gaps being closed: dimensional modeling on paper, Git/PR/CI workflow, testing depth, production dbt patterns, and a credential.

Design rules:

- One project (this repo), built all the way through. Every milestone adds a layer.
- Learn on weekdays, build on weekends. Saturday ships something.
- Every week, carry one concept into lululemon dbt work (Guest Health, agent data) as promotion evidence.
- Two buffer weeks (holidays; spring trip or MSAI deadlines). Slide them, don't skip them.
- Exam is a fixed deadline: book it at the start of M5.

## Roadmap

| Milestone | Dates | Focus |
| --- | --- | --- |
| M0 Setup | Nov 23 – Nov 29 | Dev loop working |
| M1 dbt depth | Nov 30 – Dec 27 | Macros, packages, materializations, testing |
| Buffer | Dec 28 – Jan 3 | Holidays / MSAI |
| M2 Dimensional modeling | Jan 4 – Jan 31 | Kimball star schema, ERD |
| M3 Engineering workflow | Feb 1 – Feb 28 | Git, PRs, SQLFluff, CI, unit tests |
| M4 Production patterns | Mar 1 – Mar 28 | Incremental, snapshots, metrics, orchestration, BI |
| M5 Certification | Mar 29 – Apr 25 | Exam on **Apr 24, 2027** |
| Buffer (floating) | Anywhere | Spring trip / MSAI |
| M6 Interview readiness | Apr 26 – May 23 | Resume, SQL drills, modeling interviews, applications |

## Weekly rhythm (7 h)

| Day | Time | Mode | What |
| --- | --- | --- | --- |
| Mon | 1 h | Learn | Course or reading, notes in `/notes` |
| Tue | 1 h | Learn + try | Finish lesson, reproduce it in this project |
| Wed | 1 h | Build | One model, one test, or one macro |
| Thu | 1 h | Build | Finish Wednesday's task, open a PR |
| Fri | off | Rest | Optional: 10 min flashcards or one SQL problem |
| Sat | 2 h | Deep build | The week's deliverable |
| Sun | 1 h | Review + ship | Merge, update README, log the week, plan next week |

**Minimum viable day (20 min):** one lesson, one test, one SQL problem, or three lines in the log. Never miss twice in a row.

**Sunday log template** (`notes/logs.md`):

```
## Week N (date)
- Shipped this week:
- Learned (one sentence):
- Applied at work:
- Stuck on:
- Next week's one deliverable:
```

## Motivation system

- Commit on every study day (GitHub graph = streak).
- Every Sunday ends with something merged.
- One LinkedIn post per milestone (6 total).
- $200 exam booked for Apr 24 as the commitment device.
- Weekly "applied at work" note → promotion evidence.
- dbt Community Slack + DataTalks.Club Slack; post the repo for feedback after M3 and M4.
- A reward per milestone, claimed only when exit criteria are met.
- Monthly check-in with Claude (last Sunday of the month).

---

## M0 · Setup (Week 0, Nov 23–29)

Goal: `dbt build` runs from the laptop against Databricks and is committed to GitHub.

| Day | Task |
| --- | --- |
| Mon | Read the [dbt AE exam study guide (v1.11)](https://www.getdbt.com/dbt-assets/certifications/dbt-certificate-study-guide-version-1-11); mark topics green/yellow/red |
| Tue | Databricks Free Edition workspace; load NYC TLC yellow + green Parquet (a few months) and zone lookup |
| Wed–Thu | Create repo; install dbt Core + `dbt-databricks` + dbt Power User; `dbt debug` green |
| Sat | Folder structure per dbt's project-structure guide; first source + staging model |
| Sun | `notes/logs.md`, pick 6 rewards, join both Slacks |

**Week 0 checklist**

- [x] Read the study guide and marked each topic green, yellow or red
- [x] Databricks Free Edition workspace created
- [x] NYC TLC trip data and zone lookup loaded
- [x] Repo created; dbt Core and `dbt-databricks` installed
- [x] `dbt debug` passes
- [x] Folder structure, first source and first staging model committed
- [ ] Log file started, rewards picked, both Slacks joined

**Exit:** - [x] `dbt build` succeeds and the first commit is on GitHub

Reward: ____

## M1 · dbt depth (Weeks 1–4, Nov 30 – Dec 27)

Goal: move from using dbt to engineering with it.

| Week | Learn (Mon–Tue) | Build (Wed–Sat) |
| --- | --- | --- |
| 1 · Nov 30 | dbt Learn: *Jinja, Macros, and Packages* | Staging for yellow, green, zones; install `dbt_utils` + `dbt_expectations`; one custom macro |
| 2 · Dec 7 | dbt Learn: *Advanced Materializations*, *Analyses and Seeds* | Seeds for payment type + rate code; int model unioning yellow + green; note materialization choices |
| 3 · Dec 14 | dbt Learn: *Advanced Testing* (~4 h) | Generic, singular, one custom generic test; severity/warn configs; source freshness |
| 4 · Dec 21 | DataCamp: *Intermediate dbt* (2 h) | Light week: dbt docs, tidy README, M1 post |

**Week 1 checklist (Nov 30 – Dec 6)**

- [ ] Finished dbt Learn: Jinja, Macros, and Packages
- [ ] Staging models built for yellow, green and zones
- [ ] `dbt_utils` and `dbt_expectations` installed
- [ ] One custom macro merged through a PR
- [ ] Sunday log written

**Week 2 checklist (Dec 7–13)**

- [ ] Finished dbt Learn: Advanced Materializations
- [ ] Finished dbt Learn: Analyses and Seeds
- [ ] Payment type and rate code seeds added
- [ ] Intermediate model unioning yellow and green trips
- [ ] Materialization choices noted in the README
- [ ] Sunday log written

**Week 3 checklist (Dec 14–20)**

- [ ] Finished dbt Learn: Advanced Testing
- [ ] Generic and singular tests added
- [ ] One custom generic test written
- [ ] Severity and warn configs set
- [ ] Source freshness configured
- [ ] Sunday log written

**Week 4 checklist (Dec 21–27)**

- [ ] Finished DataCamp: Intermediate dbt
- [ ] dbt docs generated
- [ ] README tidied
- [ ] M1 LinkedIn post published
- [ ] At work: a test or freshness check added to Guest Health
- [ ] Sunday log written

**Exit:** - [ ] Staging and intermediate layers, 15+ tests, 1 custom macro, 1 custom generic test, docs generated

Reward: ____

**Buffer week (Dec 28 – Jan 3):** rest, catch up, or MSAI application.

## M2 · Dimensional modeling (Weeks 5–8, Jan 4 – Jan 31)

Goal: Kimball star schema with declared grain and an ERD.

| Week | Learn (Mon–Tue) | Build (Wed–Sat) |
| --- | --- | --- |
| 5 · Jan 4 | Kimball, *The Data Warehouse Toolkit* (3rd ed.), ch. 1–2 | Bus matrix in README (processes × conformed dimensions) |
| 6 · Jan 11 | Kimball ch. 3 (grain, facts, date dimension) | `dim_date`, `dim_zone`, `dim_vendor`, `dim_payment_type` |
| 7 · Jan 18 | DE Zoomcamp Module 4 (self-paced); compare to your model | `fct_trips` at declared grain, surrogate keys, relationship tests |
| 8 · Jan 25 | Reread dbt project-structure guide (marts) | Daily revenue by zone mart, ERD (dbdiagram.io) in README, M2 post |

**Week 5 checklist (Jan 4–10)**

- [ ] Read Kimball ch. 1–2
- [ ] Bus matrix added to the README
- [ ] Sunday log written

**Week 6 checklist (Jan 11–17)**

- [ ] Read Kimball ch. 3
- [ ] `dim_date` built
- [ ] `dim_zone` built
- [ ] `dim_vendor` built
- [ ] `dim_payment_type` built
- [ ] Sunday log written

**Week 7 checklist (Jan 18–24)**

- [ ] Watched DE Zoomcamp Module 4 and compared it with your model
- [ ] `fct_trips` built with its grain stated in the YAML description
- [ ] Surrogate keys generated
- [ ] Relationship tests from fact to every dimension
- [ ] Sunday log written

**Week 8 checklist (Jan 25–31)**

- [ ] Reread dbt's project-structure guide (marts)
- [ ] Daily revenue by zone mart built
- [ ] ERD added to the README
- [ ] M2 LinkedIn post published
- [ ] At work: one-page model spec for guest data enrichment drafted
- [ ] Sunday log written

**Exit:** - [ ] Star schema built, grain stated for every fact, ERD and bus matrix in the README

Reward: ____

## M3 · Engineering workflow (Weeks 9–12, Feb 1 – Feb 28)

Goal: work like a software team — branches, PRs, linting, CI, unit tests.

| Week | Learn (Mon–Tue) | Build (Wed–Sat) |
| --- | --- | --- |
| 9 · Feb 1 | [Learn Git Branching](https://learngitbranching.js.org/): main + remote | Branch protection on `main`, PR template, all changes via PR |
| 10 · Feb 8 | SQLFluff (dbt templater) + pre-commit | `.sqlfluff`, pre-commit hooks, lint fixes |
| 11 · Feb 15 | dbt Learn: *Advanced Deployment* (~4 h) | GitHub Actions Slim CI (`state:modified+` + `--defer`) in a CI schema |
| 12 · Feb 22 | dbt docs: unit tests, contracts, versions, access | 3 unit tests, contract on `fct_trips`, docs on GitHub Pages, M3 post + Slack feedback |

**Week 9 checklist (Feb 1–7)**

- [ ] Finished Learn Git Branching (main and remote levels)
- [ ] Branch protection on `main` turned on
- [ ] PR template added
- [ ] Sunday log written

**Week 10 checklist (Feb 8–14)**

- [ ] Read SQLFluff (dbt templater) and pre-commit docs
- [ ] `.sqlfluff` config committed
- [ ] Pre-commit hooks running locally
- [ ] Whole project passes lint
- [ ] Sunday log written

**Week 11 checklist (Feb 15–21)**

- [ ] Finished dbt Learn: Advanced Deployment
- [ ] GitHub Actions Slim CI workflow written
- [ ] CI schema and repo secrets set up
- [ ] First PR with green CI merged
- [ ] Sunday log written

**Week 12 checklist (Feb 22–28)**

- [ ] Read dbt docs on unit tests, contracts, versions and access
- [ ] 3 unit tests added
- [ ] Contract enforced on `fct_trips`
- [ ] dbt docs published to GitHub Pages
- [ ] M3 LinkedIn post published and feedback requested in dbt Slack
- [ ] At work: PR template or SQLFluff proposed to the team
- [ ] Sunday log written

**Exit:** - [ ] CI runs green on a PR, lint is enforced, and the docs site is live

Reward: ____

## M4 · Production patterns (Weeks 13–16, Mar 1 – Mar 28)

Goal: feature-complete project — incremental loads, history, metrics, orchestration, BI layer.

| Week | Learn (Mon–Tue) | Build (Wed–Sat) |
| --- | --- | --- |
| 13 · Mar 1 | dbt docs: incremental models, microbatch | `fct_trips` → incremental → microbatch by pickup date; try `--empty`, `--sample` |
| 14 · Mar 8 | dbt docs: snapshots, `dbt clone` | Snapshot → SCD2 dimension; `dbt clone` in CI |
| 15 · Mar 15 | dbt Learn: *Semantic Layer* (~2.5 h) | Semantic models, 3 metrics, exposures; Power BI report on the mart |
| 16 · Mar 22 | Databricks docs: dbt tasks in Jobs/Workflows | Scheduled daily `dbt build`, architecture diagram in README, M4 post |

**Week 13 checklist (Mar 1–7)**

- [ ] Read dbt docs on incremental models and microbatch
- [ ] `fct_trips` converted to incremental
- [ ] `fct_trips` converted to microbatch by pickup date
- [ ] Tried `--empty` and `--sample`
- [ ] Sunday log written

**Week 14 checklist (Mar 8–14)**

- [ ] Read dbt docs on snapshots and `dbt clone`
- [ ] Snapshot built, feeding an SCD2 dimension
- [ ] `dbt clone` used in CI
- [ ] Sunday log written

**Week 15 checklist (Mar 15–21)**

- [ ] Finished dbt Learn: Semantic Layer
- [ ] Semantic models defined
- [ ] 3 metrics defined (trips, revenue, average fare)
- [ ] Exposures added
- [ ] Power BI report built on the mart
- [ ] Sunday log written

**Week 16 checklist (Mar 22–28)**

- [ ] Read Databricks docs on dbt tasks in Jobs/Workflows
- [ ] Daily scheduled `dbt build` job running
- [ ] Architecture diagram added to the README
- [ ] M4 LinkedIn post published and repo shared in dbt Slack
- [ ] Sunday log written

**Exit:** - [ ] Incremental model, snapshot, metrics, scheduled job and BI report all in the repo

Reward: ____

## M5 · Certification (Weeks 17–20, Mar 29 – Apr 25)

Goal: pass the dbt AE Certification (v1.11): 65 questions, 2 h, 65% to pass, $200. Book on Mar 29 for **Apr 24, 2027**.

| Week | Learn (Mon–Thu) | Saturday |
| --- | --- | --- |
| 17 · Mar 29 | Study guide domain by domain; docs for red topics (node selection + state, behavior flags, YAML constraints, model governance) | Flashcards for every red topic |
| 18 · Apr 5 | Close gaps from test 1 | Timed practice test 1 (Udemy, v1.11); review wrong answers Sunday |
| 19 · Apr 12 | Git (fetch vs pull, merge vs rebase), gaps from test 2 | Timed practice test 2; aim 80%+ |
| 20 · Apr 19 | Practice test 3 Monday, then light review | Sit the exam |

**Week 17 checklist (Mar 29 – Apr 4)**

- [ ] Exam booked for Apr 24
- [ ] Worked through every study guide domain
- [ ] Docs read for each red topic
- [ ] Flashcards written for each red topic
- [ ] Sunday log written

**Week 18 checklist (Apr 5–11)**

- [ ] Timed practice test 1 taken (score: ____)
- [ ] Every wrong answer reviewed
- [ ] Gaps from test 1 closed
- [ ] Sunday log written

**Week 19 checklist (Apr 12–18)**

- [ ] Git topics reviewed (fetch vs pull, merge vs rebase)
- [ ] Timed practice test 2 taken (score: ____)
- [ ] Scored 80% or higher
- [ ] Sunday log written

**Week 20 checklist (Apr 19–25)**

- [ ] Practice test 3 taken (score: ____)
- [ ] Light review only, no new material
- [ ] Exam taken

**Exit:** - [ ] Certified, and the badge is on LinkedIn

Reward: ____

**Buffer week (floating):** spring trip or MSAI deadline; push M6 back a week.

## M6 · Interview readiness (Weeks 21–24, Apr 26 – May 23)

Goal: turn the work into offers, or a promotion case.

| Week | Learn (Mon–Thu) | Build / Saturday |
| --- | --- | --- |
| 21 · Apr 26 | Update resume + LinkedIn with cert and project | Project case study as a LinkedIn article |
| 22 · May 3 | One SQL problem a day ([DataLemur](https://datalemur.com/) / LeetCode SQL 50) | Timed set of 5 |
| 23 · May 10 | Design e-commerce orders, membership program, ride-share schemas; explain grain, SCDs, trade-offs aloud | Mock AE interview with Claude |
| 24 · May 17 | STAR stories: Membership AI agent, Guest Health dbt refactor, GI-Joe global adoption | Apply to 3–5 AE roles; M6 post |

**Week 21 checklist (Apr 26 – May 2)**

- [ ] Resume updated with the cert and project
- [ ] LinkedIn updated with the cert and project
- [ ] Case study article published
- [ ] Sunday log written

**Week 22 checklist (May 3–9)**

- [ ] One SQL problem solved each weekday (Mon–Thu)
- [ ] Timed set of 5 problems done on Saturday
- [ ] Sunday log written

**Week 23 checklist (May 10–16)**

- [ ] E-commerce orders schema designed and explained out loud
- [ ] Membership program schema designed and explained out loud
- [ ] Ride-share schema designed and explained out loud
- [ ] Mock AE interview done with Claude
- [ ] Sunday log written

**Week 24 checklist (May 17–23)**

- [ ] STAR story: Membership AI agent
- [ ] STAR story: Guest Health dbt refactor
- [ ] STAR story: GI-Joe global adoption
- [ ] 3–5 AE applications sent
- [ ] M6 LinkedIn post published
- [ ] Sunday log written

**Exit:** - [ ] Cert and repo on resume, 3 STAR stories ready, applications out

Reward: ____

**After May:** 2–3 h/week for SQL practice and repo upkeep; then Databricks Data Engineer Associate or the AI engineering path.

---

## Resource library

| Resource | Where | Cost | Used in |
| --- | --- | --- | --- |
| [dbt AE Certification Exam (v1.11)](https://www.getdbt.com/certifications/analytics-engineer-certification-exam-version-1-11) | dbt Labs | $200 | M5 |
| [Official exam study guide](https://www.getdbt.com/dbt-assets/certifications/dbt-certificate-study-guide-version-1-11) | dbt Labs | Free | M0, M5 |
| dbt Learn: Jinja/Macros/Packages, Advanced Materializations, Analyses and Seeds, [Advanced Testing, Advanced Deployment, Semantic Layer](https://courses.getdbt.com/enroll/2337057?et=free) | learn.getdbt.com | Free | M1, M3, M4 |
| [Intermediate dbt](https://www.datacamp.com/courses/intermediate-dbt) | DataCamp | Subscription | M1 |
| *The Data Warehouse Toolkit*, 3rd ed. (Kimball & Ross), ch. 1–3 | Book | ~$50 or library | M2 |
| [DE Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp), Module 4 | GitHub + YouTube | Free | M2 |
| [Learn Git Branching](https://learngitbranching.js.org/) | Web | Free | M3 |
| dbt docs: best practices, incremental/microbatch, snapshots, unit tests, contracts | docs.getdbt.com | Free | M2–M5 |
| SQLFluff and pre-commit docs | Web | Free | M3 |
| [dbt AE practice tests (v1.11)](https://www.udemy.com/course/dbt-analytics-engineering-certification-practice-tests/) | Udemy | Paid | M5 |
| [DataLemur](https://datalemur.com/), LeetCode SQL 50 | Web | Free tiers | M6 |
| dbt Community Slack, DataTalks.Club Slack | Slack | Free | Throughout |

Optional reading: *Analytics Engineering with SQL and dbt* (O'Reilly), *Fundamentals of Data Engineering* (Reis & Housley).
