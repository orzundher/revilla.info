# Deployment — revilla.info

Guia para desplegar el sitio en Azure Static Web Apps desde cero.

---

## Prerequisitos

### 1. Node.js

Descarga e instala Node.js (v18 o superior) desde [nodejs.org](https://nodejs.org).

Verifica la instalacion:

```bash
node --version
npm --version
```

### 2. Azure CLI

```bash
# Windows (winget)
winget install Microsoft.AzureCLI

# macOS
brew install azure-cli

# Linux (Ubuntu/Debian)
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

Verifica:

```bash
az --version
```

### 3. SWA CLI

```bash
npm install -g @azure/static-web-apps-cli
```

Verifica:

```bash
swa --version
```

---

## Pasos de deployment

### 1. Login en Azure con el tenant

```bash
az login --tenant <AZURE_TENANT_ID>
```

> El tenant ID se encuentra en el `.env` como `AZURE_TENANT_ID`.

### 2. Login en SWA CLI

```bash
swa login
```

Esto abrira el navegador para autenticarte. Selecciona la suscripcion y el recurso `landing` en el resource group `PersonalServices`.

### 3. Instalar dependencias

```bash
npm install
```

### 4. Build del proyecto

```bash
npm run build
```

Esto genera la carpeta `dist/` con el sitio estatico listo para deploy.

### 5. Deploy a produccion

```bash
swa deploy --env production
```

---

## Resumen (comando unico)

```bash
npm install && npm run build && swa deploy --env production
```

---

## Notas

- La configuracion de SWA esta en `swa-cli.config.json`.
- El `appLocation` es `.` y el `outputLocation` es `dist/`.
- El recurso en Azure se llama `landing` dentro del resource group `PersonalServices`.
- Cada push a `main` en GitHub tambien dispara un deploy automatico via GitHub Actions.
