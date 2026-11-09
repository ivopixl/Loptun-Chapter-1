# LOPTUN: LA LÉGENDE DE KANE — SEGUIMIENTO Y CONTINUIDAD

> **Documento maestro para continuar el proyecto en otro chat.**  
> Última revisión: **9 de noviembre de 2026**.  
> Estado: **beta HTML5 v0.4**, con ediciones Clásica y Remastered.  
> Repositorio: **https://github.com/ivopixl/Loptun-Chapter-1**. Rama principal: `main`.  
> **Regla de continuidad:** después de cada cambio, actualizar este documento, el número de versión y la matriz de pruebas. No dar por probados recorridos que no se han ejecutado.

## 1. Objetivo y filosofía

*Loptun: La légende de Kane* es una aventura/arcade original de **IVOSOFT**, creada en **QuickBASIC** (material original fechado aproximadamente en 1993–1997). La aventura sigue a **Kane** y, según el texto del menú de la conversión, se enfrenta al régimen de **Aristo IV**. La documentación y los diálogos originales están principalmente en **francés**.

El usuario quiere preservar el juego original de forma jugable y, a la vez, desarrollar una **remasterización moderna**, con personajes y escenarios dibujados desde cero, animaciones fluidas, joystick, sonido y presentación visual mejorada. Debe conservarse la base narrativa, la estructura de capítulos y los acertijos, salvo que el usuario solicite cambios explícitos.

**Dos objetivos paralelos:**

1. **Clásico / preservación:** reproducir lo más fielmente posible el comportamiento QuickBASIC, la paleta VGA, los sprites construidos mediante instrucciones de dibujo, las dos fases de andar, la duración razonable de las acciones y los puzles.
2. **Remastered / evolución:** sustituir progresivamente el aspecto original por gráficos 2D/2.5D o elementos 3D, con animaciones fluidas, sonido moderno, escenarios y objetos interactivos completos, **sin perder la lógica de la aventura**.

Se trabaja en **HTML5 autónomo**, ejecutable en navegador sin instalación. Priorizar compatibilidad con Chrome, Edge y Firefox y controles por teclado, mando/joystick y táctiles.

## 2. Estado exacto del repositorio (9/11/2026)

