# Lektorats-Bericht: Deutsche Übersetzung req4arc

**Geprüfter Umfang:** Glossar (`42-glossary`) sowie die `01-duration-terms`- und `02-learning-goals`-Dateien der Kapitel 1–9.
**Noch nicht geprüft:** `00a-preamble/*`, `00b-basics/*`, alle `00-structure.adoc`, `10-Example`.

**Gesamteindruck:** Die Übersetzung ist überwiegend sehr ordentlich und an vielen Stellen idiomatisch (z. B. Kapitel 7 „KI im RE" und die meisten Einleitungstexte lesen sich wie originär verfasst; gute Fachtreffer wie _Scheingenauigkeit_, _Architekturtreiber_, _erheben/Erhebung_). Die Befunde betreffen daher weniger grobe Fehler als (a) eine **uneinheitliche Schreibweise „Behavior/Behaviour"**, (b) ein paar **Übersetzungs-Restspuren** im Glossar und (c) eine **verlorene Querverweis-Mechanik** in Kapitel 7.

## Teil 1 — Überblickstabelle

| Datei | Befunde gesamt | FEHLER | TERMINOLOGIE | STIL |
|-------|----------------|--------|--------------|------|
| `42-glossary/00-glossary.adoc` | 5 | 1 | 2 | 2 |
| `06-Behavior-Driven-Development/01-duration-terms.adoc` | 1 | 1 | – | – |
| `06-Behavior-Driven-Development/02-learning-goals.adoc` | 3 | 1 | – | 2 |
| `07-AI-in-RE/02-learning-goals.adoc` | 1 | 1 | – | – |
| `05-Quality-Requirements/02-learning-goals.adoc` | 1 | – | – | 1 |
| übrige geprüfte Dateien | 0 | – | – | – |

> Die „Behavior/Behaviour"-Inkonsistenz wird einmal als FEHLER (Kap. 6) gezählt, betrifft aber dateiübergreifend auch das Glossar — siehe Teil 3.

## Teil 2 — Detailbefunde

```
#### docs/06-Behavior-Driven-Development/01-duration-terms.adoc — Einleitung & LZ-6-1/6-2
- Kategorie: TERMINOLOGIE
- Schweregrad: FEHLER
- aktueller Text: "Behavior Driven Development (ursprünglich vorgeschlagen von <<north>>) …"
  und im selben Abschnitt: "Behaviour Driven Development (oder BDD) ist somit …"
  sowie Begriffsliste: "Behaviour Driven Development (BDD)"
- EN-Quelle (zur Kontrolle): "Behavior Driven Development (originally suggested …)" / "Behaviour Driven Development (or BDD) …"
- Befund: Innerhalb derselben Datei – und über Kapitel 6 und das Glossar hinweg – wird zwischen
  amerikanischer ("Behavior") und britischer ("Behaviour") Schreibweise gewechselt, zusätzlich
  uneinheitlich mit/ohne Bindestrich ("Behavior Driven" vs. "Behavior-Driven"). Das fällt
  Leser:innen sofort auf und wirkt unlektoriert. (Anmerkung: derselbe Mischfehler steht bereits im EN-Quelltext.)
- Vorschlag: Durchgängig EINE Schreibweise wählen. Empfehlung in Anlehnung ans Glossar:
  "Behavior Driven Development (BDD)" – also überall "Behavior" und ohne Bindestrich.
- Begründung/Beleg: Glossar-Eintrag "BDD:: (_Behavior Driven Development_)".
```

```
#### docs/06-Behavior-Driven-Development/02-learning-goals.adoc — LZ-6-2
- Kategorie: ANREDE/GENDERN
- Schweregrad: STIL
- aktueller Text: "In einer TAS arbeiten die drei Rollen „Product Owner" (oder Business Analyst),
  „Entwickler:in" und „Tester:in" gemeinsam …"
- EN-Quelle: "the three roles "product owner" (or business analyse), "developer" and "tester""
- Befund: Inkonsistente Behandlung der Rollen: zwei englische Titel ungegendert
  (Product Owner, Business Analyst), zwei deutsche Begriffe gegendert (Entwickler:in, Tester:in).
  (Nebenbei im EN ein Tippfehler: "business analyse".)
- Vorschlag: Einheitlich behandeln, z. B. alle als neutrale Rollennamen:
  "… die drei Rollen „Product Owner" (oder „Business Analyst"), „Entwickler:in" und „Tester:in" …"
  bleibt vertretbar – dann aber bewusst dokumentieren, dass englische Jobtitel nicht gegendert werden.
- Begründung/Beleg: Stilkonsistenz; Gender-Doppelpunkt ist Hausstil (vgl. "Architekt:innen").
```

```
#### docs/06-Behavior-Driven-Development/02-learning-goals.adoc — LZ-6-2
- Kategorie: NATÜRLICHKEIT
- Schweregrad: STIL
- aktueller Text: "Wissen, dass BDD Benutzeranforderungen in Features beschreibt, Features in
  Stories herunterbricht und die Stories in (ausführbare) Beispiele"
- EN-Quelle: "… breaks features down into stories and the stories into (executable) examples."
- Befund: "herunterbricht" ist ein Calque von "breaks down" und im Deutschen umgangssprachlich.
- Vorschlag: "… Features in Stories zerlegt und die Stories in (ausführbare) Beispiele."
- Begründung/Beleg: idiomatischer; "zerlegen" ist im Kapitel bereits etabliert (LZ-4-3 „zerlegen").
```

```
#### docs/07-AI-in-RE/02-learning-goals.adoc — LZ-7-2
- Kategorie: BEDEUTUNG (Konsistenz/Wartbarkeit)
- Schweregrad: FEHLER
- aktueller Text: "… wie INVEST, Testbarkeit und Akzeptanzkriterien prüfen (vgl. LZ 4-8 und LZ 4-9)"
- EN-Quelle: "… acceptance criteria (see <<LG-4-8>> and <<LG-4-9>>)"
- Befund: Im Englischen sind das echte AsciiDoc-Querverweise (klickbar, bruchsicher), im Deutschen
  nur hartkodierter Text "LZ 4-8". Die Anker [[LZ-4-8]]/[[LZ-4-9]] existieren – der Verweis sollte
  dieselbe Mechanik nutzen, sonst bricht er bei Umnummerierung still.
- Vorschlag: "… und Akzeptanzkriterien prüfen (siehe <<LZ-4-8>> und <<LZ-4-9>>)"
- Begründung/Beleg: Hausstil für Verweise, vgl. LZ-4-10 "Details siehe <<section-bdd,Kapitel 6 (BDD)>>".
```

```
#### docs/05-Quality-Requirements/02-learning-goals.adoc — LZ-5-1
- Kategorie: NATÜRLICHKEIT
- Schweregrad: STIL
- aktueller Text: "Wissen, dass die Grenze zwischen funktionalen Anforderungen und
  Qualitätsanforderungen sehr schmal ist, …"
- EN-Quelle: "… there is a very thin borderline between functional requirements and quality requirements …"
- Befund: "Grenze … sehr schmal" ist eine wörtliche Übertragung von "very thin borderline";
  im Deutschen ist eine Grenze nicht „schmal", sondern „fließend"/„unscharf".
- Vorschlag: "… dass die Grenze zwischen funktionalen Anforderungen und Qualitätsanforderungen
  fließend ist, …"
- Begründung/Beleg: idiomatische Kollokation.
```

```
#### docs/42-glossary/00-glossary.adoc — Eintrag "Feature"
- Kategorie: TERMINOLOGIE / NATÜRLICHKEIT
- Schweregrad: TERMINOLOGIE
- aktueller Text: "Feature:: Eine Leistung, Service oder Dienst, die ein Stakeholder-Bedürfnis erfüllt."
- EN-Quelle: "Feature:: A service that fulfills a stakeholder need."
- Befund: Dreifachnennung "Leistung, Service oder Dienst" ist eine Verlegenheits-Übersetzung von
  "service" (Service = Dienst, also doppelt); zudem Numerus-/Genus-Bruch ("…, die …" nach „Dienst").
- Vorschlag: "Feature:: Ein Dienst (engl. _Service_), der ein Stakeholder-Bedürfnis erfüllt."
- Begründung/Beleg: Glossar-Stil "(engl. _…_)" ist bereits etabliert (vgl. "Akzeptanzkriterien").
```

```
#### docs/42-glossary/00-glossary.adoc — Eintrag "Scope"
- Kategorie: NATÜRLICHKEIT
- Schweregrad: STIL
- aktueller Text: "Scope:: Der Bereich der Dinge, die bei der Entwicklung eines Systems gestaltet
  und entworfen werden können."
- EN-Quelle: "Scope:: The range of things that can be shaped and designed when developing a system."
- Befund: "Der Bereich der Dinge" ist ein Calque von "the range of things" und im Glossar zu unpräzise.
- Vorschlag: "Scope:: Die Gesamtheit dessen, was bei der Entwicklung eines Systems gestaltet und
  entworfen werden kann."
- Begründung/Beleg: stilistisch; behebt zugleich den Numerus.
```

```
#### docs/42-glossary/00-glossary.adoc — Eintrag "Epic"
- Kategorie: NATÜRLICHKEIT
- Schweregrad: STIL
- aktueller Text: "Eine abstrakte Beschreibung eines Stakeholder-Bedürfnisses auf hoher Ebene, …"
- Befund: "auf hoher Ebene" ist Calque von "high-level"; doppelt mit "abstrakte".
- Vorschlag: "Eine übergeordnete, abstrakte Beschreibung eines Stakeholder-Bedürfnisses, …"
- Begründung/Beleg: stilistisch.
```

```
#### docs/42-glossary/00-glossary.adoc — Eintrag "Funktionale Anforderungen"
- Kategorie: GRAMMATIK
- Schweregrad: TERMINOLOGIE
- aktueller Text: "Funktionale Anforderungen:: Eine Anforderung an ein Ergebnis oder Verhalten, das …"
- EN-Quelle: "Functional Requirements:: A requirement concerning a result of behavior …"
- Befund: Lemma im Plural, Definition im Singular ("Eine Anforderung"). Uneinheitlich.
- Vorschlag: Lemma in Singular ziehen — "Funktionale Anforderung::" — oder Definition pluralisieren.
- Begründung/Beleg: Konsistenz mit den anderen Glossar-Lemmata, die im Singular stehen
  (z. B. "Qualitätsanforderung::", "Nichtfunktionale Anforderung::").
```

## Teil 3 — Terminologie-Konsistenzliste

| Begriff (Konzept) | gefundene Varianten | empfohlener Standardbegriff | Beleg |
|-------------------|---------------------|-----------------------------|-------|
| Behavior(-)Driven Development | „Behavior Driven", „Behaviour Driven", „Behavior-Driven", „Behaviour-Driven" | **Behavior Driven Development (BDD)** (AmE, ohne Bindestrich) | Glossar „BDD:: (_Behavior Driven Development_)" |
| Test-/Acceptance-Test-Driven Development | „TDD (Test-Driven Development)", „ATDD (Acceptance-Test-Driven Development)" | konsistent mit Bindestrich (so bereits) ✓ | LZ-6-1 |
| Elicitation | durchgängig „erheben/Erhebung/Anforderungserhebung" ✓ | _erheben / Erhebung_ | IREB CPRE; Glossar |
| Constraint | durchgängig „Randbedingung" ✓ | _Randbedingung (Constraint)_ | Glossar „Constraint:: (Randbedingung)" |
| Service/Dienst | „Leistung, Service oder Dienst" | **Dienst (engl. _Service_)** | Glossar-Stil |
| Business Value | durchgängig englisch ✓ (konsistent) | offene Frage, s. Teil 4 | — |

## Teil 4 — Offene Fragen für die Redaktion

1. **Schreibweise BDD:** „Behavior" (AmE, wie Glossar) oder „Behaviour" (BrE)? Die Entscheidung muss einmal getroffen und dann **überall** (Glossar, Kap. 6, Begriffslisten) durchgezogen werden. *(Betrifft auch den EN-Quelltext — dort steht derselbe Mischmasch.)*
2. **Englische Fachbegriffe vs. Eindeutschung:** Sollen _Business Value_, _Usage Analytics_ (LZ-5-7), _Glue Code_ (LZ-6-3) englisch bleiben oder eingedeutscht werden (_Geschäftswert_, _Nutzungsdaten/Nutzungsanalyse_)? Aktuell englisch und in sich konsistent — m. E. vertretbar, aber bewusst zu entscheiden.
3. **Gendern englischer Rollennamen:** _Product Owner_, _Business Analyst_, _Requirements Engineer_ bleiben ungegendert, deutsche Rollen (_Entwickler:in_) werden gegendert. Als Regel festhalten?
4. **Typografie „z. B." / „d. h.":** Durchgängig „z.B." ohne Leerzeichen (Duden empfiehlt „z. B." mit schmalem Leerzeichen). Beibehalten oder umstellen? Rein kosmetisch, aber dann global.
