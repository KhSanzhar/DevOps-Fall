md5sum *.jpg | cut -f2 -d "=" | sort | uniq -c | sort -nr | grep -v "   1  " | uniq -w32 -dD | cut -c43- | xargs rm
