# Bitacora compartida para jugadores

GitHub Pages no puede guardar cambios por si solo. La bitacora ya esta preparada para sincronizarse con Supabase, pero falta crear la base de datos y pegar las claves publicas del proyecto.

## 1. Crear la base de datos

1. Crea un proyecto en Supabase.
2. Abre el SQL Editor.
3. Copia y ejecuta el contenido de `supabase-bitacora.sql`.

## 2. Pegar las claves en la web

En `bitacora-de-ecos-en-la-costa-v2-zoom-export.html`, busca:

```js
const SUPABASE_CONFIG = {
    url: "",
    anonKey: "",
    table: "campaign_journal",
    rowId: "ecos-costa"
};
```

Rellena `url` con la Project URL de Supabase y `anonKey` con la anon public key.

## 3. Subir a GitHub

Sube estos archivos junto con el resto de la web:

- `index.html`
- `bitacora-de-ecos-en-la-costa-v2-zoom-export.html`
- `supabase-bitacora.sql`

Cuando `url` y `anonKey` esten configuradas, los jugadores veran la misma bitacora. Si no estan configuradas, seguira funcionando en modo local para cada navegador.

## Nota de seguridad

La configuracion de `supabase-bitacora.sql` permite leer y escribir a cualquiera que tenga la web. Es practica para una mesa privada, pero no es una zona segura si publicas el enlace abiertamente.
