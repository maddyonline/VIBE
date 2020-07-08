#!/usr/bin/env bash

source activate vibe-env
pip install numpy==1.17.5 torch==1.4.0 torchvision==0.5.0
pip install git+https://github.com/giacaglia/pytube.git --upgrade
pip install -r requirements.txt
pip install -U llvmlite==0.32.1

