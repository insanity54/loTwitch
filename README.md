# loTwitch
stream twitch on mobile even if streamer doesnt support it


livestreamer --stdout twitch.tv/brequiem source | vlc -vvv - --sout '#transcode{width=400,vcodec=mp1v,acodec=mpga,ab=128,channels=2,samplerate=44100}:standard{access=http,mux=ts,dst=localhost:8000/live}'