Repositorio público: https://github.com/ivopixl/Loptun-Chapter-1  
Commit de referencia del juego y archivos históricos: [`372989c`](https://github.com/ivopixl/Loptun-Chapter-1/commit/372989cde05cc3a36c255bdb11812d994e1db0bb).

| Ruta en GitHub | Función / estado |
|---|---|
| `index.html` | **Remastered v0.4** (modo moderno activado inicialmente, salvo preferencia guardada). Archivo HTML autónomo. |
| `clasico.html` | **Clásico v0.4** (modo VGA seleccionado inicialmente). Archivo HTML autónomo. |
| `README.md` | Presentación breve, controles y guía para GitHub Pages. |
| `SEGUIMIENTO_PROYECTO.md` | **Este documento maestro**: historial, arquitectura, límites, pruebas y siguientes pasos. |
| `original/AC1.BAS` – `original/AC4.BAS` | Fuentes QuickBASIC de los cuatro actos. |
| `original/LOPTUN.BAS` | Programa/presentación principal del original. |
| `original/AC1.OBJ`, `original/LOPTUN.OBJ` | Objetos binarios originales de DOS; **no asumir que son mallas 3D** a pesar de la extensión. |
| `original/SOUND.SFX` | Datos de sonido original Sound Blaster. |
| `original/JOY.MAP` | Recurso de joystick original. |
| `original/LISEZ.MOI`, `original/MANUEL.TXT` | Documentación y manual. |
| `original/LOPTUN.BAT`, `original/MANUEL.BAT` | Lanzadores DOS originales. |

**Los 13 archivos originales se subieron conservando sus bytes**, incluidos los binarios. Los HTML fueron verificados al subirlos con sus tamaños originales: `index.html` 274253 bytes, `clasico.html` 274217 bytes.

Hashes SHA-256 de los HTML de referencia:

```text
index.html   621b66637369ddb6434678b5302400ca083bee2183ec0b8f4b6393f979db7765
clasico.html 1fb2c7c560e124ce6fa205e44fb685519f964a2d012b0ecd4e1f06a3a3793696
```

**Detalle técnico importante:** los dos HTML v0.4 llevan prácticamente el mismo código. La única diferencia detectada al comparar los archivos es la **selección del modo visual inicial**: `clasico.html` fuerza `setRemastered(false)`, mientras que `index.html` respeta la preferencia guardada y usa Remastered cuando no hay una preferencia previa. Los botones del juego permiten alternar de modo sin abandonar la partida.

**GitHub Pages:** el README explica cómo activarlo en `Settings → Pages` (`main`, `/(root)`), pero **no consta en este seguimiento una comprobación de que el despliegue esté activo**. Si está habilitado, la ruta prevista es https://ivopixl.github.io/Loptun-Chapter-1/.

## 3. Historia de las versiones y cambios

### v0.1 — Primera conversión funcional QuickBASIC → HTML5

- Se analizaron los fuentes `LOPTUN.BAS` y `AC1.BAS` a `AC4.BAS`, documentación, mapa del joystick y `SOUND.SFX`.
- Se creó un **intérprete JavaScript** para ejecutar instrucciones y estructuras habituales de QuickBASIC, manteniendo los actos y los dibujos definidos en BASIC.
- Se reconstruyó la pantalla VGA lógica de **320 × 200** mediante Canvas 2D; se añadieron controles modernos: teclado, Gamepad API y controles táctiles.
- Se incorporaron sonido sintetizado con Web Audio y guardado/restauración local de la partida.
- **Problemas reportados por el usuario:** colores incorrectos respecto a la máquina original y ejecución/movimiento excesivamente rápidos; andar difícil de controlar.

### v0.2 — Paleta VGA, ritmo y pausa

- Se corrigió la **paleta VGA de 256 colores**; la implementación anterior aproximaba mal índices superiores a 31 (el BASIC usa, entre otros, índices 44, 66, 210, 244).
- Se limitó la velocidad de ejecución del intérprete y la cadencia del movimiento para recuperar un ritmo jugable.
- Se incorporó regulador de velocidad general **50–200 %**, con ajuste inicial cercano a la experiencia original.
- Se agregó **pausa real** con congelación de reloj, instrucciones y movimiento; acceso mediante `Esc`, `F10`, botón en pantalla y `START` del mando, con guardado al pausar.
- CRT pasó a ser opcional/desactivado inicialmente para no distorsionar los colores.
- **Problemas detectados después:** taxi demasiado lento; las fases de marcha se veían mal o se omitían visualmente.

### v0.3 — Taxi, modo Admin, animación, primer Remastered

- Se separó la velocidad de los recorridos del **taxi** de la del movimiento a pie; se ofreció ajuste de **1× a 6×**.
- Se implementó código de administración **`1234`**, que permite **seleccionar los cuatro actos** desde el menú (no equivale a completar los puzles).
- Se introdujo tiempo mínimo de exposición de los fotogramas de marcha `av1/av2`, `ar1/ar2`, que el navegador podía ejecutar/borrar sin mostrarlos.
- Se incorporó una primera presentación **Remastered**: menú renovado, tratamiento gráfico y sonoro, más resolución visual e iluminación; se mantuvo una edición **Original**.
- **Problemas detectados después:** en el Clásico todavía podían saltarse fotogramas de ciertos pasos; se solicitó un remake visual más profundo, no solo un filtro de píxeles.

### v0.4 — Animación clásica corregida y Remastered 2.5D propio

- **Clásico:** se ajustó la duración de las dos fases de la marcha; el motor actual conserva una espera mínima de **111 ms** tras dibujos `av1/av2/ar1/ar2` en modo Clásico (y **76 ms** en Remastered). El objetivo es impedir que una postura desaparezca antes del refresco de pantalla.
- **Remastered:** se añadió un **renderer Canvas 2D de 960 × 600** con presentación 2.5D: escenarios redibujados, edificios, neones, profundidad, lluvia, reflejos, atmósfera y un **Kane articulado**, con brazos, piernas y prendas animadas y desplazamiento interpolado.
- Se mantuvo el **intérprete y la lógica QuickBASIC por debajo del renderer**; no se sustituyeron las decisiones ni los acertijos por una lógica nueva.
- Se incorporó **vista VGA de referencia** en Remastered (`F6` o botón “Vista VGA”), útil cuando un objeto o acertijo aún no está representado en el dibujo nuevo.
- Se añadió música atmosférica sintetizada para Remastered, diferente de la reproducción exacta del audio original Sound Blaster.
- Se conservaron **dos archivos HTML autónomos**, teclado, mando, controles táctiles, pausa, guardado, selección de actos, código `1234`, velocidad general y velocidad del taxi.
- El usuario pidió explícitamente **seguir desarrollando el Remastered con libertad creativa**, pero manteniendo la base narrativa y el juego original como referencia.

### Publicación en GitHub (9/11/2026)

- Se creó el repositorio público `ivopixl/Loptun-Chapter-1` por el usuario.
- Se subieron `index.html` (Remastered v0.4), `clasico.html` (Clásico v0.4), los **13 materiales originales** en `original/` y `README.md`.
- Se verificó en el árbol Git de `main` la presencia de los 16 archivos anteriores.
- Se añadió posteriormente **este fichero de continuidad** y se enlazó desde el README.

## 4. Motor actual: cómo está construido

**Fuente de verdad de la aventura:** los programas de QuickBASIC (cuatro actos más presentación). Los HTML incluyen una representación compilada/serializada de sus instrucciones; los archivos originales se guardan aparte para auditoría y futuras reimplementaciones.

**Renderer clásico:** framebuffer 320×200, paleta VGA y primitivas propias de QuickBASIC (`DRAW`, `PSET`, `PRESET`, `LINE`, `CIRCLE`, `PAINT`, `PALETTE`, texto `LOCATE`/`PRINT`, etc.). Se ejecutan instrucciones BASIC y el resultado se presenta en Canvas.

**Intérprete:** incluye asignaciones, `IF`, `GOTO`, bucles `FOR/NEXT`, subrutinas `GOSUB/RETURN`, lectura de controles (`STICK`, `STRIG`, `INKEY$`), entrada y elecciones, música básica (`PLAY`, `SOUND`, `BEEP`) y acceso simulado a algunos recursos/puertos del original. `SOUND.SFX` se interpreta de manera aproximada.

**Temporización v0.4:** `CPU_COMMANDS_PER_SECOND = 880`, intervalo estándar de movimiento clásico `MOVE_INTERVAL_MS = 225 ms`, movimiento remasterizado muestreado a aproximadamente `168 ms`, velocidad general configurable `0.5–2.0`. Para los sprites de marcha se introducen esperas mínimas de **111 ms Clásico / 76 ms Remastered**. Son ajustes de conversión, **no medidas cronometradas en el DOS original**.

**Taxi:** existe una aceleración localizada en el acto I al interpretar la asignación `ux = ux - .1`; se modifica el avance a `0.8 * taxiSpeed` por instrucción (con `taxiSpeed` de 1 a 6, predeterminado 3). **Atención:** estas etiquetas 1×–6× son niveles de aceleración dentro del port HTML, **no equivalencias exactas respecto al tiempo del DOS original**; comprobar los diferentes viajes con pruebas reales.

**Renderer Remastered:** el Canvas de 960×600 representa de nuevo el entorno usando temas y regiones aproximados derivados del programa y de su posición de ejecución (`program`, `pc`). Dibuja arquitectura, suelo, elementos de escena, atmósfera, música y un personaje articulado. **Todavía no traduce individualmente todos los objetos interactivos y acertijos**; puede usarse F6 para ver el escenario VGA original.

**Guardado:** `localStorage`, prefijo `loptun96:`; guarda estado del programa, variables, framebuffer, mapa de color, punteros y parte del estado del renderer, además de preferencias. El guardado se activa manualmente, al pausar y en ciertos cambios. **No es almacenamiento en nube.**

## 5. Controles documentados

| Acción | Teclado | Mando / otros |
|---|---|---|
| Mover a Kane | Flechas o WASD | Stick izquierdo o cruceta; también botones táctiles |
| Ejecutar acción | `Espacio` / `Enter` | Botón A |
| Alternar *REGARDER / ACTION* | `5` | Botón B/X |
| Elegir respuestas | `1`, `2`, `3`… | Teclado / botones numéricos en pantalla |
| Salir de zona (cuando proceda) | `E` | Acción mapeada en el port |
| Pausar/reanudar | `Esc` o `F10` | START o botón Pausa |
| Desbloquear selección de actos | Escribir `1234` en menos de 3 segundos | Modo Admin aparece en el menú |
| Mostrar referencia original | `F6` (solo Remastered) | Botón Vista VGA |
| Cambiar estilo visual | Botones “Original VGA” / “Remastered” | Interfaz del juego |
| Ajustar velocidad general/taxi | Deslizadores de la interfaz | Interfaz del juego |

**Nota del manual original (`MANUEL.TXT`):** el joystick era obligatorio; un botón actuaba, la tecla `5` elegía la actitud y `E` permitía salir solo de lugares iniciales de capítulo. El port permite controles adicionales para navegadores modernos.

## 6. Pruebas: qué está comprobado y qué NO

| Área | Estado actual | Observaciones |
|---|---|---|
| Carga del HTML / menú | **Comprobaciones previas realizadas** | Los HTML v0.4 se abrieron y se capturaron pantallas de menú y juego durante su desarrollo. |
| Inicio de los cuatro actos | **Comprobaciones parciales** | Se abrieron los actos I–IV; no implica que se pueda terminar cada uno. |
| Colores VGA | **Corrección implementada en v0.2** | Falta una comparativa exhaustiva con capturas DOS de referencia. |
| Marcha de Kane | **Corregida y muestreada parcialmente** | Se observaron dos posturas distintas; verificar todas las rutas de animación, direcciones y transiciones. |
| Taxi | **Aceleración implementada y probada de forma parcial** | Ajustable; probar distintos tramos, eventos y equilibrio de duración. |
| Código Admin 1234 | **Implementado y probado en las versiones previas** | Comprobar que no interfiera con entradas numéricas de acertijos. |
| Pausa / reanudación | **Comprobación parcial** | El reloj y el bucle de instrucciones se detienen; probar combinación de menú y overlays. |
| Teclado / mando / táctil | **Soportados en código** | Validar hardware concreto, modelos de mando, navegador móvil y controles simultáneos. |
| Sonido | **Implementado** | Sintetizado; no es una emulación exacta de Sound Blaster. |
| Guardar y restaurar | **Comprobaciones parciales** | **Se necesita test de regresión en subrutinas y después de puzles.** |
| Remastered: gráficos nuevos | **Implementación inicial** | La mayoría de escenarios se interpretan por categorías; objetos/pistas particulares no están todos redibujados. |
| Todos los caminos, acertijos y finales | **NO VALIDADO** | No afirmar que el juego completo está libre de bloqueos. |
| GitHub Pages desplegado | **Pendiente de verificar** | Revisar `Settings → Pages` y la URL pública. |

**Advertencias técnicas a investigar en el próximo chat:**

- El guardado actual almacena `forstack` pero **no se aprecia serialización de `callstack`** (pila de `GOSUB/RETURN`) en `saveGame()`. Podría causar restauraciones incorrectas si se guarda dentro de una subrutina. Verificar, corregir y probar.
- El renderer Remastered clasifica temas mediante posición en el código BASIC (`pc`). Es útil como prototipo, pero frágil ante saltos/cambios; conviene crear **identificadores de escenario y un mapa explícito de objetos/interacciones**.
- Los recursos binarios `.OBJ` de DOS son históricos: **no** suponer que sean objetos de geometría 3D.
- Evitar que la secuencia `1234` se dispare accidentalmente al responder puzles; revisar dónde se captura el teclado.
- Los colores, fuentes, las colisiones y los tiempos exactos del DOS requieren una comparación con capturas/vídeos o ejecución del programa original en entorno compatible.
- Comparar las dos ediciones en múltiples cambios de escenario; no basta con que el Remastered se vea bien en la primera calle.

## 7. Prioridades y plan de trabajo recomendado

### Etapa A — Estabilización del Clásico (prioridad alta)

1. Preparar una **matriz de pruebas por acto/escena/acción**, con captura inicial y final, estado del puzle y resultado esperado según el BASIC.
2. Terminar de corregir animaciones: asegurar exposición de los dos fotogramas, transiciones y movimiento equilibrado a izquierda/derecha, sin introducir esperas donde no proceda.
3. Verificar paleta y sprites con comparaciones al QuickBASIC original.
4. Confirmar que el taxi y todos los minijuegos tienen velocidad jugable e independiente; evitar esperas artificiales y desplazamientos exagerados.
5. Corregir y probar guardado/restauración en mitad de subrutinas, eventos, desplazamiento y cambios de acto.
6. Probar fin de acto, muerte/fin de programa y continuidad a los actos siguientes.

### Etapa B — Remastered completo (prioridad creativa alta)

1. Construir un **atlas de escenas** del original (captura, mapa, interacción, objetos clicables/observables, puzles, NPC, entradas/salidas).
2. Sustituir la heurística visual de los temas por **escenarios 2D/2.5D específicos**: fondos multicapas, interiores, calles y zonas narrativas bien diferenciados.
3. Rediseñar a Kane con animaciones completas: reposo, andar en dos direcciones, mirar, usar objeto, interactuar, reacciones, transiciones y posibles secuencias cinemáticas.
4. Redibujar **todos los elementos necesarios para los puzles**; validar que las pistas se ven sin usar la ventana VGA. F6 queda como herramienta de depuración o consulta opcional.
5. Animaciones de NPC, vehículos (taxi), máquinas y decorados; parallax, luz y sombras sin sacrificar legibilidad.
6. Audio por escena/acción, efectos asociados a acciones correctas y música original; volumen configurable, mute y compatibilidad móvil.
7. Mejorar interfaz moderna, mando, guardados, opciones, pausa y tutorial; mantener botón para alternar Original/Remastered.

### Etapa C — Validación y lanzamiento

- Recorrer **todos los actos y puzles** de principio a fin, documentando la secuencia y comparando con BASIC.
- Probar teclado/mando/táctil y Chrome/Edge/Firefox, tanto escritorio como móvil.
- Revisar rendimiento y gráficos en equipos modestos, imagen escalada y audio desbloqueado por gesto del usuario.
- Preparar GitHub Pages, capturas promocionales, instrucciones y versión `v1.0` cuando el estado esté realmente validado.

## 8. Reglas para la siguiente conversación

1. **Abrir y leer primero** este `SEGUIMIENTO_PROYECTO.md`, `README.md`, `index.html`, `clasico.html` y, cuando sea preciso, el `.BAS` correspondiente. No desarrollar una aventura genérica sustituyendo la original.
2. **Partir siempre del último commit real de GitHub**; no reconstruir desde una versión antigua ni sobreescribir mejoras de la otra edición.
3. **Mantener Clásico y Remastered sincronizados**. Como sus HTML actuales comparten casi todo el código, conviene refactorizar a un único motor con configuraciones separadas antes de duplicar nuevas funcionalidades, preservando HTML autónomo si esa sigue siendo la preferencia.
4. **Conservar los originales intactos** bajo `original/` (no modificar archivos históricos para arreglar el port).
5. **No perder las mejoras solicitadas**: paleta correcta; ritmo controlable; taxi rápido; las dos posturas visibles; `1234` como acceso admin; pausa real; joystick; guardado; Vista VGA; capítulos I–IV.
6. Por cada versión futura: actualizar **versión**, **historial de cambios**, **problemas abiertos**, **pruebas ejecutadas** y **commit** en este fichero. Indicar explícitamente lo que no se ha probado.
7. No anunciar “conversión completa” o “todos los puzles validados” sin pruebas de recorrido completas.
8. Si se añaden nuevas animaciones o minijuegos, comprobar que los comandos de usuario no se consuman por encima del refresco de pantalla.
9. No dar por publicado GitHub Pages sin comprobar su estado real.
10. Si el nuevo chat tiene acceso al GitHub conectado, **subir los cambios directamente** a `ivopixl/Loptun-Chapter-1` y proporcionar enlaces al commit y a los HTML.

## 9. Texto para iniciar un nuevo chat

> Estamos continuando **Loptun: La légende de Kane** (IVOSOFT), antiguo juego QuickBASIC convertido a HTML5 y Remastered 2.5D. El repositorio es https://github.com/ivopixl/Loptun-Chapter-1. **Lee primero `SEGUIMIENTO_PROYECTO.md` y el código de `index.html` y `clasico.html` en `main`**. La versión base es **v0.4**. Preserva los cuatro actos y los puzles originales, el modo Clásico, la paleta VGA, las dos fases de marcha, la velocidad de taxi independiente, el código Admin `1234`, pausa, teclado/mando/táctil, guardado y vista VGA F6. Desarrolla mejoras modernas sin cambiar inadvertidamente la lógica original. Al finalizar cada entrega, prueba los cambios, actualiza el fichero de seguimiento y sube los archivos a GitHub. Distingue claramente lo implementado de lo pendiente o no probado.

## 10. Registro de futuras entregas (rellenar al actualizar)

| Fecha | Versión | Cambios principales | Pruebas realizadas | Problemas pendientes | Commit |
|---|---|---|---|---|---|
| 2026-11-09 | 0.4 (base) | Remastered 2.5D y Clásico; código y fuentes preservadas | Inicio de los cuatro actos, visuales y controles parciales | Recorridos completos, guardado dentro de GOSUB, escenarios interactivos remasterizados | `372989c` (base previa a este documento) |

---

**Este documento es la referencia de continuidad del proyecto.** Cuando haya discrepancias, el último código del repositorio y los `.BAS` originales son las referencias técnicas; actualizar el seguimiento para reflejar el estado real y no conjeturas.