-- Tabla de Galería de Proyectos (Antes y Después)
CREATE TABLE IF NOT EXISTS ecuaplac_projects (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    title_es TEXT NOT NULL,
    title_en TEXT NOT NULL,
    description_es TEXT,
    description_en TEXT,
    category_es TEXT,
    category_en TEXT,
    image_before TEXT NOT NULL,
    image_after TEXT NOT NULL,
    caption_before_es TEXT,
    caption_before_en TEXT,
    caption_after_es TEXT,
    caption_after_en TEXT,
    description_before_es TEXT,
    description_before_en TEXT,
    description_after_es TEXT,
    description_after_en TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    active BOOLEAN DEFAULT true,
    sort_order INTEGER DEFAULT 0
);

-- Tabla de Carrusel de Portafolio en la Home
CREATE TABLE IF NOT EXISTS ecuaplac_carousel (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    title_es TEXT NOT NULL,
    title_en TEXT NOT NULL,
    location_es TEXT NOT NULL,
    location_en TEXT NOT NULL,
    image_url TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    active BOOLEAN DEFAULT true,
    sort_order INTEGER DEFAULT 0
);

-- Habilitar Seguridad a Nivel de Fila (RLS)
ALTER TABLE ecuaplac_projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE ecuaplac_carousel ENABLE ROW LEVEL SECURITY;

-- Políticas de lectura pública para que cualquier visitante pueda ver los datos
CREATE POLICY "Permitir lectura pública de proyectos ecuaplac" ON ecuaplac_projects
    FOR SELECT USING (active = true);

CREATE POLICY "Permitir lectura pública de carrusel ecuaplac" ON ecuaplac_carousel
    FOR SELECT USING (active = true);
