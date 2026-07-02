# Reglas de Proyecto para Ecuaplac

## Configuración de Supabase
El backend del proyecto está conectado a la cuenta dedicada del cliente. Las credenciales activas son:
- **Supabase URL:** `https://wkfddccsantywcrsxpox.supabase.co`
- **Publishable Key (Anon Key):** `sb_publishable_ym3HAoFGlToeBAQu1yMd3A_m7Gx4GNI`

Estas claves están configuradas en los archivos HTML:
- `index.html`
- `index-en.html`
- `reformas.html`
- `reformas-en.html`

## Estructura de la Base de Datos
La estructura de tablas y las filas iniciales se definen en el archivo [supabase_schema.sql](../supabase_schema.sql) en la raíz del proyecto. Si es necesario restablecer o sincronizar la base de datos, ejecuta ese script completo en el SQL Editor de Supabase.

## Envío de Formularios
El formulario de la web envía correos directamente a la dirección **`ecuaplac.jyg.sl@gmail.com`** usando FormSubmit.co. No se almacena este historial en la base de datos de Supabase por privacidad y comodidad de acceso del cliente.
