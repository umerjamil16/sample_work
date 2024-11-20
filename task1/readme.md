
# Task1 setup instructions 

## Prerequisites

- Docker (version 20.10 or later)
- Docker Compose (version 1.29 or later)

## Project Structure

```
task1/
├── app.py           # Flask application
├── requirements.txt # Python dependencies
├── Dockerfile       # Docker image configuration
└── docker-compose.yml # Docker Compose configuration
```

## Setup and Installation

### 1. Clone the Repository

```bash
git clone https://github.com/umerjamil16/sample_work.git
cd task1
```

### 2. Build and Run with Docker Compose

```bash
# Build and start the container in detached mode
docker-compose up -d --build
```

### 3. Accessing the API

#### Using cURL
```bash
# Get current datetime
curl http://localhost:5000/current-datetime

# Example expected output
{
    "utc_datetime": "2024-02-15T10:30:45.123456+00:00"
}
```
