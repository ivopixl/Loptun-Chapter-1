# Loptun: La légende de Kane — HTML5

Conversión a HTML5 del juego QuickBASIC original de **IVOSOFT** (1993–1997).

**Versión actual: Clásico VGA v0.5.1, trilingüe (francés, español e inglés).**

## Jugar

- **[Jugar / descargar HTML5 clásico](index.html)** — versión principal, autónoma, sin instalación.
- **[Enlace histórico al clásico](clasico.html)** — misma versión v0.5.1.
- Si GitHub Pages está activado: https://ivopixl.github.io/Loptun-Chapter-1/

Al entrar por primera vez aparece el selector de idioma 🇫🇷 / 🇪🇸 / 🇬🇧. También puedes cambiarlo desde el menú superior. Los textos que ya están dibujados en la pantalla VGA se actualizarán al aparecer el siguiente diálogo, no retroactivamente.

## Novedades v0.5.1

- **Corregidos los glifos VGA cortados**: ahora las letras `p`, `q`, `g`, `j` e `y`, la cedilla y otros signos muestran su parte inferior completa. La fuente mantiene 8×8 píxeles y la misma cuadrícula original (320×200).

### Cambios anteriores (v0.5)

- Revisión y corrección de **316 frases originales en francés** extraídas de `PRINT` y `INPUT`, y traducciones al **español** y al **inglés**, conservando nombres, códigos y pistas de los puzles.
- Interfaz traducida: menú, ayuda, pausa, guardado y controles.
- Mejora de la legibilidad de los caracteres en la pantalla VGA de 320 × 200, incluidos acentos, eñes y signos de puntuación.
- Se conservan el desplazamiento clásico, las dos posturas de marcha, la velocidad de taxi independiente, el guardado, teclado, controles táctiles y joystick mediante Gamepad API.
- El código administrador **1234** sigue desbloqueando los cuatro actos desde el menú.

La versión **Remastered 2.5D anterior está aparcada** y preservada en [archive/remastered_v0_4.html](archive/remastered_v0_4.html). **El futuro remake será 100 % 2D, con nuevos sprites y fondos 2D**, no 3D.

## Controles

| Función | Teclado / mando |
| --- | --- |
| Mover | Flechas / WASD; stick izquierdo o cruceta |
| Acción | Espacio; botón A |
| Cambiar entre mirar y actuar | Tecla 5; botón B/X |
| Opciones de puzles | Teclas 1, 2, 3... |
| Salir (en zonas permitidas) | E |
| Pausa | Esc / F10 / START |
| Desbloqueo administrador | Teclea **1234** |
| Velocidad | Deslizadores del juego y del taxi |

## Estructura del repositorio

| Archivo o carpeta | Contenido |
| --- | --- |
| `index.html` | Clásico multidioma v0.5, entrada principal |
| `clasico.html` | Copia v0.5 para enlaces existentes |
| `original/` | 13 archivos DOS/QuickBASIC originales, **sin modificar** |
| `i18n/texts_v0_5.json` | Diccionario de correcciones/traducciones del juego |
| `archive/remastered_v0_4.html` | Copia histórica de Remastered 2.5D (no es la versión activa) |
| **[SEGUIMIENTO_PROYECTO.md](SEGUIMIENTO_PROYECTO.md)** | **Documento maestro**: historial de cambios, estado y tareas pendientes para continuar en otro chat |

## Estado de las pruebas

Beta: se han verificado selección de los tres idiomas, menú e inicio del acto I, acceso por código al acto IV, pausa/reanudación y textos concretos. **No se han recorrido todos los acertijos ni los cuatro finales de principio a fin.** El sonido es una síntesis aproximada, no una emulación exacta de Sound Blaster.

## GitHub Pages

En **Settings → Pages** selecciona **Deploy from a branch**, rama `main`, directorio `/(root)`. No se considera habilitado hasta confirmar la publicación.

## Autoría y derechos

Juego y archivos históricos: **IVOSOFT**. Se mantienen en el repositorio por decisión de su autor, sin declarar una licencia pública de reutilización.

## Continuidad entre chats

Leer primero **[SEGUIMIENTO_PROYECTO.md](SEGUIMIENTO_PROYECTO.md)**, `index.html` y `i18n/texts_v0_5.json`. Tras cada nueva versión, actualizar el seguimiento y verificar el HTML antes de publicarlo.
