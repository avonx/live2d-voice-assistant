cd voice-assistant

docker build -t voice-assistant .

docker run --env-file ../.env --env WORKER_HOST=0.0.0.0 --env WORKER_PORT=8081 --net=host voice-assistant