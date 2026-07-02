# Practical LLM Application Assignment

## Student Information

Name: BIAM Kwami Alfred Jordal

## Part 1 Choice

I chose **Option A: Creative Text Generation**.

## Models and Libraries Used

Part 1 uses the Hugging Face Transformers library with the `distilgpt2` text-generation model.

Part 2 uses the Hugging Face Transformers library with the `Qwen/Qwen2.5-0.5B-Instruct` conversational model.

## Files Included

- `task1_generation.ipynb`: Python script for creative text generation.
- `generated_creative_output.txt`: Generated creative story output.
- `chatbot.ipynb`: Command-line chatbot script.
- `chatbot_conversation.txt`: Sample transcript with at least five user inputs and bot responses.

- `README.md`: Assignment documentation.

first download

The first time the scripts run, Hugging Face downloads the selected models. An internet connection is required for that first download. After the models are cached locally, they can usually run offline.

## Notes and Challenges

The main challenge is that local LLMs take time to download and run slowly on my computers . To reduce this issue, Part 1 uses the smaller `distilgpt2` model, while Part 2 uses DialoGPT that was changed to Qwen due to the inaccuracy of the output
exapmple of conversation with DialoGPT :
me: who is BillGate?
Bot: The greatest man of all time .
me: What are his activities
Bot: I think he's dead
