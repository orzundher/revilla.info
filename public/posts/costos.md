## Comparación entre estilos de desarrollo de software segun distribución de costos

Recursos que establecen límites al desarrollo:

**1. Presupuesto:**
Determina la cantidad de dinero que se puede invertirl. Incluye la inversión en tamaño del equipo.

**2. Tiempo:**
Determina la cantidad de tiempo que se puede usar en mejorar la mejorar la calidad del código.

Ejemplos:

**Profile 1**
- Planificación 20%
- Desarrollo 70%
- Despliegue 10%

**Profile 2**
- Planificación 20%
- Coordinación 10%
- Desarrollo 60%
- Despliegue 10%

**Profile 3**
- Planificación 20%
- Coordinación 5%
- Desarrollo 30%
- Tests unitarios 20%
- Documentación 20%
- Despliegue 5%

**Profile 4**
- Planificación	20%
- Coordination	10%
- Desarrollo	20%
- Tests unitarios	18%
 -Documentación	16%
- Despliegue	5%
- Code Review	6%
- Lint + CI con bloqueo	3%
- Integration Tests	7%
- Smoke Tests	2%
- End-to-end crítico	7%
- Canary Deploys	2%


Desarrollo sin testing formal, ni documentación, ni refinamiento avanzado
Planificación ligera pero con conversaciones entre PO / PM y devs
Despliegue sencillo: un stage de integración y luego producción, con pruebas manuales mínimas


Entonces los porcentajes típicos cambian bastante respecto a proyectos más formales.

🔥 Regla empírica aproximada para tu escenario
FaseQué incluye% del costo totalPlanificaciónReuniones para clarificar feature, grooming, tickets de alto nivel, decisiones funcionales y trade-offs20–30%Desarrollo (solo codificación)Implementación directa, sin test automatizados ni documentación55–70%Despliegue y verificación manualSetup simple de entornos, QA manual básico, deploy a prod5–15%

🎯 ¿En qué casos se acerca más a cada extremo?
SituaciónImpactoResultadoEl equipo ya trabajó junto antes y se entiende “de memoria”Menos overhead en planificaciónPlanificación 15–20% / Desarrollo más altoEl producto es nuevo y se discuten muchas decisionesMás tiempo de reuniónPlanificación 25–35%Hay pipelines o infraestructura ya maduraMenos costo de despliegueDespliegue 5–8%Deploys requieren pasos manuales o validaciones con negocioMás costo en despliegueDespliegue 10–15%

🧠 Ejemplo práctico (equipo chico, producto estable, features claras)
Fase% estimadoPlanificación22%Desarrollo65%Despliegue13%

🏁 Conclusión
Dado tu contexto, el rango más razonable es:

Planificación 20–30%
Desarrollo 55–70%
Despliegue 5–15%

La clave es que al eliminar testing formal, QA y documentación, el desarrollo toma el peso mayor, y el despliegue se mantiene pequeño porque el proceso es básico.

Si querés, puedo hacerte una tabla comparativa con:


Proyectos rudimentarios (como este)


Proyectos “profesionales” con QA y documentación


Proyectos críticos (fintech, healthcare, aerospace)


¿Te sirve?



Du:
ahora pasemos a un ejemplo en el que se agrega solamente unit testing con cobertura del 100% y actualización exhaustiva de documentación para usuario final, referencias de desarrollo y documentacion de arquitectura

Perfecto. Ahora agregamos:


Unit testing con cobertura cercana al 100%


Documentación exhaustiva:


Manual de usuario


Guías de desarrollo / referencias de API


Documentación de arquitectura (diagramas, decisiones, trade-offs)



Seguimos asumiendo:


Equipo pequeño


Pipeline de despliegue simple


No se agrega QA manual formal más allá de lo básico



🔄 ¿Qué cambia cuando agregamos testing y documentación?


El desarrollo deja de ser solo codificar
Una parte considerable del tiempo pasa a:


escribir tests


refactorizar para testabilidad


mantener cobertura



La documentación pasa a ser tan costosa como implementar
Especialmente si es exhaustiva y coherente con arquitectura.



📊 Distribución de costos típica en este escenario
FaseQué incluye% del costo totalPlanificaciónDiseño funcional, definición de requerimientos, aclaración de arquitectura, refinamiento más fino porque documentación requiere precisión25–35%Desarrollo + TestsImplementación + refactors para testabilidad + escritura de unit tests (100% coverage implica mucho overhead)35–50%Documentación exhaustivaManuales, guías de desarrollo, diagramas arquitectónicos, mantenimiento de coherencia20–30%DespliegueEntorno de stage → verificación → producción5–10%

🎯 Porcentaje recomendado (caso típico realista)
Fase% estimado
Planificación30%
Desarrollo + Tests40%
Documentación25%
Despliegue5%

🔍 Razón principal del cambio


Antes, desarrollo era lo principal (55–70%)


Ahora, el peso se reparte, porque:


Testing duplica o triplica el tiempo de desarrollo para muchas funciones


La documentación es casi un proyecto en sí misma cuando se hace completa y consistente



📊 ... (truncated for brevity)
