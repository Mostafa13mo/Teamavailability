# Teamavailability

A web application for managing and visualizing team availability. Built with JavaScript, HTML, and CSS, and ready for container-based deployment via Docker.

## Features

- View and manage team member schedules
- Interactive UI for editing availability
- Responsive design for desktop and mobile
- Containerized with Docker for easy deployment

## Technology Stack

- **JavaScript:** Main application logic
- **HTML/CSS:** User interface and styling
- **Shell scripts:** Automation and setup tasks
- **Dockerfile:** Containerization support

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) installed
- [Docker](https://www.docker.com/get-started) (for container deployment)
- Basic shell environment (for setup scripts, if needed)

### Local Development

```bash
git clone https://github.com/Mostafa13mo/Teamavailability.git
cd Teamavailability

# Install dependencies (if using npm/yarn)
npm install

# Start local server (update according to actual start script)
npm start
```

Then open your browser to `http://localhost:3000` (update port if necessary).

### Using Docker

Build and run the container:

```bash
docker build -t teamavailability .
docker run -p 3000:3000 teamavailability
```

### Shell Scripts

Any shell scripts for setup or deployment are in the `scripts/` directory (if present). Make sure scripts are executable:

```bash
chmod +x scripts/*.sh
```

## Project Structure

```
├── src/                # JavaScript source files
├── public/             # HTML, CSS, and static assets
├── scripts/            # Shell automation scripts
├── Dockerfile          # Container instructions
└── README.md           # This file
```

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.
