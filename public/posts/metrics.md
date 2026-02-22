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
Automatisiere Build, Test y Deployment:
- Schnelle automatisierte Tests (CI)
- Infrastruktur als Code
- Automatisierte Rollbacks / Rollouts  
Automation reduziert Varianz und menschliche Fehler.

---

## 4. Arquitectura para Team‑Unabhängigkeit
Teams sollen unabhängig deployen können:
- Modularización / Microservices oder klar gekapselte Module
- Stabile, gut dokumentierte APIs
- Datos y State möglichst aislados
Wenn für ein Deployment mehrere Teams koordiniert werden müssen, ist die Architektur nicht optimal.

---

## 5. Kultur: Verantwortung & Lernen
Gute Cultura bedeutet nicht „keine errores", sino:
- Blameless Postmortems
- Fokus en causas y no en culpas
- Wissensaustausch y "Shift‑Left" (Tests & seguridad temprano)
Kultur ermöglicht kontinuierliche Verbesserung.

---

## 6. Führungsstil, der befähigt
Effektive Führung:
- Context geben, no controlar
- Hindernisse beseitigen, Bürokratie reduzieren
- Autonomía y experimentación fördern

---

## 7. Entscheidungen auf Basis von Daten
Evita decisiones subjetivas:
- Usa métricas (Flow, Incidents, Nutzer‑Feedback)
- Hypothesen testen, medir, ajustar

---

## Abschluss — Kernbotschaften (1 Minute)
- Geschwindigkeit y Zuverlässigkeit sind kein Widerspruch.  
- Fokus en DORA‑Metriken, Automatisierung, pequeñas releases y cultura de aprendizaje.  
- Resultado: entrega más rápida, menos fallos, escalabilidad sostenible.

## Vorschlag für nächste Schritte (Meeting‑Action)
1. Kurz‑Audit: aktuelle Deployment‑Frequenz, Lead Time, MTTR (1 Woche)  
2. Pilot: 2 Teams → verpflichtende kleine Deploys + Messung (4–8 Wochen)  
3. Automatisierungs‑Plan für CI/CD y IaC (Priorität: Tests y Rollback)
