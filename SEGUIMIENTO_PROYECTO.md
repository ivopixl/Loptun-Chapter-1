# LOPTUN: LA LÉGENDE DE KANE — SEGUIMIENTO Y CONTINUIDAD

> **Documento maestro para continuar el proyecto en otro chat.**  
> Última revisión: **9 de noviembre de 2026**.  
> Estado: **beta HTML5 v0.6.0 — Clásico trilingüe FR/ES/EN, mando moderno e INPUT VGA**. La remasterización 2.5D v0.4 está archivada. Nueva dirección: futura versión completamente **2D con sprites**.  
> Repositorio: **https://github.com/ivopixl/Loptun-Chapter-1**. Rama principal: `main`.  
> **Regla de continuidad:** después de cada cambio, actualizar este documento, el número de versión y la matriz de pruebas. No dar por probados recorridos que no se han ejecutado.

## 1. Objetivo y filosofía

*Loptun: La légende de Kane* es una aventura/arcade original de **IVOSOFT**, creada en **QuickBASIC** (material original fechado aproximadamente en 1993–1997). La aventura sigue a **Kane** y, según el texto del menú de la conversión, se enfrenta al régimen de **Aristo IV**. La documentación y los diálogos originales están principalmente en **francés**.

El usuario quiere preservar el juego original de forma jugable, **corregir su francés y disponer de francés/español/inglés**. La remasterización 2.5D/3D previa queda **en pausa por decisión explícita del usuario (9/11/2026)**. El futuro remake será **puramente 2D, con sprites y fondos 2D nuevos**, animaciones fluidas, joystick y sonido, conservando historia, actos y acertijos.

**Dos objetivos secuenciales:**

1. **Clásico / preservación:** reproducir lo más fielmente posible el comportamiento QuickBASIC, la paleta VGA, los sprites construidos mediante instrucciones de dibujo, las dos fases de andar, la duración razonable de las acciones y los puzles.
2. **Remake exclusivamente 2D (fase futura):** sustituir los gráficos por sprites y fondos 2D modernos con animaciones fluidas, sonido y escenas interactivas completas, **sin introducir 2.5D/3D** y sin perder la lógica de la aventura.

Se trabaja en **HTML5 autónomo**, ejecutable en navegador sin instalación. Priorizar compatibilidad con Chrome, Edge y Firefox y controles por teclado, mando/joystick y táctiles.

## 2. Estado exacto del repositorio (9/11/2026, v0.6.0)

