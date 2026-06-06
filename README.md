# 🤖 WhyAI

![Status](https://img.shields.io/badge/status-beta-orange)
![Platform](https://img.shields.io/badge/platform-browser--only-blue)
![Offline](https://img.shields.io/badge/offline-supported-success)
![Privacy](https://img.shields.io/badge/privacy-no%20accounts%20%7C%20no%20backend-brightgreen)
![PWA](https://img.shields.io/badge/PWA-supported-purple)
![WASM](https://img.shields.io/badge/WebAssembly-WASM-blueviolet)
![AI](https://img.shields.io/badge/AI-LLM%20Local%20%2B%20Cloud-informational)

**WhyAI** es una plataforma de **Inteligencia Artificial generativa híbrida (offline + online)** que se ejecuta **completamente en el navegador**, diseñada para ofrecer **IA local, privada y accesible** a cualquier persona, sin necesidad de conocimientos técnicos.

El proyecto sigue una filosofía **privacy-first**: sin cuentas, sin backend propio y sin bases de datos externas. El control de los datos permanece siempre en manos del usuario.

---

## 📜 Licencia

**Todos los derechos reservados**

Este proyecto **no es Open-Source** es únicamente creado con fines demostrativos.

---

## 🖥️ Demo

<div align="center">
  
[¡Proba ahora aquí!](https://AngelSPerez.github.io/ia-offline)
  
![demo](https://angeldev2343.github.io/land/gifs/1.gif)
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/6b882ab5-e14f-4616-be30-3e199417388b" />
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/957e7ceb-0852-43df-b7d2-3a57d117a7b7" />
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/b761831d-d455-4b98-af62-832684f25a21" />
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/68c6badd-fbb8-406d-9f28-a931c9d62b75" />
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/2ee729a1-c0ad-47a3-b534-6f109f7e2461" />
<img width="1912" height="994" alt="image" src="https://github.com/user-attachments/assets/5a37910d-7163-46c0-bbf8-908a21ae0e8a" />
<img width="390" height="390" alt="image" src="https://github.com/user-attachments/assets/c96da523-8684-4000-80a8-90de89870dfa" />
<img width="390" height="390" alt="image" src="https://github.com/user-attachments/assets/28c7b997-d6cf-4843-9490-b08bdbbfaad6" />
</div>

---

## 🎯 Objetivo del proyecto

WhyAI nace como un **experimento técnico** con un objetivo claro:

> **Hacer accesible la IA local sin conexión para personas comunes**, eliminando configuraciones complejas y barreras técnicas.

Muchas soluciones de IA offline están pensadas para perfiles expertos. WhyAI abstrae esa complejidad y la presenta en una interfaz simple, multiplataforma y usable.

---

## 🧠 Arquitectura general

WhyAI utiliza una **arquitectura híbrida**:

- **Modo Offline:** ejecución local de modelos LLM mediante WebAssembly
- **Modo Online:** inferencia en la nube mediante APIs externas

Características comunes:

- Ejecución íntegra en el navegador
- Sin backend propio
- Misma interfaz para ambos modos

---

## 🔌 Modo Offline (IA Local)

El modo offline está basado en **wllama**, permitiendo ejecutar modelos LLM localmente usando **WebAssembly (WASM)** con soporte **multihilo**.

### Gestión de modelos

- Descarga **manual** de modelos
- El usuario puede:
  - Descargar los **3 modelos disponibles**
  - Descargar solo uno y usarlo exclusivamente
- Los modelos se descargan una sola vez y se almacenan en la **caché del navegador**

### Modelos disponibles

| Modelo | Tamaño | Rol | Descripción |
|------|-------|-----|------------|
| **LFM2 1.2B** | Ligero | Básico | Muy optimizado y rápido, con razonamiento limitado |
| **LLaMA 3.2 1B** | Medio | Balanceado | Rápido e inteligente, recomendado por defecto |
| **Gemma 2 2B** | Pesado | Avanzado | Mejor razonamiento, mayor consumo de memoria |

> Se descartaron modelos mayores (8B) debido a problemas de memoria en navegadores.

### Configuración avanzada

- `max_tokens`
- `temperature`
- Otros parámetros de inferencia configurables por el usuario

### Rendimiento y memoria

- Control interno para evitar que el navegador se quede sin memoria
- Selección de modelos basada en equilibrio entre calidad, estabilidad y consumo de recursos

---

## ☁️ Modo Online (IA en la nube)

El modo online utiliza inferencia remota mediante una API externa.

### Detalles técnicos

- Modelo: **LLaMA 4 70B**
- Alta capacidad de razonamiento y generación de texto
- Baja latencia

### Privacidad

- La API **no guarda conversaciones**
- Solo se registra el **uso técnico de la API**
- No se utilizan identificadores de sesión propios

---

## 🖼️ WhyAI Duo (Texto + Visión)

**WhyAI Duo** es una implementación multimodal basada en el uso de **dos modelos especializados**, optimizados para sus respectivas tareas.

### Flujo técnico

1. La imagen se convierte a **Base64**
2. Se envía a una API de visión
3. El modelo visual analiza la imagen
4. Se genera una descripción detallada
5. La imagen se elimina
6. La descripción se envía al modelo especializado en texto

Este enfoque permite obtener mejores respuestas textuales sin sobrecargar el modelo visual.

---

## 🎨 Generación de imágenes

WhyAI permite la **generación de imágenes** mediante una **API pública externa**, disponible **exclusivamente en modo online**.

### Funcionamiento técnico

- El usuario introduce un **prompt de texto**
- El prompt se envía directamente a la API
- La generación ocurre en un **modal independiente**
- El proceso es **bloqueante dentro del modal**
- La imagen generada se muestra **en la parte inferior del mismo modal**
- El usuario puede cerrar el modal y seguir usando el chat mientras la imagen se genera
- El usuario decide si desea **descargarla**

### Características y limitaciones

- Tipo de modelo: **no especificado por el proveedor**
- Resolución y relación de aspecto: **fijas** (limitación de la API)
- Solo se admite **texto**
- Límite: **1 imágen por día** (limitación de la API)
- El usuario es notificado al alcanzar el límite

### Privacidad

- La API **no almacena imágenes ni prompts**
- Las imágenes no se pueden recuperar si no se descargan
- WhyAI no guarda ni cachea imágenes generadas

---

## 💾 Almacenamiento y persistencia

### Caché del navegador

- Modelos de IA offline
- Assets de la aplicación (HTML, recursos estáticos)

### LocalStorage

- Cookie ligera para detectar primera visita
- Usada únicamente para mostrar el mensaje de bienvenida

### IndexedDB (planificado)

- Historial de chats

### Eliminación de datos

El usuario puede borrar todos los datos fácilmente usando las herramientas del navegador.

---

## 🔐 Privacidad y seguridad

- Sin cuentas
- Sin base de datos externa
- Sin anuncios
- Sin venta de datos personales

### Recopilación de información

- WhyAI **no recopila datos directamente**
- Algunas APIs externas pueden registrar **uso técnico**
- No se recopilan errores ni métricas propias

---

## 💻 Requisitos recomendados

- **RAM:** 4GB recomendados (6GB o 8GB ideal)
- **CPU:** Arquitectura x86 o ARM de **64 bits**
- **Almacenamiento:** hasta 1.5 GB libres (para offline)

---

## 🌍 Compatibilidad

### Navegadores recomendados

- ✅ Safari
- ✅ Google Chrome
- ✅ Microsoft Edge

❌ Firefox: no compatible actualmente con IA Offline.

### Dispositivos probados

- Windows 10 / 11
- Linux (la mayoría de distribuciones)
- macOS (Apple Silicon)
- Android 11+
- iOS 16+

> macOS presenta mejor rendimiento debido a su arquitectura.

---

## 📲 Instalación como PWA

WhyAI puede instalarse como **Progressive Web App**, aunque es totalmente opcional.

1. Abrir la web
2. Añadir `install.html` a la URL
3. Instalar desde el navegador

---

## 🛠️ Estado del proyecto

- **Estado:** Beta
- **Naturaleza:** Experimental

### Limitaciones conocidas

- Descarga inicial pesada
- Consumo de RAM en modelos grandes
- Firefox no soportado

---

## 🚀 Cambios y mejoras futuras

- Integración de **WebGPU** para IA Offline
- Historial de chats en modo online usando **IndexedDB**
- Optimización de uso de memoria
- Mejoras generales de rendimiento y estabilidad

---

## 🧪 Beta testing y reporte de errores

WhyAI se encuentra en fase **beta** y actualmente no acepta contribuciones de código.

Se agradece especialmente:

- 🐞 Reporte de bugs
- 🧪 Feedback de beta testers
- 📋 Reportes de compatibilidad y rendimiento

---

## 🙏 Créditos

- **wllama** — motor base para la ejecución de modelos LLM en el navegador (modo offline)
- **Modelos**: LLaMA (Meta) y Gemma (Google).
- **Stack**: Núcleo en Vanilla JS con integración de React para el módulo offline.
- **Deploy** (Online): Vercel.
- **Página Web**: GitHub Pages.

---

## 🔗 Enlaces

- 🌍 **Demo funcional:** [https://angelsperez.github.io/ia-offline/](https://why-ia.vercel.app/online/)


---

## ❓ FAQ

### ¿WhyAI es realmente offline?
Sí. Tras descargar el modelo, no requiere conexión.

### ¿Se usan cuentas o registros?
No. Por diseño.

### ¿Por qué no hay base de datos externa?
Por privacidad y seguridad.

### ¿WhyAI tiene anuncios?
No, ni los tendrá.

### ¿Es un producto comercial?
No. Es un experimento técnico.
