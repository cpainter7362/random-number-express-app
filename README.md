# Random Number Express App

A simple Express.js API server that generates random numbers, with Docker support.

## Features

- RESTful API endpoint that returns 17 random numbers
- CORS protection to restrict origins
- Fully dockerized for easy deployment

## Prerequisites

- Node.js (v18+ recommended)
- Docker
- Git

## Local Development

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/random-number-express-app.git
   cd random-number-express-app
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Start the server:
   ```
   npm run dev
   ```

4. Access the API at `http://localhost:3003/`

## Docker Usage

### Build the Docker Image

```
./scripts/build.sh
```

### Run the Docker Container

```
./scripts/run.sh
```

This will start the container in detached mode, exposing port 3003.

### Stop the Docker Container

```
./scripts/stop.sh
```

## API Endpoints

### GET /

Returns a JSON object with an array of 17 random numbers.

Example response:
```json
{
  "numbers": [12, 45, 37, 91, 23, 67, 89, 54, 3, 18, 72, 36, 15, 64, 27, 95, 50]
}
```

## CORS Configuration

The API is configured to accept requests only from:
- localhost addresses
- 127.0.0.1
- Google domains
- VCCS.edu domains

## License

MIT