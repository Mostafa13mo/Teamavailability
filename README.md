# Teamavailability

Teamavailability is a web-based application designed to streamline scheduling and improve team coordination. Built with modern web technologies and featuring automated deployment with Docker and Kubernetes.

## Features

- **Real-time Availability Tracking:** Members can update and view team schedules instantly.
- **Responsive Web Interface:** Built using JavaScript, HTML, and CSS.
- **Automated Deployment:** Docker configuration and ready-to-use Kubernetes manifests.
- **Easy Operation:** Shell scripts to start and stop the app locally or in the cloud.
- **Persistent Storage:** Kubernetes PV/PVC support.

## Language Composition

- **JavaScript:** 58.9%
- **CSS:** 15.9%
- **Shell:** 11.2%
- **HTML:** 10%
- **Dockerfile:** 4%

## Deployment Options

### Local Installation

```bash
git clone https://github.com/Mostafa13mo/Teamavailability.git
cd Teamavailability
npm install
npm start
```

### Using Shell Scripts

In `scripts/`:

- **start.sh:** Bash script to start the application.
- **stop.sh:** Bash script to stop the application.

```bash
# To start the application
bash scripts/start.sh

# To stop the application
bash scripts/stop.sh
```

### Docker

```bash
docker build -t teamavailability .
docker run -p 3000:3000 teamavailability
```

### Kubernetes

The `k8s/` folder contains comprehensive Kubernetes manifests:

- **deployment.yaml:** Deploys the application pods.
- **service.yaml:** Configures service networking and exposes your app.
- **ingress.yaml:** Exposes the service externally using Ingress rules.
- **pv-pvc.yaml:** Manages persistent storage using Persistent Volume and Persistent Volume Claim.

To deploy:

```bash
kubectl apply -f k8s/pv.yaml      # Persistent storage
kubectl apply -f k8s/deployment.yaml # App deployment
kubectl apply -f k8s/service.yaml    # Networking service
kubectl apply -f k8s/ingress.yaml    # External access via Ingress
```

Check app status and endpoints:
```bash
kubectl get all
kubectl get ingress
```

## Folder Structure

```
/
├── src/                # Application source code
├── public/             # Static assets
├── scripts/            # Bash scripts: start.sh, stop.sh
├── k8s/                # Kubernetes manifests: deployment.yaml, service.yaml, ingress.yaml, pv-pvc.yaml
├── Dockerfile          # Docker configuration
├── package.json        # Node.js dependencies
```

## Contributing

Issues and pull requests are welcome!
