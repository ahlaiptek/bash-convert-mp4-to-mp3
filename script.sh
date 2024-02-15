#!/bin/bash

# Pastikan ffmpeg terinstal
command -v ffmpeg >/dev/null 2>&1 || { echo >&2 "Mohon instal ffmpeg terlebih dahulu."; exit 1; }

# Cek argumen input
if [ "$#" -ne 2 ]; then
    echo "Gunakan: $0 input.mp4 output.mp3"
    exit 1
fi

# Eksekusi konversi
ffmpeg -i "$1" -vn -acodec libmp3lame -q:a 2 "$2"

echo "Konversi selesai: $1 ke $2"
