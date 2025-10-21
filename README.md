# 🧠⚖️ Club IA Legal - Dashboards Interactivos

<div align="center">

![Club IA Legal](https://img.shields.io/badge/Club-IA%20Legal-4A9B8E?style=for-the-badge&logo=scales&logoColor=white)
![GitHub Pages](https://img.shields.io/badge/GitHub-Pages-222222?style=for-the-badge&logo=github&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

**Dashboards interactivos para visualizar y seguir los aspectos más importantes de las actividades del Club IA Legal**

[🌐 Ver Demo](https://tu-usuario.github.io/club-ia-legal) • [📖 Documentación](#características) • [🚀 Instalación](#instalación)

</div>

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

## 🛠️ Tecnologías Utilizadas

Este proyecto está construido con tecnologías web estándar, sin dependencias externas:

### Frontend
```
📄 HTML5          - Estructura semántica
🎨 CSS3           - Estilos modernos con CSS Variables, Grid y Flexbox
⚡ JavaScript     - Interactividad y lógica de negocio (Vanilla JS)
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
   ```bash
   # Haz clic en el botón "Fork" en GitHub
   ```

2. **Habilita GitHub Pages**
   - Ve a Settings → Pages
   - En "Source" selecciona la rama `main`
   - Guarda los cambios

3. **Accede a tu dashboard**
   ```
   https://tu-usuario.github.io/club-ia-legal
   ```

### Opción 2: Local

1. **Clona el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/club-ia-legal.git
   cd club-ia-legal
   ```

2. **Abre el dashboard**
   ```bash
   # Simplemente abre el archivo index.html en tu navegador
   # O usa un servidor local:
   python -m http.server 8000
   # o con Node.js:
   npx http-server
   ```

3. **Navega a**
   ```
   http://localhost:8000
   ```

## 📂 Estructura del Proyecto

```
club-ia-legal/
├── 📁 IA & Práctica Jurídica/
│   └── index.html                    # Dashboard: Legal Prompting
├── 📁 Gestión de Riesgo/
│   └── dashboard-ia-legal/
│       └── index.html                # Dashboard: Gestión de Riesgos en IA
├── 📁 assets/
│   ├── 🖼️ images/                    # Imágenes y logos
│   └── 📄 documents/                 # Documentos fuente (.txt, .docx)
└── 📄 README.md                      # Este archivo
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
| Legal Prompting & Hot Takes | 19 Oct 2025 | María Angélica Ramírez | [Ver →](./IA%20&%20Práctica%20Jurídica/index.html) |
| Gestión de Riesgos en IA | TBD | TBD | [Ver →](./Gestión%20de%20Riesgo/dashboard-ia-legal/index.html) |

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si deseas agregar nuevos dashboards o mejorar los existentes:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nuevo-dashboard`)
3. Commit tus cambios (`git commit -m 'Agregar dashboard de [Tema]'`)
4. Push a la rama (`git push origin feature/nuevo-dashboard`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 👥 Autores

**Club IA Legal**
- Website: [Club IA Legal](https://www.linkedin.com/company/club-ia-legal)
- LinkedIn: [@clubialegal](https://www.linkedin.com/company/club-ia-legal)

## 🙏 Agradecimientos

- A todos los ponentes y participantes del Club IA Legal
- A la comunidad de profesionales del derecho interesados en IA
- A los organizadores y colaboradores del proyecto


## 📞 Contacto

**Club IA Legal** - Comité Laboratorio

- 🌐 Website: https://clubialegal.org/
- 💼 LinkedIn: https://linkedin.com/company/club-ia-legal
- 🤖 Nas.io: https://lnkd.in/d7uDCMJM
- 📧 Email: contacto@clubialegal.com


**⭐ Si te resultó útil este proyecto, considera darle una estrella en GitHub ⭐**

Hecho con ❤️ por el Club IA Legal

</div>
