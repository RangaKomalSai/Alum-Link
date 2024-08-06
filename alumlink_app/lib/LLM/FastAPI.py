# # app.py
# from fastapi import FastAPI, HTTPException
# from pydantic import BaseModel
# from transformers import pipeline

# app = FastAPI()

# # Load the conversational pipeline
# chatbot = pipeline("textgeneration", model="HarisNarrendranR/model")

# # Define the request body model
# class Message(BaseModel):
#     message: str

# @app.post("/chat")
# async def chat(message: Message):
#     try:
#         # Get the user's message from the request body
#         user_input = message.message
#         # Generate a response using the chatbot model
#         response = chatbot(user_input)
#         # Extract the generated text from the response
#         chatbot_response = response[0]['generated_text']
#         return {"response": chatbot_response}
#     except Exception as e:
#         raise HTTPException(status_code=500, detail=str(e))

# To run the app, use the command: uvicorn app:app --host 0.0.0.0 --port 8000
#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

from fastapi import FastAPI
from pydantic import BaseModel
from transformers import AutoTokenizer, AutoModelForCausalLM
from fastapi.middleware.cors import CORSMiddleware
import logging

logging.basicConfig(level=logging.INFO)

app = FastAPI()

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Adjust this as needed
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
tokenizer = AutoTokenizer.from_pretrained("HarisNarrendranR/model")
model = AutoModelForCausalLM.from_pretrained("HarisNarrendranR/model")
print("Model loaded")
class ChatRequest(BaseModel):
    message: str

class ChatResponse(BaseModel):
    response: str

@app.post("/chat", response_model=ChatResponse)
async def chat(request: ChatRequest):
    logging.info(f"Received request: {request.message}")
    user_message = request.message
    bot_response = generate_response(user_message)
    logging.info(f"Generated response: {bot_response}")
    return ChatResponse(response=bot_response)

def generate_response(user_message: str) -> str:
    input_ids = tokenizer.encode(user_message, return_tensors='pt')
    output = model.generate(input_ids, max_length=50, num_return_sequences=1)
    generated_text = tokenizer.decode(output[0], skip_special_tokens=True)
    return generated_text

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
