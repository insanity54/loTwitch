# loTwitch
stream twitch on mobile even if streamer doesnt support it. Useful for when you have crappy internet and can't watch twitch streamers who don't stream in low quality.


livestreamer --stdout twitch.tv/brequiem source | vlc -vvv - --sout '#transcode{width=400,vcodec=mp1v,acodec=mpga,ab=128,channels=2,samplerate=44100}:standard{access=http,mux=ts,dst=localhost:8000/live}'


gstreamer is GARBAGE on OSX

livestreamer --stdout twitch.tv/therace best | /Library/Frameworks/GStreamer.framework/Versions/0.10/bin/gst-launch-0.10 fdsrc fd=0 ! flvdemux name=demux demux.video_00 ! queue ! vtdec_h264 ! autovideosink
