#!/bin/bash

TELEGRAM_BOT_TOKEN=5790533239:AAEbGLfQZIyZk6WGRg1W3ztnkjIX6DHT3kI
TELEGRAM_CHAT_ID=-848944943

TIME="10"
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$TELEGRAM_CHAT_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
