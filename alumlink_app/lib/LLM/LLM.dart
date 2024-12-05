// import 'package:huggingface_dart/huggingface_dart.dart';

// HfInference hfInference = HFInference('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');

// await hfInference.textGeneration(
//     inputs: ["The answer to the universe is"],
//     model: "HarisNarrendranR/model"
// );
from fastapi import FastAPI
from pydantic import BaseModel
from transformers import AutoTokenizer, AutoModelForCausalLM
import torch
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# Configure CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Adjust this as needed
    allow_credentials=True,
    allow_methods=["*"],  # This will allow all HTTP methods, including OPTIONS
    allow_headers=["*"],
)

# Load the model and tokenizer once during startup
tokenizer = AutoTokenizer.from_pretrained("HarisNarrendranR/model")
model = AutoModelForCausalLM.from_pretrained("HarisNarrendranR/model")

class ChatRequest(BaseModel):
    message: str

class ChatResponse(BaseModel):
    response: str

@app.post("/chat", response_model=ChatResponse)
async def chat(request: ChatRequest):
    user_message = request.message
    bot_response = generate_response(user_message)
    return ChatResponse(response=bot_response)

def generate_response(user_message: str) -> str:
    input_ids = tokenizer.encode(user_message, return_tensors='pt')
    output = model.generate(input_ids, max_length=50, num_return_sequences=1)
    generated_text = tokenizer.decode(output[0], skip_special_tokens=True)
    print(generated_text)
    return generated_text

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)