#!/usr/bin/env bash
echo $1
rm -rf unversioned/
youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' $1 -o 'unversioned/videos/video-%(id)s.%(ext)s'

vid_file=unversioned/videos/$(ls unversioned/videos) 
echo ${vid_file}

python demo.py --vid_file ${vid_file} --output_folder unversioned/output --keep

aws s3 cp --recursive unversioned s3://elated-3dpose-data/
rm -rf unversioned/
