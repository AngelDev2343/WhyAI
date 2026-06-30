

<p align="center">
  <img width="192" height="192" alt="image" src="https://github.com/user-attachments/assets/2cd97dad-361f-4aa4-a98e-93db305b06bd" />
</p>

<p align="center">
  <strong>WhyAI</strong>
</p>


<p align="center">
  <strong>Cada respuesta tiene un porqué.</strong> · <strong>Every answer has a why.</strong><br>
  Asistente de IA híbrido — online en la nube u offline en tu dispositivo.<br>
  Hybrid AI assistant — cloud online or fully offline on your device.
</p>

<p align="center">
  <a href="https://why-ia.vercel.app"><img src="https://img.shields.io/badge/demo-why--ia.vercel.app-4ade80?style=for-the-badge" alt="Demo"></a>
  <a href="https://why-ia.vercel.app/install.html"><img src="https://img.shields.io/badge/PWA-install-8b5cf6?style=for-the-badge" alt="Install PWA"></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/status-active-success" alt="Active">
  <img src="https://img.shields.io/badge/platform-web-blue" alt="Web">
  <img src="https://img.shields.io/badge/offline-WASM-success" alt="Offline WASM">
  <img src="https://img.shields.io/badge/languages-ES%20%7C%20EN-lightgrey" alt="ES / EN">
  <img src="https://img.shields.io/badge/theme-light%20%2F%20dark-informational" alt="Light / dark theme">
</p>

<p align="center">
  <a href="#español"><strong>Español</strong></a> · <a href="#english"><strong>English</strong></a>
</p>

---

<a id="español"></a>

## Español

> **Nota sobre este repositorio:** este repositorio público contiene **documentación y presentación del proyecto**. El código fuente de WhyAI es **privado** y no se distribuye aquí.

### Qué es WhyAI

**WhyAI** es una aplicación web de chat con inteligencia artificial que combina dos mundos en una sola interfaz:

| Modo | Descripción |
|------|-------------|
| **Online** | Modelos avanzados en la nube (Groq), sincronización de conversaciones, cuenta de usuario y funciones Pro |
| **Offline** | Modelos locales ejecutados en el navegador con **WebAssembly** (wllama), sin depender de internet tras descargar el modelo |

Puedes cambiar de modo en cualquier momento desde el mismo chat. La app está disponible como **PWA** (Progressive Web App) para instalarla en móvil y escritorio.