Repositorio público: https://github.com/ivopixl/Loptun-Chapter-1  
Commit de referencia del juego y archivos históricos: [`372989c`](https://github.com/ivopixl/Loptun-Chapter-1/commit/372989cde05cc3a36c255bdb11812d994e1db0bb).

| Ruta en GitHub | Función / estado |
|---|---|
| `index.html` | **Clásico multidioma v0.6.0** (modo VGA; puerta de idiomas FR/ES/EN). Es la entrada principal del proyecto. |
| `clasico.html` | **Clásico multidioma v0.6.0** (copia del mismo HTML autónomo para conservar el enlace anterior). |
| `README.md` | Presentación, controles, estado del proyecto y guía para GitHub Pages. |
| `i18n/texts_v0_5.json` | Diccionario con 316 textos originales y entradas auxiliares, versiones francesa corregida, española e inglesa. |
| `archive/remastered_v0_4.html` | Copia histórica congelada de la edición Remastered 2.5D. **No es la versión activa.** |
| `SEGUIMIENTO_PROYECTO.md` | **Este documento maestro**: historial, arquitectura, límites, pruebas y siguientes pasos. |
| `original/AC1.BAS` – `original/AC4.BAS` | Fuentes QuickBASIC de los cuatro actos. |
| `original/LOPTUN.BAS` | Programa/presentación principal del original. |
| `original/AC1.OBJ`, `original/LOPTUN.OBJ` | Objetos binarios originales de DOS; **no asumir que son mallas 3D** a pesar de la extensión. |
| `original/SOUND.SFX` | Datos de sonido original Sound Blaster. |
| `original/JOY.MAP` | Recurso de joystick original. |
| `original/LISEZ.MOI`, `original/MANUEL.TXT` | Documentación y manual. |
| `original/LOPTUN.BAT`, `original/MANUEL.BAT` | Lanzadores DOS originales. |

**Estado vigente a 9/11/2026:** `index.html` y `clasico.html` corresponden a **v0.5 (Clásico FR/ES/EN)**, ambos con 338251 bytes y SHA-256 `3eb8e6f02d9ec68fa2e1885b4c8e6458d36de11e61d0731b740d5b1974e22797`. En los siguientes párrafos, los tamaños y SHA de v0.4 son **referencias históricas**, no el estado actual.

**Los 13 archivos originales se subieron conservando sus bytes**, incluidos los binarios. Los HTML fueron verificados al subirlos con sus tamaños originales: `index.html` 274253 bytes, `clasico.html` 274217 bytes.

Hashes SHA-256 de los HTML de referencia:

```text
index.html   621b66637369ddb6434678b5302400ca083bee2183ec0b8f4b6393f979db7765
clasico.html 1fb2c7c560e124ce6fa205e44fb685519f964a2d012b0ecd4e1f06a3a3793696
```

**Detalle técnico:** en v0.5, `index.html` y `clasico.html` contienen la misma edición VGA clásica con selección de idioma. El renderer 2.5D de la implementación v0.4 permanece en parte como código dormido dentro del port: los controles para activarlo están ocultos y `setRemastered(false)` lo deshabilita. **No confundir código conservado con una remasterización activa.** Hay una copia histórica independiente en `archive/remastered_v0_4.html`.

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

### v0.5 — Clásico trilingüe, revisión de textos y nueva hoja de ruta (9/11/2026)

- El usuario decidió **aparcar el Remastered 2.5D**. La dirección futura será una **aventura estrictamente 2D con sprites, fondos 2D y animaciones**; por ahora se trabaja solo en el port clásico VGA.
- `index.html` y `clasico.html` ahora ofrecen una **pantalla de selección de idioma al primer inicio (francés/español/inglés)** y un selector visible para cambiarlo más adelante. La preferencia se guarda con `loptun96:language` cuando el navegador permite almacenamiento local.
- Se extrajeron **316 textos distintos** de las instrucciones QuickBASIC `PRINT` y `INPUT` en los cinco programas, se corrigió su francés y se redactaron traducciones al español e inglés. También se traducen los elementos de la interfaz (menú, pausa, ayuda, administradores, controles).
- Las traducciones se aplican **al dibujar los textos**, sin cambiar los `PROGRAMS` derivados del BASIC y sin mutar las variables de los puzles. Por ejemplo, `ACTE VI` se muestra corregido como `ACTE IV`/ACTO IV/ACT IV, pero los originales `.BAS` permanecen intactos.
- Se mejoró la representación de caracteres VGA en 8×8, incorporando acentos, `ñ`, signos españoles y otros glifos necesarios con mapas de bits autocontenidos, sin dependencias de fuentes externas.
- La pantalla de selección aparece la primera vez; se puede volver a elegir idioma mediante la barra. **Importante:** los cuadros de texto ya rasterizados en el framebuffer no se traducen retroactivamente al cambiar de idioma durante una escena; los textos nuevos sí.
- Se ocultan los controles de Remastered y F6 en la versión activa. El Remastered v0.4 queda guardado en `archive/remastered_v0_4.html` y permanece accesible en la historia Git.
- Se exportó un diccionario editable de traducciones en `i18n/texts_v0_5.json`.
- **Pruebas en Chromium (Playwright):** se verificaron selección FR/ES/EN, correspondencia de los 319 elementos del diccionario (316 originales + 3 etiquetas técnicas), diálogos representativos del primer acto, títulos de acto y corrección de ACTE IV, entrada al acto I, pausa y reanudación, activación de `1234` y acceso al acto IV; sin excepciones de JavaScript en esas rutas. **No se ha completado un recorrido integral de los cuatro actos ni se ha probado físicamente un gamepad.**
- **HTML v0.5:** 338251 bytes; SHA-256 `3eb8e6f02d9ec68fa2e1885b4c8e6458d36de11e61d0731b740d5b1974e22797`. Los dos enlaces principales apuntan al mismo contenido.

### v0.5.1 — Corrección tipográfica de descendentes VGA (9/11/2026)

- **Incidencia reportada con captura por el autor:** algunas letras minúsculas (`p`, `q`, también `g`, `j`, `y`) parecían cortadas por abajo porque el diccionario `FONT_READABLE` v0.5 se generó rasterizando glifos de una fuente 10 px directamente en solo 8 filas y se perdía el descendente.
- Se introdujo un mapa específico `FONT_DESCENDER_FIXES` con **10 glifos de píxeles diseñados para caber enteros en 8×8**: `p`, `q`, `g`, `j`, `y`, `ç`, `Ç`, `Q`, coma y punto y coma. Se aplica mediante `Object.assign(FONT_READABLE,FONT_DESCENDER_FIXES)` antes de `charAt`. La última fila de cada glifo reparado conserva píxeles de cola.
- **No se ha cambiado la cuadrícula VGA 320×200**, su interlineado de 8 píxeles, la lógica del intérprete, las traducciones ni los sprites originales. Se mantienen 40×25 celdas y todos los controles.
- Nueva versión descargable: `Loptun_Clasico_Multidioma_v0_5_1.html`. `index.html` y `clasico.html` contienen exactamente los mismos bytes (blob Git `3c87f76ae3a0fe5c195379087bd5008622b6299e`, 338944 bytes).
- **Pruebas automatizadas en Chromium:** presencia de las 10 colas en la última fila y altura 8, previsualización con las palabras `grupos`, `partes`, `juego`; arranque del acto I en español, pausa/reanudación, activación de `1234`, acceso a los cuatro actos, sin errores JavaScript. Queda pendiente revisar visualmente más diálogos y resoluciones reales y probar los actos completos.

### v0.6.0 — Mando moderno, eliminación de calibración y entrada VGA (9/11/2026)

**Solicitudes del autor:** (1) soporte total para mando moderno en la medida de Gamepad API; (2) eliminar la calibración DOS `JOY.MAP` de la experiencia; (3) quitar restos de textos cuando se sustituyen; (4) escribir códigos y cifras dentro de la pantalla original, sin modal externa.

**Implementación:**
- `index.html` y `clasico.html` conservan el motor y los cuatro actos históricos pero se actualizan a **v0.6.0**. La versión v0.5.1 queda archivada en `archive/clasico_multidioma_v0_5_1.html`.
- **Gamepad estándar:** lectura mediante `navigator.getGamepads()` en cada fotograma, primera maneta conectada, cruceta o stick izquierdo con zona muerta 0,25, detección de flancos para botones y navegación de menús y pantalla de idiomas. A/RT actúa; B/LT cambia mirar/actuar; X sale; Y envía el dígito elegido con LB/RB; START pausa y SELECT/BACK vuelve al menú. Los códigos pueden introducirse por mando mediante LB/RB (o cruceta vertical), A añadir, B/X borrar, Y/START confirmar. También teclado y táctil.
- **Calibración suprimida en tiempo de ejecución:** en el programa de presentación `LOPTUN` se detecta la entrada al bloque de calibración (etiquetas `55`–`100`) y se transfiere a `AC1`, sin dibujar instrucciones «Haut/Gauche + Touche 5» ni escribir mediciones `JOY.MAP`. Los fuentes `.BAS` originales no se modifican, y el acceso directo a cualquier acto no necesita calibración.
- **Texto sin restos:** `printRuns` y `printCellOwner` registran las celdas de cada `PRINT`. Si llega un texto nuevo a la misma posición o solapa una frase previa, se borran las celdas anteriores, incluidos los caracteres restantes cuando el mensaje nuevo es más corto. `CLS` y `SCREEN` reinician el seguimiento; `LINE ... BF` invalida solo las zonas repintadas; el `scroll` limpia las referencias anteriores.
- **`INPUT` in-game:** eliminada la ventana `#inputOverlay`. Los 10 campos `INPUT` de AC1 (6), AC2 (1) y AC3 (3) muestran el prompt traducido en el framebuffer VGA de 320×200; la respuesta aparece en esa misma fila con cursor parpadeante y edición/borrado. Panel numérico auxiliar dentro del `#viewport`, visible cuando se introduce un número, también utilizable con táctil. El guardado guarda el estado parcial de un `INPUT`, incluidos sus controles al recuperar la partida.
- Se mantienen la paleta VGA, las traducciones FR/ES/EN, los glifos 8×8 v0.5.1, la marcha de dos fases, taxi acelerado, código Admin `1234`, sonido, pausa y soporte de partida guardada.
- **Código de referencia:** archivos idénticos `index.html` y `clasico.html`, blob Git SHA-1 `ee7393b8746512cda83d36d1320a5eb1b6265081`, 350002 bytes; SHA-256 `b945abef1f61838950c3d7708ae015434fb910a465bcf8a790b29fe9631cedb5`.

**Pruebas automáticas Chromium / Playwright:** comprobados primer inicio ES, carga AC1, pausa/reanudación, reemplazar texto largo por otro corto sin residuos, abrir `INPUT` directamente en VGA, escribir/borrar/confirmar por teclado, simulación de mando estándar con desplazamiento y entrada numérica completa, salto del bloque de calibración desde el prólogo, desbloqueo `1234` y entrada a AC4. Se probó adicionalmente guardar un `INPUT` incompleto, volver al menú y restaurar tanto el texto parcial como el panel numérico. Sin excepciones JavaScript en las rutas probadas. El código JS pasa `node --check`.

**Pendiente:** probar mandos físicos reales (Xbox, PlayStation y genéricos), reconexiones, mando en móvil, todas las decisiones de puzles y las 10 entradas en contexto real, guardado/reanudación en subrutinas y limpieza de texto de todas las escenas. No se afirma una validación integral de los cuatro actos.

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

## 5. Controles documentados (v0.6.0)

| Acción | Teclado | Mando Gamepad API |
| --- | --- | --- |
| Mover a Kane | Flechas / WASD | Stick izquierdo o cruceta |
| Acción | Espacio / Enter | A o RT |
| Mirar / actuar | 5 | B o LT |
| Salir de una zona (cuando proceda) | E | X |
| Seleccionar respuesta numérica (0–9) | Tecla correspondiente | LB/RB escoge dígito; Y lo envía |
| Editar un `INPUT` numérico | Escribir dígitos, Retroceso, Enter | LB/RB o cruceta arriba/abajo; A añadir; B/X borrar; Y/START confirmar |
| Pausa | Esc / F10 | START fuera de `INPUT` |
| Menús | Ratón / teclado | Stick o cruceta navegar; A confirmar |
| Volver al menú | Botón Menú | SELECT/BACK |
| Desbloquear los cuatro actos | 1234 en el menú | Código numérico desde teclado (no se ha añadido un atajo de admin directo por mando) |
| Ajustar velocidades | Deslizadores | Interfaz gráfica; la velocidad no depende de la calibración |

La antigua secuencia `Haut/Gauche + Touche 5` / `Bas/Droite + Touche 6` de `LOPTUN.BAS` **ya no se ejecuta**. El mando debe ser reconocido por el navegador; no se ha probado aún físicamente.

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
| Remastered 2.5D anterior | **Archivado** | No se trabaja en él. El próximo remake será exclusivamente 2D con sprites. |
| Idiomas francés, español e inglés | **Implementados en v0.5** | 316 cadenas francesas detectadas en PRINT/INPUT y texto de interfaz; probar la lectura/cortes en todos los puzles. |
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

 de mirar/actuar, dinero, pistas y respuestas. **No traducir valores lógicos internos**, solo lo visible.
3. Confirmar los cambios de idioma durante una partida guardada y, si se necesita, crear un repintado seguro de diálogos sin destruir fondos/sprites.
4. Mejorar la accesibilidad y legibilidad si alguna frase es demasiado larga para la pantalla VGA original.
5. Seguir validando finales, continuidad y guardado a mitad de las subrutinas BASIC.

### Etapa B — Nuevo remake 2D con sprites (después de estabilizar el clásico)

1. Construir un **atlas de escenas** del original (captura, mapa, interacción, objetos clicables/observables, puzles, NPC, entradas/salidas).
2. Sustituir el dibujo programático por **fondos y atlas de sprites 2D** para cada escena y acto. Prohibido incorporar 2.5D/3D salvo nueva instrucción explícita del usuario.
3. Rediseñar a Kane con animaciones completas: reposo, andar en dos direcciones, mirar, usar objeto, interactuar, reacciones, transiciones y posibles secuencias cinemáticas.
4. Redibujar **todos los elementos necesarios para los puzles**; validar que las pistas se ven con sprites nuevos, comparando visualmente con el modo VGA clásico conservado.
5. Animaciones de NPC, vehículos (taxi), máquinas y decorados; parallax, luz y sombras sin sacrificar legibilidad.
6. Audio por escena/acción, efectos asociados a acciones correctas y música original; volumen configurable, mute y compatibilidad móvil.
7. Mejorar interfaz moderna, mando, guardados, opciones, pausa y tutorial; conservar el Clásico como versión independiente, sin obligación de botón Original/Remastered.

### Etapa C — Validación y lanzamiento

- Recorrer **todos los actos y puzles** de principio a fin, documentando la secuencia y comparando con BASIC.
- Probar teclado/mando/táctil y Chrome/Edge/Firefox, tanto escritorio como móvil.
- Revisar rendimiento y gráficos en equipos modestos, imagen escalada y audio desbloqueado por gesto del usuario.
- Preparar GitHub Pages, capturas promocionales, instrucciones y versión `v1.0` cuando el estado esté realmente validado.

## 8. Reglas para la siguiente conversación

1. **Abrir y leer primero** este `SEGUIMIENTO_PROYECTO.md`, `README.md`, `index.html`, `clasico.html` y, cuando sea preciso, el `.BAS` correspondiente. No desarrollar una aventura genérica sustituyendo la original.
2. **Partir siempre del último commit real de GitHub**; no reconstruir desde una versión antigua ni sobreescribir mejoras de la otra edición.
3. **Priorizar exclusivamente el Clásico v0.5**. No actualizar el archivo `archive/remastered_v0_4.html`. Cuando llegue el remake, será **2D con sprites** y tendrá desarrollo independiente o un motor común explícitamente planificado.
4. **Conservar los originales intactos** bajo `original/` (no modificar archivos históricos para arreglar el port).
5. **No perder las mejoras solicitadas**: paleta VGA, ritmo controlable, taxi rápido, dos posturas de marcha, `1234` como admin, pausa, joystick, guardado, idiomas FR/ES/EN y actos I–IV. La Vista VGA F6 era específica del Remastered archivado.
6. Por cada versión futura: actualizar **versión**, **historial de cambios**, **problemas abiertos**, **pruebas ejecutadas** y **commit** en este fichero. Indicar explícitamente lo que no se ha probado.
7. No anunciar “conversión completa” o “todos los puzles validados” sin pruebas de recorrido completas.
8. Si se añaden nuevas animaciones o minijuegos, comprobar que los comandos de usuario no se consuman por encima del refresco de pantalla.
9. No dar por publicado GitHub Pages sin comprobar su estado real. Cualquier traducción debe conservar los nombres, números, códigos de puzles y opciones numeradas. No modificar los `.BAS` originales.
10. Si el nuevo chat tiene acceso al GitHub conectado, **subir los cambios directamente** a `ivopixl/Loptun-Chapter-1`, actualizar `i18n/texts_v0_5.json` al cambiar las frases y proporcionar enlaces al commit y al HTML.

## 9. Texto para iniciar un nuevo chat

> Continuamos **Loptun: La légende de Kane** (IVOSOFT), juego QuickBASIC convertido a HTML5, repositorio https://github.com/ivopixl/Loptun-Chapter-1. **Lee primero `SEGUIMIENTO_PROYECTO.md`, `README.md`, `index.html` e `i18n/texts_v0_5.json` en main**. La versión principal es **Clásico VGA v0.6.0 trilingüe (francés corregido, español e inglés)**. El usuario **ha aparcado Remastered 2.5D**: está archivado en `archive/remastered_v0_4.html`. El futuro remake será **puramente 2D con sprites y escenarios 2D**, nunca 3D sin petición expresa. Mantén los cuatro actos y todos los acertijos, los nombres y códigos originales, las dos fases de marcha, la paleta VGA, la velocidad de taxi independiente, Admin `1234`, pausa, teclado/mando/táctil, guardado y selector de idioma. Tras cada entrega prueba lo implementado, actualiza este seguimiento y sube el HTML y documentos a GitHub. No afirmes recorridos completos sin haberlos validado.

## 10. Registro de futuras entregas (rellenar al actualizar)

| Fecha | Versión | Cambios principales | Pruebas realizadas | Problemas pendientes | Commit |
|---|---|---|---|---|---|
| 2026-11-09 | 0.4 (base) | Remastered 2.5D y Clásico; código y fuentes preservadas | Inicio de los cuatro actos, visuales y controles parciales | Recorridos completos, guardado dentro de GOSUB, escenarios interactivos remasterizados | `372989c` (base previa a este documento) |
| 2026-11-09 | **0.5** | **Clásico trilingüe FR/ES/EN**, 316 textos corregidos/traducidos, selector inicial, mejora de caracteres VGA, Remastered archivado | Playwright: tres idiomas, inicio I, acceso IV, pausa, Admin 1234, sin errores en rutas probadas | Validar todos los diálogos y cortes VGA, recorridos y puzzles completos, mando real | `3cf69f1` (index), `fbc072b` (clasico), `e03a514` (diccionario) |

| 2026-11-09 | **0.5.1** | Corrección de colas de glifos en texto VGA (p/q/g/j/y/ç/Ç/Q y signos); sin cambios de mecánicas | Chromium: render de glifos, acto I, pausa, Admin 1234, sin errores JS | Comprobar textos en escenas completas, en móvil y mandos reales | `20fd176` (index), `28049de` (clasico) |

| 2026-11-09 | **0.6.0** | Mando moderno con Gamepad API; calibración DOS omitida; limpieza de frases antiguas; INPUT numérico en pantalla VGA | Chromium: escritura/borrado/confirmación de código, gamepad simulado, reemplazo de texto, pausa, Admin, arranque de AC1/AC4, salto de calibración; node --check | Probar mando físico y recorridos/puzles completos | `c495467` (index final), `d8a28a0` (clasico final) |

---

**Este documento es la referencia de continuidad del proyecto.** Cuando haya discrepancias, el último código del repositorio y los `.BAS` originales son las referencias técnicas; actualizar el seguimiento para reflejar el estado real y no conjeturas.