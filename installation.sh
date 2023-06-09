#!/bin/bash
# clone the repository
git clone --recursive https://github.com/NVIDIAGameWorks/kaolin
# navigate to main folder
cd kaolin
# install dependencies
pip install -r tools/build_requirements.txt -r tools/viz_requirements.txt -r tools/requirements.txt
# install pytorch (cpuonly)
pip install torch==1.12.1+cpu torchvision==0.13.1+cpu torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cpu
# run setup
python setup.py develop