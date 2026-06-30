# Resumen de Sesión - 30 de Junio de 2026

¡Hola! Aquí tienes el resumen de todos los cambios que hemos realizado hoy en la web de **Ecuaplac**:

### ¿Qué se ha hecho hoy?
1. **Carrusel Swiper 3D en Móvil:** Implementamos un nuevo carrusel táctil Coverflow 3D exclusivo para móviles y tablets. Ajustamos la velocidad de transición (5.5s), la opacidad de los lados (45%) y eliminamos las "cajetillas negras" vacías en los lados para un efecto flotante limpio.
2. **Sincronización Total al Inglés:** Traducimos completamente al inglés todas las nuevas secciones añadidas en español (incluyendo marcadores del formulario, tarjetas FAQ actualizadas y políticas legales).
3. **Enlaces del Footer y Términos:** Corregimos los enlaces legales del pie de página para que bajen automáticamente hasta su respectiva sección. También renombramos "Uso del Portal" a "Términos y Condiciones de Uso" para mayor claridad.
4. **Mini-Header y Logos:** Ajustamos el tamaño del logo en móviles e integramos la franja de Ecuador en el menú móvil para simular un header premium.
5. **Vista Previa al Compartir (WhatsApp):** Cambiamos la etiqueta `og:image` de SVG a un formato rasterizado (.webp) para garantizar que, cuando compartas el enlace, WhatsApp muestre correctamente el logo de Ecuaplac.

### Archivos Modificados
- `index.html` (Español)
- `index-en.html` (Inglés)
- `reformas.html` (Español)
- `reformas-en.html` (Inglés)
- `aviso-legal.html` (Español)
- `legal-notice.html` (Inglés)

### Problemas Solucionados
- Bug de traducción en el menú móvil donde se leía "ES - ES".
- Marcadores de formulario y textos del footer que seguían en español en la versión inglesa.
- El link de compartir no cargaba la imagen del logo en redes sociales por estar en formato SVG.

### ¿Qué queda pendiente?
- Ningún cambio técnico inmediato. La web ha sido subida con éxito a GitHub y GitLab, por lo que Cloudflare ya la está sirviendo en producción con los cambios.
