
# Software Engineering für Unternehmen — vor der Ära der Künstlichen Intelligenz

Welche Praktiken unterscheiden Hochleistungs‑Teams?

- Kleine, häufige Releases
- Automatisierung
- Team‑Autonomie
- Datengetriebene Entscheidungen

---

## 1. DORA‑Metriken — die richtigen Kennzahlen
Verwende *DORA‑Metriken statt Story Points oder **LOC. Sie messen Flow und Zuverlässigkeit.

*DevOps Research and Assessment
**Lines of Code

- Deployment Frequency  
  Wie oft wird in Produktion ausgeliefert? Häufiger = besser.

- Lead Time for Changes  
  Zeit von Commit bis Produktion. Kürzer = besser.

- Change Failure Rate  
  Anteil der Deploys, die zu Fehlern führen. Niedriger = besser.

- Mean Time to Recovery (MTTR)  
  Zeit zur Wiederherstellung nach Ausfall. Schneller = besser.

Diese Metriken zeigen Durchsatz und Resilienz.

---

## 2. Kleine, häufige Lieferungen
Best Practices:
- Kleine Commits statt großer Änderungen
- Continuous Deployment statt Big‑Bang‑Releases
- Wachsende Branch-Divergenz als Gegner der Leistung
- Vorteile: geringeres Risiko, schnellere Lernzyklen

---

## 3. Pipeline‑Automatisierung
Automatisiere Build, Test und Deployment:
- Schnelle automatisierte Tests (CI)
- Infrastruktur als Code
- Automatisierte Rollbacks / Rollouts  
Automation reduziert Varianz und menschliche Fehler.

---

## 4. Architektur für Team‑Unabhängigkeit
Teams sollen unabhängig deployen können:
- Modularisierung / Microservices oder klar gekapselte Module
- Stabile, gut dokumentierte APIs
- Daten und State soweit möglich isolieren  
Wenn für ein Deployment mehrere Teams koordiniert werden müssen, ist die Architektur nicht optimal.

---

## 5. Kultur: Verantwortung & Lernen
Gute Kultur heißt nicht „keine Fehler“, sondern:
- Blameless Postmortems
- Fokus auf Ursachen statt Schuld
- Wissensaustausch und „Shift‑Left“ (Tests & Sicherheit frühzeitig)
Kultur ermöglicht kontinuierliche Verbesserung.

---

## 6. Führungsstil, der befähigt
Effektive Führung:
- Kontext geben, nicht kontrollieren
- Hindernisse beseitigen, Bürokratie reduzieren
- Autonomie und Experimentierfreude fördern

---

## 7. Entscheidungen auf Basis von Daten
Vermeide subjektive Entscheidungen:
- Nutze Metriken (Flow, Incidents, Nutzer‑Feedback)
- Hypothesen testen, messen, anpassen

---

## Abschluss — Kernbotschaften (1 Minute)
- Geschwindigkeit und Zuverlässigkeit sind kein Widerspruch.  
- Fokus auf DORA‑Metriken, Automatisierung, kleine Releases und lernende Kultur.  
- Ergebnis: schnellere Lieferung, weniger Ausfälle, nachhaltige Skalierbarkeit.

## Vorschlag für nächste Schritte (Meeting‑Action)
1. Kurz‑Audit: aktuelle Deployment‑Frequenz, Lead Time, MTTR (1 Woche)  
2. Pilot: 2 Teams → verpflichtende kleine Deploys + Messung (4–8 Wochen)  
3. Automatisierungs‑Plan für CI/CD und IaC (Priorität: Tests und Rollback) 