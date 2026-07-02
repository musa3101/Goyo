# Manual de Gestión de Imágenes y Contenido con Supabase
## Cliente: Ecuaplac (J&G)

Este manual explica de forma clara y paso a paso cómo tú o el cliente final podéis actualizar las imágenes y los textos de la página web de Ecuaplac de manera dinámica desde el panel de control de Supabase, sin necesidad de tocar código ni interactuar con GitHub.

---

### Paso 1: Optimizar la nueva imagen (Crucial para la velocidad)
Antes de subir cualquier imagen a la web, es obligatorio optimizarla para que el sitio cargue rápido y el SEO de Google no se vea afectado.

1. Entra en la herramienta gratuita de Google: **[Squoosh.app](https://squoosh.app)**.
2. Sube la foto original (ya sea un baño, cerramiento, techo, etc.).
3. En la barra de la derecha:
   * Cambia el formato a **WebP** (es el formato moderno que usa la web).
   * Reduce la calidad (Quality) a **75%** o **80%**. Esto mantiene una calidad visual excelente pero reduce el peso drásticamente.
   * Si la imagen es muy grande (más de 2000px de ancho), redimensiónala a un ancho máximo de **1000px o 1200px** usando la sección *Resize*.
4. Descarga la imagen optimizada. Asegúrate de que el archivo pese **menos de 150 KB**.

---

### Paso 2: Subir la imagen a Supabase Storage
Para que la web cargue la imagen desde internet, la foto debe estar guardada en un servidor público. Supabase incluye un gestor de archivos para esto.

1. Inicia sesión en **[Supabase](https://supabase.com)** con los datos de acceso de `ecuaplacbyyg@gmail.com`.
2. Entra en el proyecto correspondiente.
3. En la barra lateral izquierda, haz clic en el icono del cubo llamado **Storage** (Almacenamiento).
4. Dentro de Storage, entra en el bucket público de almacenamiento (si no existe, crea uno nuevo y llámalo `portfolio`, asegurándote de marcar la casilla **Public**).
5. Arrastra y suelta la imagen WebP optimizada en el navegador para subirla.
6. Una vez subida, haz clic en los **tres puntos** al lado del archivo y selecciona **"Copy URL"** o **"Get URL"**. Esto copiará la dirección web de la imagen (un enlace de tipo `https://wkfddccsantywcrsxpox.supabase.co/storage/...`).

---

### Paso 3: Actualizar la base de datos (Table Editor)
Con el enlace de la imagen copiado, ahora debemos indicarle a la web qué fila o proyecto debe usar esa imagen.

1. En la barra lateral de Supabase, haz clic en el icono de la cuadrícula llamado **Table Editor** (Editor de Tablas).
2. Verás dos tablas principales asociadas a la web de Ecuaplac:
   * **`ecuaplac_carousel`**: Controla las fotos que giran en la página de inicio (Home).
   * **`ecuaplac_projects`**: Controla la lista de reformas y el carrusel de la galería inferior de la página de reformas.
3. Haz clic en la tabla que desees modificar:
   * **Para cambiar una foto del inicio (`ecuaplac_carousel`)**:
     * Busca la fila del proyecto que quieras modificar.
     * Ve al campo **`image_url`** y haz doble clic sobre él.
     * Borra el contenido actual y pega el enlace de la imagen que copiaste en el *Paso 2*.
     * Pulsa **Enter** o haz clic fuera para guardar el cambio.
   * **Para cambiar una foto de la galería de reformas (`ecuaplac_projects`)**:
     * Busca la fila correspondiente.
     * Tienes dos columnas de imágenes por fila: **`image_before`** (Antes / Fase de obra) e **`image_after`** (Después / Finalizado).
     * Haz doble clic en el campo que quieras cambiar, pega el nuevo enlace de la imagen y guarda.

---

### Paso 4: Cambiar Textos y Traducciones (Opcional)
Si además de la foto necesitas cambiar el título, la ubicación o los textos del proyecto:
* Los campos terminados en **`_es`** controlan el texto en la versión en español de la web (por ejemplo, `title_es`, `location_es`, `description_es`).
* Los campos terminados en **`_en`** controlan los mismos textos para la versión en inglés (`title_en`, `location_en`, `description_en`).
* Solo tienes que hacer doble clic sobre la celda del texto que quieras cambiar, escribir el nuevo texto y pulsar **Enter**.

---

### Paso 5: Comprobar los cambios en la web
1. Abre la página web de Ecuaplac (o refresca si ya la tienes abierta).
2. Los cambios se reflejarán **inmediatamente** sin necesidad de redesplegar el código en GitHub ni en Cloudflare. La web consulta directamente los datos actualizados a Supabase en cada visita.
