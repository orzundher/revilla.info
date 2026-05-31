---
layout: ../../layouts/Layout.astro
title: Métricas — Revilla
description: Una guía breve sobre métricas útiles para evaluar entrega y estabilidad de software.
---

# Métricas

Cuando un equipo quiere mejorar su forma de entregar software, necesita medir algo más que velocidad aparente. Las métricas correctas ayudan a ver si el sistema entrega valor con regularidad y sin romperse.

## Métricas clave

- Deployment Frequency: cuántas veces se despliega a producción.
- Lead Time for Changes: cuánto tarda un cambio en llegar desde el commit hasta producción.
- Change Failure Rate: qué proporción de despliegues genera incidentes o rollback.
- Mean Time to Recovery: cuánto tarda el sistema en volver a estar disponible tras una falla.

## Cómo interpretarlas

Más despliegues no siempre significan mejor trabajo, pero sí suelen indicar menor fricción en el flujo. Si el ritmo sube y la tasa de fallos también, el problema no es la velocidad sino la falta de estabilidad.

## Lectura práctica

- Si el lead time es alto, revisa aprobaciones, handoffs y tiempos muertos.
- Si la change failure rate es alta, revisa pruebas, observabilidad y tamaño de los cambios.
- Si el MTTR es alto, revisa alertas, runbooks y capacidad de rollback.

## Cierre

Las métricas sirven para detectar cuellos de botella y evitar discusiones basadas solo en intuición. Lo útil no es medir mucho, sino medir lo que realmente ayuda a decidir.