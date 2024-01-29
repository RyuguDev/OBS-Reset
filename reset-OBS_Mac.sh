#!/bin/bash

osascript -e 'quit app "OBS Studio"'
cd ~/.config/obs-studio || exit
cp -r . ~/Desktop/OBS_Backup/
rm -rf * && rm -rf ./basic/*
rm -rf ./cache/*
open -a "OBS Studio"
