#!/usr/bin/env bash
source .env

API_URL="https://openrouter.ai/api/v1/chat/completions"
OPENROUTER_SITE_URL="http://localhost:3000"
OPENROUTER_SITE_NAME="My example"
NLP_MODEL=google/gemma-3-27b-it


curl --silent -X POST "$API_URL" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "HTTP-Referer: $OPENROUTER_SITE_URL" \
  -H "X-Title: $OPENROUTER_SITE_NAME" \
  -d '{
        "model": '"'$NLP_MODEL'"',
        "messages": [
           {
             "role": "user",
             "content": "me conte uma curiosidade sobre os chips vera rubin"
            }
  ],
  "temperature": 0.3,
  "max_tokens": 1000
}' | jq

//resultado
    {
  "id": "gen-1782613618-dH67AltFiefrEbW48BBX",
  "object": "chat.completion",
  "created": 1782613618,
  "model": "google/gemma-3-27b-it",
  "provider": "Nebius",
  "system_fingerprint": null,
  "service_tier": null,
  "choices": [
    {
      "index": 0,
      "logprobs": null,
      "finish_reason": "stop",
      "native_finish_reason": "stop",
      "message": {
        "role": "assistant",
        "content": "Com certeza! Uma curiosidade interessante sobre os chips Vera Rubin é que eles são projetados para serem extremamente eficientes em termos de energia. A Apple, que os desenvolveu, focou em otimizar o desempenho por watt, o que significa que eles entregam um poder de processamento impressionante consumindo relativamente pouca energia.\n\nIsso tem várias vantagens:\n\n*   **Maior duração da bateria:** Em dispositivos como iPhones e iPads, a eficiência energética do chip Vera Rubin contribui significativamente para uma bateria que dura mais tempo.\n*   **Menos aquecimento:** Chips mais eficientes geram menos calor, o que ajuda a manter o dispositivo funcionando de forma estável e evita desconforto ao toque.\n*   **Sustentabilidade:** Ao consumir menos energia, os dispositivos com chips Vera Rubin também têm um impacto ambiental menor.\n\nA Apple tem investido cada vez mais em eficiência energética em seus chips, e o Vera Rubin é um exemplo notável desse compromisso.",
        "refusal": null,
        "reasoning": null
      }
    }
  ],
  "usage": {
    "prompt_tokens": 20,
    "completion_tokens": 206,
    "total_tokens": 226,
    "cost": 0.0000638,
    "is_byok": false,
    "prompt_tokens_details": {
      "cached_tokens": 0,
      "cache_write_tokens": 0,
      "audio_tokens": 0,
      "video_tokens": 0
    },
    "cost_details": {
      "upstream_inference_cost": 0.0000638,
      "upstream_inference_prompt_cost": 0.000002,
      "upstream_inference_completions_cost": 0.0000618
    },
    "completion_tokens_details": {
      "reasoning_tokens": 0,
      "image_tokens": 0,
      "audio_tokens": 0
    }
  }

