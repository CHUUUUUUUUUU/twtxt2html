#!/bin/sh

twtxt="$(cat static/tw.txt)"

output="content/twtxt.md"

t="[@tw.txt](/tw.txt)
"
nojs=false

timeago="

<script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/npm/timeago.js@3.0.2/dist/timeago.min.js\"></script>

"

script="

<script>timeago().render(document.querySelectorAll('.timeago'));</script>"

if [ "$nojs" = true ]
then
    echo "$t$twtxt" >> $output
    sed -e "s/[0-9]*-[0-9]*-[0-9]*T[0-9]*:[0-9]*:[0-9]*.[0-9]*:[0-9]*/<span id=\"&\"  datetime=\"&\" title=\"&\"><a href=\"#&\">&<\/a><\/span>/g;/^$/d;G;s/	/<br \/>/g" -i $output
else
    echo "$t$timeago$twtxt$script" >> $output
    sed -e "s/[0-9]*-[0-9]*-[0-9]*T[0-9]*:[0-9]*:[0-9]*.[0-9]*:[0-9]*/<span class=\"timeago\" datetime=\"&\" title=\"&\">&<\/span>/g;/^$/d;G;s/	/<br \/>/g" -i $output
fi

