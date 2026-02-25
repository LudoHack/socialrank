# EtnoDB — Inicio Rápido

## 1. Backend (Python + FastAPI)

```bash
# Copia el archivo de variables de entorno
cp backend/.env.example backend/.env

# Edita backend/.env con tus datos:
DATABASE_URL=postgresql://usuario:contraseña@localhost:5432/etnografica
CLAUDE_API_KEY=sk-ant-...

# Crea la base de datos en PostgreSQL
createdb etnografica

# Instala dependencias (ya hecho)
cd backend && pip install -r requirements.txt

# Inicia el servidor
cd backend && uvicorn main:app --reload --port 8000
```

La API corre en http://localhost:8000
Documentación automática: http://localhost:8000/docs

---

## 2. Frontend (React + Vite)

```bash
# Desarrollo
cd frontend && npm run dev
# → http://localhost:5173

# Producción (genera dist/)
cd frontend && npm run build
# Sube la carpeta dist/ a tu servidor
```

---

## 3. Uso básico

1. Abre http://localhost:5173
2. Ve a **Proyectos** → crea tu primer proyecto
3. Descarga el **template Excel** desde la pantalla de upload
4. Rellena el Excel con tus datos de investigación
5. Sube el Excel al proyecto → los datos se distribuyen automáticamente
6. Explora los 10 módulos del dashboard

---

## 4. Módulos disponibles

| Módulo | Descripción |
|--------|-------------|
| 📊 Dashboard | Resumen general con radar emocional y semáforo |
| 📖 Narrativas | Historias dominantes, emergentes y contrarrelatos |
| 🎭 Emociones | Radar emocional colectivo (ira, miedo, esperanza...) |
| 👤 Arquetipos | Perfiles culturales del votante/audiencia |
| 💬 Lenguaje | Términos, memes, frases y símbolos en circulación |
| 🌐 Comunidades | Mapa de grupos digitales y su influencia |
| ⚠️ Riesgos | Semáforo de amenazas críticas |
| 📈 Evolución | Línea de tiempo histórica |
| 🤖 Simulación IA | Simula cómo reaccionarán los arquetipos a un mensaje |
| 💡 Recomendaciones IA | Claude genera estrategia completa de comunicación |

---

## 5. Variables de entorno

| Variable | Descripción |
|----------|-------------|
| `DATABASE_URL` | Conexión PostgreSQL |
| `CLAUDE_API_KEY` | Clave de API de Anthropic |
| `ENVIRONMENT` | `development` o `production` |

---

## 6. Estructura del Excel template

Cada hoja corresponde a un módulo:
- **narrativas**: texto, tipo, actor, fecha, peso
- **emociones**: tipo, intensidad, fuente, fecha, notas
- **arquetipos**: nombre, descripcion, peso_relativo, emocion, canales, valores_clave, miedos
- **lenguaje**: termino, tipo, frecuencia, contexto, fecha
- **comunidades**: plataforma, nombre, tipo, tamanio, descripcion, influencia
- **riesgos**: tema, descripcion, nivel, velocidad, fecha
