# Migración a Git LFS - Aviso y pasos para colaboradores

Fecha: 2025-11-12

Resumen
-------
Se ha realizado una migración del historial del repositorio para mover archivos binarios grandes a Git LFS. Los tipos incluidos son: `*.xcf`, `*.psd`, `*.png`, `*.jpg`, `*.jpeg`, `*.mp4`.

Qué se hizo
------------
- Se añadió `.gitattributes` y se configuró tracking para los tipos mencionados.
- Se ejecutó `git lfs migrate import --include="*.xcf,*.psd,*.png,*.jpg,*.jpeg,*.mp4" --everything` para convertir versiones históricas a LFS.
- Se subieron los objetos LFS al remoto.
- Se forzó el `push` de las ramas reescritas y `main` fue actualizada para reflejar la migración.
- Se creó y posteriormente eliminó la rama de respaldo `backup-before-lfs-20251112`. Si necesitas recuperar el estado anterior contacta al mantenedor inmediatamente.

Impacto para colaboradores
-------------------------
Debido a que el historial fue reescrito, los clones locales antiguos deben sincronizarse con la nueva historia. Recomendamos la opción segura (reclonar), o la opción avanzada si sabes lo que haces.

Opción segura (recomendada)

1. Asegúrate de tener `git` y `git-lfs` instalados.
2. Reclona el repositorio:

```bash
git clone https://github.com/hackbug38/Dashboards-Conversatorios-Club-IA-Legal.git
git lfs install
```

Opción avanzada (alternativa)

1. Ejecuta:

```bash
git lfs install
git fetch --all
git reset --hard origin/main
```

Advertencia: el comando `reset --hard` sobrescribirá cualquier cambio local no commiteado.

Comprobaciones post-migración
----------------------------
- Para verificar que los archivos grandes están en LFS en tu clone ejecuta:

```bash
git lfs ls-files
```

- Verifica que los binarios grandes aparecen como objetos LFS y que el historial está limpio.

¿Qué pasa con los archivos grandes existentes?
-------------------------------------------
Los archivos siguieron existiendo en la historia hasta que se migraron a LFS; ahora los objetos están almacenados en LFS. Si necesitas que retiremos versiones viejas por completo (borrar historial), eso es otra operación (BFG / filter-repo) y requiere coordinación.

Contacto
-------
Si ves algo inesperado o necesitas ayuda para actualizar tus clones, crea un issue o comenta en el PR correspondiente. Estoy disponible para asistirte con los pasos de reclonado o con scripts de automatización.
