BOT_TOKEN='6788930639:AAHpp3siVn8wnWp3SGOM_uC2EDFaXWjyE6I'
CHAT_ID='-1002187007527_3'
MESSAGE_THREAD_ID='3'
FILE_TO_SEND='./aik-logs-1.logs'
TEXT_TO_SEND='aiklogs'

curl -4 -s -S -L -w"\n" -o- \
    -F document=@"${FILE_TO_SEND}" \
    -F parse_mode='Markdown' \
    -F caption="${TEXT_TO_SEND}" \
    -X POST https://api.telegram.org/bot${BOT_TOKEN}/sendDocument \
    -F chat_id="${CHAT_ID}" \
    -F message_thread_id="${MESSAGE_THREAD_ID}"￼Enter
