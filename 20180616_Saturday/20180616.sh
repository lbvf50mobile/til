# Yandex Cloud: 'Text to speach', tts.

# alias x='bash 20180616_Saturday/20180616.sh'

key_file=20180616_Saturday/key
KEY=$(cat $key_file)
TEXT="Hey!"
FILE='20180616_Saturday/sound.mp3'
# curl "https://tts.voicetech.yandex.net/generate?format=mp3&lang=en-US&speaker=zahar&emotion=good&key=454c7770-048f-4ca2-ad66-2f88bd08f875" -G --data-urlencode "text=Hey Ed, this is a splendid technology. Thank you for advise. I've generated it by cloud. yes" > test.mp3
curl "https://tts.voicetech.yandex.net/generate?format=mp3&lang=en-US&speaker=zahar&emotion=good&key=$KEY" -G --data-urlencode "text=$TEXT" > $FILE