# app.py
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from transformers import pipeline

app = FastAPI()

# Load the conversational pipeline
chatbot = pipeline("text2text-generation", model="HarisNarrendranR/model")

# Define the request body model
class Message(BaseModel):
    message: str

@app.post("/chat")
async def chat(message: Message):
    try:
        # Get the user's message from the request body
        user_input = message.message
        # Generate a response using the chatbot model
        response = chatbot(user_input)
        # Extract the generated text from the response
        chatbot_response = response[0]['generated_text']
        return {"response": chatbot_response}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# To run the app, use the command: uvicorn app:app --host 0.0.0.0 --port 8000
