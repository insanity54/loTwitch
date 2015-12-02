This is how you install the loTwitch server. (the server that sits in the cloud with it's fast internet, and forwards you a low quality version of the stream you want to watch)

```
# add-apt-repository ppa:gstreamer-developers/ppa
# apt-get update
# apt-get install gstreamer1.0* icecast2 python-pip
# pip install livestreamer
$ livestreamer twitch.tv/josibee worst
```
