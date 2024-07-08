BOT_TOKEN='6788930639:AAHpp3siVn8wnWp3SGOM_uC2EDFaXWjyE6I'
THREAD_ID='3'
CHAT_ID='-1002187007527'
echo "Masukan Path Ke FILE Yang akan Anda Kirim :"
read FILE_TO_SEND
echo "Text Pada File / Deskripsi File :"
read TEXT_TO_SEND

curl -4 -s -S -L -w"\n" -o- \
    -F document=@"${FILE_TO_SEND}" \
    -F parse_mode='Markdown' \
    -F caption="${TEXT_TO_SEND}" \
    -X POST https://api.telegram.org/bot${BOT_TOKEN}/sendDocument \
    -F message_thread_id="${THREAD_ID}"
    -F chat_id="${CHAT_ID}"
