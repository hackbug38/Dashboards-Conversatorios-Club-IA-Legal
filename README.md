# 🧠⚖️ Club IA Legal - Dashboards Interactivos

![Club IA Legal](https://img.shields.io/badge/Club-IA%20Legal-4A9B8E?style=for-the-badge&logo=scales&logoColor=white)
![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-222222?style=for-the-badge&logo=github&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

Dashboards interactivos para visualizar y seguir los aspectos más importantes de las actividades del Club IA Legal

[🌐 Ver Demo](https://hackbug38.github.io/Dashboards-Conversatorios-Club-IA-Legal/)

---

## 📋 Descripción

Este repositorio contiene **dashboards interactivos** diseñados para documentar y hacer seguimiento de los puntos más relevantes de los conversatorios, talleres y eventos del **Club IA Legal**. Cada dashboard permite a los usuarios:

- ✅ Marcar puntos como leídos/completados
- 📊 Visualizar progreso de lectura en tiempo real
- 🎯 Filtrar contenido por categorías temáticas
- 📱 Acceder desde cualquier dispositivo (diseño responsive)
- 💾 Guardar progreso localmente (localStorage)

## ✨ Características

### 🎨 Interfaz Moderna y Profesional

- Diseño limpio con paleta de colores corporativa
- Sistema de tarjetas interactivas con categorías visuales
- Sidebar dinámico con estadísticas en tiempo real
- Animaciones suaves y transiciones fluidas

### 📊 Seguimiento de Progreso

- Barra de progreso visual actualizada automáticamente
- Contador de puntos completados vs totales
- Sistema de checkboxes interactivos
- Funciones rápidas: marcar todos, desmarcar todos, reiniciar

### 🎯 Vistas Múltiples

- **Vista Detallada**: Contenido completo de cada punto
- **Vista Compacta**: Resúmenes concisos en formato grid
- Cambio instantáneo entre vistas sin perder progreso

### 🏷️ Sistema de Categorías

- Etiquetas de categoría con códigos de color
- Iconos descriptivos para cada tipo de contenido
- Lista dinámica de categorías en sidebar
- Contadores por categoría

### 📱 Totalmente Responsive

- Adaptable a desktop, tablet y móvil
- Sidebar se reposiciona automáticamente
- Grid responsive en vista compacta
- Optimizado para pantallas pequeñas

### 🎬 Reproductor de Video (Dashboard 3)

- Página dedicada de Resumen Audiovisual
- Reproductor HTML5 con controles completos
- Soporte para búsqueda en video (HTTP Range Requests)
- Audio y video en sincronía
- Botón de regreso a dashboard
- Diseño limpio y minimalista

## 🛠️ Tecnologías Utilizadas

Este proyecto está construido con tecnologías web estándar, sin dependencias externas:

### Frontend

```text
HTML5          - Estructura semántica
CSS3           - Estilos modernos con CSS Variables, Grid y Flexbox
JavaScript     - Interactividad y lógica de negocio (Vanilla JS)
```

### Características Técnicas

- **CSS Variables** para theming consistente
- **CSS Grid & Flexbox** para layouts responsivos
- **Event Delegation** para manejo eficiente de eventos
- **LocalStorage** para persistencia de datos
- **Diseño Mobile-First** con media queries
- **Sin frameworks** - Código ligero y rápido

## 🚀 Instalación

### Opción 1: GitHub Pages (Recomendado)

1. **Fork este repositorio**
   
   Haz clic en el botón "Fork" en GitHub

2. **Habilita GitHub Pages**
   
   - Ve a Settings → Pages
   - En "Source" selecciona la rama `main`
   - Guarda los cambios

3. **Accede a tu dashboard**
   
   ```text
   https://tu-usuario.github.io/Dashboards-Conversatorios-Club-IA-Legal/
   ```

### Opción 2: Local

1. **Clona el repositorio**

   ```bash
   git clone https://github.com/tu-usuario/Dashboards-Conversatorios-Club-IA-Legal.git
   cd Dashboards-Conversatorios-Club-IA-Legal
   ```

2. **Abre el dashboard**

   ```bash
   # Simplemente abre el archivo index.html en tu navegador
   # O usa un servidor local:
   python -m http.server 8000
   ```

3. **Navega a**

   ```text
   http://localhost:8000
   ```

## 📂 Estructura del Proyecto

```text
├── 📄 index.html                     # Punto de entrada principal
├── 📄 home.html                      # Hub de navegación central
├── 📄 README.md                      # Este archivo
├── 📄 .gitignore                     # Configuración git
├── 📄 .gitattributes                 # Configuración Git LFS
├── 📄 CONTRIBUTING.md                # Guía de contribución
│
├── 📁 .github/                       # Configuración GitHub
│   ├── BRANCH_POLICY.md              # Política de gestión de ramas
│   ├── PULL_REQUEST_TEMPLATE.md      # Template para PRs
│   └── workflows/                    # GitHub Actions
│
├── 📁 dashboard1/                    # Dashboard: Gestión de Riesgos
│   ├── index.html
│   ├── mapa_mental.html
│   ├── club_ia_legal_banner_v3.png
│   └── README.md
│
├── 📁 dashboard2/                    # Dashboard: Legal Prompting
│   ├── index.html
│   ├── mapa_mental.html
│   ├── club_ia_legal_banner_v3.png
│   └── README.md
│
├── 📁 dashboard3/                    # Dashboard: Cerebros Sintéticos ⭐
│   ├── index.html                    # 16 puntos conversatorios
│   ├── mapa_mental.html              # Visualización D3.js interactiva
│   ├── resumen_audiovisual.html      # Página de video
│   ├── club_ia_legal_banner_v3.png
│   └── README.md
│
├── 📁 dashboard4/                    # Dashboard: (Próximo evento)
│   ├── index.html
│   ├── mapa_mental.html
│   ├── club_ia_legal_banner_v3.png
│   └── README.md
│
├── 📁 docs/                          # Documentación del proyecto
│   ├── BRANCH_ANALYSIS.md            # Análisis de ramas
│   ├── CAMBIOS_REALIZADOS.txt
│   ├── CHECKLIST_FINAL.txt
│   ├── GITHUB_PUSH_INSTRUCTIONS.md
│   ├── PUSH_RAPIDO.md
│   └── TAREAS_COMPLETADAS.md
│
├── 📁 contenido/                     # Archivos de contenido
│   └── Cerebros_Digitales_Hot_Takes.txt
│
├── 📁 media/                         # Archivos multimedia
│   └── (videos, imágenes, audio)
│
└── 📁 scripts/                       # Scripts de utilidad
    └── find-lfs-in-pages.ps1         # Verificación LFS Pages
```
│   └── README.md
│
├── 📁 dashboard3/                    # Dashboard: Cerebros Sintéticos ⭐ NUEVO
│   ├── index.html                    # 16 puntos conversatorios
│   ├── mapa_mental.html              # Visualización D3.js interactiva
│   ├── club_ia_legal_banner_v3.png
│   └── README.md
│
├── � docs/                          # Documentación del proyecto
│   ├── CAMBIOS_REALIZADOS.txt
│   ├── CHECKLIST_FINAL.txt
│   ├── GITHUB_PUSH_INSTRUCTIONS.md
│   ├── PUSH_RAPIDO.md
│   └── TAREAS_COMPLETADAS.md
│
├── 📁 contenido/                     # Archivos de contenido
│   ├── Cerebros_Digitales_Hot_Takes.txt
│   └── Cerebros_Digitales_Hot_Takes.docx
│
└── 📁 media/                         # Archivos multimedia
    └── (videos, audio, etc.)
```

## 🎯 Casos de Uso

### Para Asistentes a Eventos

- Revisar los puntos clave discutidos en el conversatorio
- Marcar temas ya estudiados
- Hacer seguimiento del progreso de aprendizaje

### Para Organizadores

- Documentar contenido de eventos de forma estructurada
- Compartir material de forma profesional
- Facilitar el acceso a información post-evento

### Para Investigadores

- Consultar conceptos específicos por categoría
- Acceder rápidamente a definiciones y metodologías
- Exportar/compartir contenido relevante

## 🎨 Personalización

### Cambiar Colores

Edita las variables CSS en el bloque `:root`:

```css
:root {
  --color-primary: #4A9B8E;           /* Color principal */
  --color-primary-hover: #3e8277;     /* Hover */
  --color-text: #2C3E50;              /* Texto principal */
  --color-background: #FFFCF9;        /* Fondo */
}
```

### Agregar Nuevo Dashboard

1. Crea una nueva carpeta con el tema del evento
2. Copia la estructura HTML base
3. Actualiza el contenido:
   - Título del evento
   - Puntos relevantes (`.point-card`)
   - Categorías y tags
   - Metadatos (fecha, ponente, etc.)

### Agregar Categorías

```html
<div class="category-tag tag-nueva-categoria">
  <span class="category-icon">🔥</span>
  <span class="category-name">Nueva Categoría</span>
</div>
```

```css
.tag-nueva-categoria { 
  background-color: #FF5733; 
}
```

## 📊 Eventos Documentados

| Evento | Fecha | Ponente | Dashboard |
|--------|-------|---------|-----------|
| Gestión de Riesgos en IA | 12 Oct 2025 | Luis Enríquez | [Ver →](./dashboard1/index.html) |
| Legal Prompting & Hot Takes | 19 Oct 2025 | María Angélica Ramírez | [Ver →](./dashboard2/index.html) |
| Cerebros Sintéticos, Derechos Reales | 26 Oct 2025 | Daniel Legaspi | [Ver →](./dashboard3/index.html) |

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si deseas agregar nuevos dashboards o mejorar los existentes:

### Flujo de Trabajo

1. **Fork el proyecto** en GitHub
2. **Clona tu fork** localmente

   ```bash
   git clone https://github.com/tu-usuario/Dashboards-Conversatorios-Club-IA-Legal.git
   cd Dashboards-Conversatorios-Club-IA-Legal
   ```

3. **Crea una rama** siguiendo la convención de nomenclatura

   ```bash
   git checkout -b feature/nuevo-dashboard-tema
   # o
   git checkout -b fix/correccion-bug
   # o
   git checkout -b docs/actualizar-documentacion
   ```

4. **Realiza tus cambios** y commitea con mensajes descriptivos

   ```bash
   git add .
   git commit -m "feat: agregar dashboard para evento X"
   ```

5. **Push a tu fork**

   ```bash
   git push origin feature/nuevo-dashboard-tema
   ```

6. **Abre un Pull Request** en GitHub

### Convención de Nomenclatura de Ramas

Consulta [`.github/BRANCH_POLICY.md`](./.github/BRANCH_POLICY.md) para detalles completos sobre:

- Prefijos de ramas (`feature/`, `fix/`, `chore/`, `docs/`)
- Ciclo de vida de ramas
- Política de limpieza
- Resolución de problemas comunes

### Guía de Contribución

Lee [`CONTRIBUTING.md`](./CONTRIBUTING.md) para información detallada sobre:

- Cómo configurar tu entorno de desarrollo
- Estándares de código
- Proceso de revisión de PRs
- Manejo de Git LFS para archivos multimedia

## 🔧 Gestión del Repositorio

### Git LFS (Large File Storage)

Este proyecto utiliza Git LFS para gestionar archivos grandes (videos, imágenes de alta resolución). Sin embargo, los archivos servidos por GitHub Pages **NO deben estar en LFS**.

**Archivos en LFS:** Videos en `/media/`  
**Archivos normales:** Imágenes PNG de banners en dashboards

Para más detalles, consulta [`docs/BRANCH_ANALYSIS.md`](./docs/BRANCH_ANALYSIS.md).

### Scripts de Utilidad

- **`scripts/find-lfs-in-pages.ps1`**: Verifica que no haya punteros LFS en archivos servidos por Pages

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 👥 Autores

### Club IA Legal

- Website: [Club IA Legal](https://www.linkedin.com/company/club-ia-legal)
- LinkedIn: [@clubialegal](https://www.linkedin.com/company/club-ia-legal)

## 🙏 Agradecimientos

- A todos los ponentes y participantes del Club IA Legal
- A la comunidad de profesionales del derecho interesados en IA
- A los organizadores y colaboradores del proyecto

## 📞 Contacto

**Club IA Legal** - Comité Laboratorio

- 🌐 Website: [https://clubialegal.org/](https://clubialegal.org/)
- 💼 LinkedIn: [https://linkedin.com/company/club-ia-legal](https://linkedin.com/company/club-ia-legal)
- 🤖 Nas.io: [https://lnkd.in/d7uDCMJM](https://lnkd.in/d7uDCMJM)
- 📧 Email: [contacto@clubialegal.com](mailto:contacto@clubialegal.com)

---

Si te resultó útil este proyecto, considera darle una estrella en GitHub ⭐

Hecho con ❤️ por el Club IA Legal

</div>
