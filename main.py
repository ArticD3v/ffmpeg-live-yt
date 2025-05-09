import os
from keep_alive import keep_alive
os.system("ffmpeg -stream_loop -1 -re -i room.mp4 -stream_loop -1 -re -i https://stream.zeno.fm/6hszhrzidmcuv -vcodec libx264 -pix_fmt yuvj420p -maxrate 512k -preset veryfast -r 12 -framerate 30 -g 50 -c:a aac -b:a 98k -ar 44100 -strict experimental -video_track_timescale 1000 -b:v 150k -f flv  rtmp://a.rtmp.youtube.com/live2/qp0u-wb9b-3ptq-adxz-9rdj")
keep_alive()