**Desarrollado por [WDG Technologies](https://why-ia.vercel.app)**

### Características principales

**Chat inteligente**
- Conversaciones con historial y memoria de contexto
- Interfaz en **español e inglés** con detección automática de idioma
- **Tema claro y oscuro** configurable
- Formato enriquecido en respuestas (listas, código, etc.)
- **Demo sin cuenta**: prueba el chat online con un límite de mensajes antes de registrarte

**Modo online**
- **WhyAI Fast** — modelo ligero (`llama-3.1-8b-instant`) para respuestas rápidas
- **WhyAI Pro** — modelo avanzado (`llama-3.3-70b-versatile`) con mayor capacidad de razonamiento
- Cuenta con **email/contraseña** o **Google** (Firebase Auth)
- Conversaciones guardadas en la nube (Firestore)
- Resumen automático de conversaciones largas
- Límites de uso justos y transparentes en el servidor

**Modo offline**
- Ejecución local con **wllama** y modelos en **WebAssembly**
- Descarga manual de modelos; se almacenan en caché del navegador
- Sin conexión tras la descarga inicial del modelo
- Parámetros avanzados de inferencia (temperatura, contexto, etc.) — **plan Pro**
- Requiere inicio de sesión y navegadores compatibles con WASM multihilo

**Multimodal — análisis de imágenes**  
**WhyAI Duo** analiza imágenes adjuntas en el chat online: visión especializada → descripción estructurada → respuesta de texto. Disponible para usuarios **Free** y **Pro**.

**Generación de imágenes** *(solo Pro, modo online)*  
1 imagen/día desde prompt de texto. Procesado en servidor de forma segura.

**Cuenta y configuración**  
Perfil, idioma, tema, plan Pro, eliminación de cuenta.  
Legal: [Términos](https://why-ia.vercel.app/terms.html) · [Privacidad](https://why-ia.vercel.app/privacy.html)

### Planes

| | **Free** | **Pro** |
|---|:---:|:---:|
| Precio | $0 | desde **$2.99/mes** (descuento anual) |
| Mensajes | Ilimitados (Fast) | Ilimitados |
| Mensajes Pro / día | 5 | Ilimitados |
| Análisis de imágenes | ✓ | ✓ |
| Memoria y contexto | Estándar | **3× mayor** |
| Modo offline | Limitado | **Completo** |
| Generación de imágenes | — | **1/día** |
| Parámetros offline avanzados | — | ✓ |

### Modelos offline

| Modelo | Perfil | Descripción |
|--------|--------|-------------|
| **LFM2 1.2B** | Ligero | Muy rápido, poca RAM |
| **LLaMA 3.2 1B** | Balanceado | Recomendado por defecto |
| **Gemma 2 2B** | Avanzado | Mejor razonamiento, más RAM |

### Privacidad

| Dato | Dónde | Para qué |
|------|-------|----------|
| Cuenta y perfil | Firebase | Auth, plan Pro, preferencias |
| Conversaciones online | Firestore | Sincronización entre dispositivos |
| Demo sin cuenta | Local + servidor | Límite de prueba |
| Modelos offline | Caché del navegador | Inferencia local |
| Preferencias | `localStorage` | Tema, idioma |

No vendemos datos ni usamos publicidad de terceros. [Política de Privacidad](https://why-ia.vercel.app/privacy.html)

### PWA · Compatibilidad

Instala desde [install.html](https://why-ia.vercel.app/install.html). Chrome, Edge, Safari y Brave soportan online y offline. **Firefox:** solo online.

**Requisitos offline:** 4 GB RAM mín. · 6–8 GB recomendado · ~1.5 GB almacenamiento para modelos.

### FAQ (ES)

**¿Sin cuenta?** Demo de 3 mensajes. Para historial, offline completo y Pro → regístrate.  
**¿Offline envía chats a internet?** No, tras descargar el modelo.  
**¿Anuncios?** No.  
**¿Código fuente?** Privado; este repo es solo documentación.

### Enlaces

| Recurso | URL |
|---------|-----|
| App | [why-ia.vercel.app](https://why-ia.vercel.app) |
| Instalar | [install.html](https://why-ia.vercel.app/install.html) |
| Precios | [pricing.html](https://why-ia.vercel.app/pricing.html) |
| Reportar bug | [report-bug.html](https://why-ia.vercel.app/report-bug.html) |

**Licencia:** Todos los derechos reservados © WDG Technologies. Software propietario.

<p align="right"><a href="#english">English ↓</a></p>

---

<a id="english"></a>

## English

> **About this repository:** this public repo contains **project documentation and presentation only**. WhyAI **source code is private** and is not distributed here.

### What is WhyAI

**WhyAI** is a web-based AI chat application that combines two worlds in a single interface:

| Mode | Description |
|------|-------------|
| **Online** | Advanced cloud models (Groq), conversation sync, user accounts, and Pro features |
| **Offline** | Local models running in the browser via **WebAssembly** (wllama), no internet required after download |

Switch modes anytime from the same chat. Available as a **PWA** (Progressive Web App) for mobile and desktop.

**Built by [WDG Technologies](https://why-ia.vercel.app)**

### Key features

**Smart chat**
- Conversations with history and context memory
- **Spanish and English** UI with automatic language detection
- Configurable **light and dark theme**
- Rich response formatting (lists, code, etc.)
- **Guest demo**: try online chat with a message limit before signing up

**Online mode**
- **WhyAI Fast** — lightweight model (`llama-3.1-8b-instant`) for quick replies
- **WhyAI Pro** — advanced model (`llama-3.3-70b-versatile`) with stronger reasoning
- Sign in with **email/password** or **Google** (Firebase Auth)
- Conversations saved in the cloud (Firestore)
- Automatic summarization of long conversations
- Fair, transparent server-side usage limits

**Offline mode**
- Local inference with **wllama** and **WebAssembly** models
- Manual model download; stored in browser cache
- Works offline after the initial model download
- Advanced inference parameters (temperature, context, etc.) — **Pro plan**
- Requires sign-in and browsers with multithreaded WASM support

**Multimodal — image analysis**  
**WhyAI Duo** analyzes images attached in online chat: specialized vision → structured description → text reply. Available for **Free** and **Pro** users.

**Image generation** *(Pro only, online)*  
1 image/day from a text prompt. Securely processed on the server.

**Account & settings**  
Profile, language, theme, Pro plan, account deletion.  
Legal: [Terms](https://why-ia.vercel.app/terms.html) · [Privacy](https://why-ia.vercel.app/privacy.html)

### Plans

| | **Free** | **Pro** |
|---|:---:|:---:|
| Price | $0 | from **$2.99/mo** (annual discount) |
| Messages | Unlimited (Fast) | Unlimited |
| Pro messages / day | 5 | Unlimited |
| Image analysis | ✓ | ✓ |
| Memory & context | Standard | **3× larger** |
| Offline mode | Limited | **Full** |
| Image generation | — | **1/day** |
| Advanced offline params | — | ✓ |

### Offline models

| Model | Profile | Description |
|--------|--------|-------------|
| **LFM2 1.2B** | Light | Very fast, low RAM |
| **LLaMA 3.2 1B** | Balanced | Default recommendation |
| **Gemma 2 2B** | Advanced | Better reasoning, more RAM |

### Privacy

| Data | Where | Purpose |
|------|-------|---------|
| Account & profile | Firebase | Auth, Pro plan, preferences |
| Online conversations | Firestore | Cross-device sync |
| Guest demo | Local + server | Trial message limits |
| Offline models | Browser cache | Local inference |
| Preferences | `localStorage` | Theme, language |

We do not sell data or use third-party ads. [Privacy Policy](https://why-ia.vercel.app/privacy.html)

### PWA · Compatibility

Install via [install.html](https://why-ia.vercel.app/install.html). Chrome, Edge, Safari, and Brave support online and offline. **Firefox:** online only.

**Offline requirements:** 4 GB RAM min · 6–8 GB recommended · ~1.5 GB storage for models.

### Architecture

```
User
  ├─ Online ──► Vercel (serverless API) ──► Groq / Pollinations / Firebase
  └─ Offline ─► wllama (browser WASM) ──► cached local models
```

Vanilla JS + bundled React (offline module) · Vercel serverless · Firebase Auth + Firestore · Groq API · wllama WASM

### Bug reports

Registered users: **Help → Report bug** or [report-bug.html](https://why-ia.vercel.app/report-bug.html).  
This repo does **not** accept pull requests or external code contributions.

### FAQ (EN)

**Without an account?** 3-message guest demo. For history, full offline, and Pro → sign up.  
**Does offline send chats online?** No, after the model is downloaded.  
**Ads?** No.  
**Source code?** Private; this repo is documentation only.

### Links

| Resource | URL |
|----------|-----|
| App | [why-ia.vercel.app](https://why-ia.vercel.app) |
| Install | [install.html](https://why-ia.vercel.app/install.html) |
| Pricing | [pricing.html](https://why-ia.vercel.app/pricing.html) |
| Report bug | [report-bug.html](https://why-ia.vercel.app/report-bug.html) |

**License:** All rights reserved © WDG Technologies. Proprietary software.

<p align="right"><a href="#español">Español ↑</a></p>

---

## Screenshots · Capturas

<p align="center">
  <img width="900" alt="WhyAI — online chat" src="https://github.com/user-attachments/assets/0c596894-7ff4-49bc-83f8-6f879a2b55e8">
</p>

<p align="center">
  <img width="900" alt="WhyAI — offline mode" src="https://github.com/user-attachments/assets/1499f493-c274-4735-ac0c-dc854c1647d9">
  &nbsp;&nbsp;
  <img width="900" alt="WhyAI — settings" src="https://github.com/user-attachments/assets/f42bc8a0-21e5-4531-a3a4-b0c7e2f50260">
</p>

<p align="center">
  <img width="900" alt="WhyAI — mode switch" src="https://github.com/user-attachments/assets/db6d44ff-9bc5-49f9-92b7-74fd7c4f1acd">
  &nbsp;&nbsp;
  <img width="900" alt="WhyAI — pricing" src="https://github.com/user-attachments/assets/f2021afe-31e6-4447-81d1-794d652cb88e">
</p>

<p align="center">
  <img width="200" alt="WhyAI — mobile" src="https://github.com/user-attachments/assets/28c7b997-d6cf-4843-9490-b08bdbbfaad6">
</p>

---

## Credits · Créditos

- **[wllama](https://github.com/ngxson/wllama)** — browser WASM LLM engine
- **Meta (LLaMA)** & **Google (Gemma)** — offline model families
- **Groq** — low-latency cloud inference
- **Firebase** — auth & sync
- **Vercel** — hosting & serverless APIs

<p align="center">
  <sub>WhyAI — developed by WDG Technologies · desarrollado por WDG Technologies</sub>
</p>
