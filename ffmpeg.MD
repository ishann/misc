## Rename files in folder sequentially to make video sequence.
  `ls | cat -n | while read n f; do mv "$f" "file-$n.bmp"; done`

## Make a video out of sequential image filenames.
  `ffmpeg -r 4 -f image2 -s 1280x720 -i file-%d.bmp -vcodec libx264 -crf 25  -pix_fmt yuv420p test.mp4`

## Overlay text on video.
  `ffmpeg -i INPUT.MP4 -vf drawtext="fontfile=/usr/share/fonts/truetype/freefont/FreeSerif.ttf: text='TEXT': fontcolor=white: fontsize=36: box=1: boxcolor=black@0.5: boxborderw=5: x=X: y=Y" -codec:a copy OUTPUT.MP4`

## Concatenate two videos side by side.
  `ffmpeg  -i img.mp4  -i viz.mp4  -filter_complex '[0:v]pad=iw*2:ih[int];[int][1:v]overlay=W/2:0[vid]'  -map [vid]  -c:v libx264  -crf 23  -preset veryfast output.mp4`
