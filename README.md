# Create a video with subtitles burned in

Demo I created so that you could run a video with the Cognitive Services Video Indexer service, pull out all the dialog and subtitle file, pass those into this container (via URL), and it would return the video with subtitles burned-in.

## Environment Variables

|Name|Description|
|--|--|
|subtitles|URL to a subtitle file|
|video|URL to the video|
|generate_gif|`true|false` if you want to generate a 10 second GIF as well|