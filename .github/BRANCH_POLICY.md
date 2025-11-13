# Política de Gestión de Ramas

## 📋 Convención de Nomenclatura

### Formato

```text
<tipo>/<descripción-corta>
```

### Tipos Permitidos

| Prefijo | Propósito | Ejemplo | Retención |
|---------|-----------|---------|-----------|
| `feature/` | Nueva funcionalidad | `feature/dashboard4-panel` | Hasta merge |
| `fix/` | Corrección de bugs | `fix/video-player-error` | Hasta merge |
| `chore/` | Mantenimiento/configuración | `chore/lfs-cleanup` | 7 días post-merge |
| `docs/` | Documentación | `docs/update-readme` | Hasta merge |
| `refactor/` | Refactorización de código | `refactor/optimize-styles` | Hasta merge |
| `hotfix/` | Parches urgentes en producción | `hotfix/security-patch` | Eliminar inmediatamente post-merge |
| `test/` | Pruebas y experimentación | `test/new-ui-component` | Hasta merge |

### ❌ Evitar

- Sufijos de fecha: `feature/dashboard-20251112`
- Nombres genéricos: `hackbug38-patch-1`
- Ramas temporales sin prefijo: `tmp-changes`

### ✅ Ejemplos Correctos

```bash
feature/dashboard4-cerebros-digitales
fix/lfs-pages-compatibility
chore/cleanup-unused-assets
docs/contributing-guidelines
refactor/modular-dashboard-structure
```

---

## 🔄 Ciclo de Vida de Ramas

### 1. Creación

```bash
# Desde main actualizado
git checkout main
git pull origin main
git checkout -b <tipo>/<descripcion>
```

### 2. Desarrollo

- Commits frecuentes y descriptivos
- Push regular al remoto
- Mantener sincronizado con `main`

### 3. Pull Request

- Título descriptivo en español
- Descripción clara de cambios
- Referencias a issues relacionados
- Revisión de código antes de merge

### 4. Post-Merge

```bash
# Eliminar rama local
git branch -d <nombre-rama>

# Eliminar rama remota
git push origin --delete <nombre-rama>
```

---

## 📊 Estado Actual de Ramas (Noviembre 2025)

### Ramas Activas

| Rama | Propósito | Estado | Acción |
|------|-----------|--------|--------|
| `main` | Rama principal | ✅ Activa | Mantener |
| `chore/remediate-pages-lfs-20251112` | Corrección LFS para GitHub Pages | 🔄 En desarrollo | Merge y renombrar futuros |
| `chore/lfs-pages-guards` | Guardas de protección LFS | ⏸️ Pausada | Evaluar merge o abandono |
| `chore/repo-cleanup-20251112` | Limpieza repositorio | ⏸️ Pausada | Evaluar consolidación |
| `chore/add-contributing-20251112` | Agregar CONTRIBUTING.md | ⏸️ Pausada | Merge pendiente |
| `feature/dashboard3-cerebros-sinteticos` | Dashboard conversatorio | ✅ Completada | Verificar merge |

### Ramas Históricas (Requieren Revisión)

| Rama | Última Actividad | Commits Únicos | Recomendación |
|------|------------------|----------------|---------------|
| `hackbug38-patch-1` | 06 Nov 2025 | 37 commits | **NO ELIMINAR** - Contiene historial completo del proyecto |
| `update-dashboard2-ui` | 31 Oct 2025 | 16 commits | Revisar si cambios están en `main`, luego archivar |

---

## 🧹 Protocolo de Limpieza

### Verificación Pre-Eliminación

```bash
# 1. Verificar si está mergeada
git branch --merged main

# 2. Ver commits únicos
git log main..<rama> --oneline

# 3. Verificar última actividad
git log <rama> --oneline -5 --date=short --pretty=format:"%h | %ad | %s"
```

### Eliminación Segura

```bash
# Solo si está completamente mergeada
git branch -d <nombre-rama>              # Local (requiere merge)
git branch -D <nombre-rama>              # Local (forzado)
git push origin --delete <nombre-rama>   # Remota
```

---

## 🚨 Resolución de Problemas

### Error: "Another git process seems to be running"

```powershell
# PowerShell: Eliminar archivos de bloqueo
Get-ChildItem -Path ".git" -Filter "*.lock" -Recurse -Force | Remove-Item -Force

# Bash/Git Bash
find .git -name "*.lock" -delete
```

### Error: "cannot lock ref"

1. Cerrar todos los terminales Git
2. Cerrar VS Code Git extension (opcional)
3. Ejecutar comando de limpieza de bloqueos
4. Reintentar operación

---

## 📅 Revisión Periódica

**Frecuencia:** Cada 2 semanas

**Checklist:**

- [ ] Identificar ramas mergeadas sin eliminar
- [ ] Verificar ramas sin actividad >30 días
- [ ] Actualizar esta documentación
- [ ] Comunicar cambios al equipo

---

## 🤝 Colaboración

Para mantener el repositorio organizado:

1. **Antes de crear rama:** Verificar si ya existe una similar
2. **Nomenclatura consistente:** Seguir convención establecida
3. **Limpieza post-merge:** Eliminar ramas inmediatamente
4. **Documentar excepciones:** Ramas de larga duración deben justificarse

---

**Última actualización:** 12 de noviembre de 2025  
**Responsable:** Equipo Club IA Legal - Comité Laboratorio
