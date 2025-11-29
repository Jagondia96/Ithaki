# Itháki

Proyecto Flutter básico con una pantalla de "Hola Mundo".

## Prerrequisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado y configurado en el PATH.

## Configuración

1.  Asegúrate de tener un dispositivo conectado o un emulador corriendo.
2.  Obtén las dependencias:
    ```bash
    flutter pub get
    ```

## Ejecución

Para ejecutar la aplicación en modo debug:

```bash
flutter run
```

### Android (Emulador)

Para lanzar la aplicación en el emulador de Android configurado:

**Opción 1: Script automático (Recomendado)**
Ejecuta el script incluido en la raíz del proyecto:
```bash
.\run_android.bat
```

**Opción 2: Comando manual**
```bash
flutter run -d emulator-5554
```

## Estructura del Proyecto

-   `lib/main.dart`: Punto de entrada de la aplicación y pantalla principal.
-   `android/`, `ios/`, `web/`: Carpetas de plataforma específica.
-   `pubspec.yaml`: Configuración de dependencias.
