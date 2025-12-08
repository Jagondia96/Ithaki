# Itháki

Proyecto Flutter profesionalizado con soporte para entornos (Dev/Prod) e internacionalización.

## Prerrequisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado y configurado en el PATH.
- [VS Code](https://code.visualstudio.com/) (Recomendado) con la extensión de Flutter.

## Configuración

1.  Obtén las dependencias:
    ```bash
    flutter pub get
    ```
2.  Genera los ficheros de traducción (si es necesario):
    ```bash
    flutter gen-l10n
    ```

## Ejecución

### Desde VS Code (Recomendado)

El proyecto incluye una configuración de lanzamiento (`.vscode/launch.json`).
1.  Ve a la pestaña **"Run and Debug"**.
2.  Selecciona el entorno deseado:
    -   **Itháki (Dev)**: Para desarrollo.
    -   **Itháki (Prod)**: Para producción.
3.  Presiona **F5** o el botón de Play.

### Desde la Terminal

Debes especificar el punto de entrada (`-t`) correspondiente al entorno. **No ejecutes `lib/main.dart` directamente.**

**Entorno de Desarrollo:**
```bash
flutter run -t lib/main_dev.dart
```

**Entorno de Producción:**
```bash
flutter run -t lib/main_prod.dart
```

## Estructura del Proyecto

-   `lib/main_dev.dart`: Punto de entrada para Desarrollo.
-   `lib/main_prod.dart`: Punto de entrada para Producción.
-   `lib/app_config.dart`: Configuración de variables de entorno.
-   `lib/l10n/`: Ficheros de traducción (ARB).
-   `analysis_options.yaml`: Reglas de linting y buenas prácticas.

## Guía de Desarrollo

Para mantener la calidad del código, sigue estos pasos antes de enviar cambios:

### 1. Análisis Estático (Linting)
Comprueba que el código cumple con las reglas definidas en `analysis_options.yaml`:
```bash
flutter analyze
```

### 2. Tests
Ejecuta los tests automatizados para asegurar que no hay regresiones:
```bash
flutter test
```

### 3. Formato
Asegúrate de que el código está formateado correctamente:
```bash
dart format .
```

### 4. Generación de Código
Si modificas los archivos `.arb` de traducción, regenera las clases:
```bash
flutter gen-l10n
```
