#!/bin/bash
# Simple bash script that attempts to use cURL to upload a file to the target site (site must accept PUT request method)
# this will work on almost nothing lol
# UwU
command -v curl >/dev/null 2>&1 || { echo >&2 "This requires cURL but it's not installed UwU"; exit 1; }
read -p "Enter the URL (MUST be a URL like this http://example.com/ NOT http://example.com/index.html!): " penis
read -p "Enter upload file (MUST be in the same directory): " cbt
cum=$(dirname "$penis")
soundingisbad=$(basename "$cbt")
if [ ! -f "$soundingisbad" ]; then
    echo -e "\e[31m[ERROR]: Please enter a file in this directory\e[0m"
    exit 1
fi
asshole=$(curl -s -o /dev/null -w "%{http_code}" --user-agent "Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.4 (KHTML, like Gecko) Chrome/4.0.237.0 Safari/532.4 Debian" --referer "https://google.com/" --url "$penis" --upload-file "$cbt" -I)
if [ "$asshole" -eq "200" ]; then
    echo -e "\e[32mSuccess!\e[0m"
elif [ "$asshole" -eq "404" ]; then
    echo -e "\e[31m[ERROR]: Got error 404 on $penis ):\e[0m" >&2
else
    echo -e "\e[31m[ERROR]: Failed to upload to $penis ):\e[0m" >&2
fi
