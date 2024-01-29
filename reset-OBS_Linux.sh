#!/bin/bash

# OBS Studio schließen
pkill obs

# OBS Konfigurationsordner finden
cd ~/.config/obs-studio || exit

# Konfiguration sichern (optional)
cp -r . ../OBS_Backup/

# Konfigurationsdateien löschen
rm -rf * && rm -rf ./basic/*

# Cache zurücksetzen (optional)
rm -rf ./cache/*

# OBS Studio neu starten
obs &
