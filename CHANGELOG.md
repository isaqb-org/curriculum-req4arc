# Release Notes

## New in 2026.1


## Change Report for Trainers — 2026.1 vs. previous release

> Scope: content changes only. Typos, formatting, link repairs and toolchain are excluded (see note at the end).

### 1. At a glance
- **One genuinely new chapter of teaching content: *AI in RE*** (LG 7-1…7-3). 
- **Curriculum was therefore slightly reordered.** "Cooperation between Roles" (formerly the last topic, "REQ-ARCH development process") moves to the **front, as chapter 2**; everything between shifts down by one, and the example becomes chapter 10.
- **No teaching content was removed.** Apart from AI in RE, every other chapter is substantively unchanged — only its number and LG ids changed.
- **Timings were rebalanced** (total stays 18 h / 1080 min).
- **A full German (DE) translation was added** — the module is now published in EN *and* DE.
- **A handful of learning goals gained new, named techniques**: a new LG on identifying/resolving conflicting requirements, plus Impact Mapping, Personas/User-Journey-Maps, and Prototypes/Mockups (see §6).


### 2. Relevant Changes in Detail

**Chapter 2 — Cooperation between Roles** *(not new material)*
This is the former chapter 7 ("REQ-ARCH development process") content, retitled and moved to the front. 
Learning goals (now LG 2-1…2-4: cooperation between roles, cooperative approaches, requirements documentation, traceability) and terms (Design Thinking, Lean Startup, Design Sprints, Twin Peaks Model, Three Amigo Sessions, Discover-to-Deliver) are **unchanged in substance**. 
Only its position and timing changed. 


**Chapter 7 — AI in RE** *(genuinely new — prepare this)*
- **LG 7-1** — Potential and limitations of LLMs in RE (strengths for text work; hallucinations / missing domain & tacit knowledge; RE remains stakeholder communication; human-in-the-loop responsibility).
- **LG 7-2** — Use cases for LLMs in RE (supporting elicitation; analysing requirements for ambiguities/gaps/contradictions and against INVEST/testability; drafting stories, use cases, quality scenarios, Gherkin; summarising and glossary/terminology checks).
- **LG 7-3** — Checking and critically assessing AI results (systematic verification; risks — hallucination, bias, false precision; confidentiality / data protection / IP; need for explicit context).

>Note: As technical progress in this area is very fast, trainers are advised to review and update their training material for this new chapter regularly.

### 3. Timing changes (Essentials table)

| Chapter | Teaching (min) | Exercises (min) |
|--------|:---:|:---:|
| Cooperation between Roles | 75 → **45** | 0 → **60** |
| Clean Start | 90 → **75** | 90 → **75** |
| Handling Quality Requirements | 120 → **90** | 90 (same) |
| AI in RE | **60** (new) | 0 (new) |
| Tools for RE | 60 → **45** | 0 (same) |
| Example | 75 → **60** | 0 (same) |
| **Totals** | 750 → **705** | 330 → **375** |

Unchanged: Introduction (45/0), Functional Requirements (180/120), BDD (60/0), Prioritization (45/30). **Grand total stays 1080 min (18 h).** Net effect: teaching time was trimmed across several chapters to fund the new AI in RE chapter and to add a 60-min exercise slot to Cooperation between Roles.

### 4. References & glossary
- **Reference updated:** Hruschka, *Business Analysis und Requirements Engineering* — **3rd ed. 2023 → 4th ed. 2026** (`[Hruschka-23]` → `[Hruschka-26]`). Affects the citation in the "Refining functional requirements" goal.
- **Glossary:** the English glossary is unchanged; a **full German glossary was added**.

### 5. German translation 

The REQ4ARC curriculum is now available in an official DE translation, formerly it was EN only.

### 6. Additional learning-goal updates

Smaller content additions:

- **New learning goal LZ/LG-8-4 — Identifying and resolving conflicting requirements.** Covers techniques for conflict resolution (prioritization, trade-off/utility analysis, escalation, direct negotiation) and ties resolution effort to architecturally significant requirements. LZ/LG-3-5 was sharpened accordingly, cross-referencing the new goal.
- **Personas and User-Journey-Maps** are now a named technique in LZ/LG-3-4 (stakeholder elicitation artifacts), citing Cooper and Kalbach.
- **Prototypes and Mockups** are now a named elicitation/validation technique in LZ/LG-4-11, citing Snyder. Previously only name-checked in the chapter's intro prose.
- **Impact Mapping** added as a technique in LZ/LG-3-2 (breaking down business goals into actors, impacts and deliverables) and LZ/LG-8-1 (valuing requirements against business goals), citing Adzic, with the two goals cross-referenced.

