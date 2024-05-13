# Voice Assistant

This is a voice assistant application built using LiveKit, a real-time communication platform. The assistant leverages various plugins and technologies to enable voice-based interaction and provide intelligent responses.

## Features

- Voice-based user interface
- Speech-to-text using Deepgram
- Text-to-speech using ElevenLabs
- Language model powered by OpenAI's GPT
- Voice activity detection using Silero
- Minimal and function-based assistant examples

## Prerequisites

- Docker
- Python 3.11.6

## Setup

1. Clone the repository:

   ```
   git clone https://github.com/avonx/live2d-voice-assistant.git
   ```

2. Change to the project directory:

   ```
   cd voice-assistant
   ```

3. Build the Docker image:

   ```
   docker build -t voice-assistant .
   ```

4. Create a `.env` file in the project root directory and provide the necessary environment variables:

   ```
   OPENAI_API_KEY=your_openai_api_key
   DEEPGRAM_API_KEY=your_deepgram_api_key
   ELEVENLABS_API_KEY=your_elevenlabs_api_key
   ```

5. Run the Docker container:

   ```
   docker run --env-file ../.env --env WORKER_HOST=0.0.0.0 --env WORKER_PORT=8081 --net=host voice-assistant
   ```

## Usage

The voice assistant provides two examples:

1. Minimal Assistant: A basic voice assistant that listens to user input, processes it using the language model, and responds with voice output.

2. Function-based Assistant: An advanced voice assistant that demonstrates function calling capabilities, such as toggling lights in different rooms and handling user interruptions.

To run the desired assistant, uncomment the corresponding entrypoint in the `Dockerfile` and rebuild the Docker image.

## Customization

You can customize the voice assistant by modifying the code in the `voice-assistant` directory. The main files of interest are:

- `minimal_assistant.py`: Contains the code for the minimal voice assistant example.
- `function_calling.py`: Contains the code for the function-based voice assistant example.

Feel free to explore and extend the functionality of the voice assistant based on your requirements.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [LiveKit](https://livekit.io/) - Real-time communication platform
- [OpenAI](https://openai.com/) - Language model provider
- [Deepgram](https://deepgram.com/) - Speech-to-text provider
- [ElevenLabs](https://www.elevenlabs.io/) - Text-to-speech provider
- [Silero](https://github.com/snakers4/silero-vad) - Voice activity detection library

## References

- [LiveKit Agents](https://github.com/livekit/agents)