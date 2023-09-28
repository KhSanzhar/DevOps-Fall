



unzip archive_10001.zip
echo "21B030915" >> word.txt
zip archive_10001.zip empty.txt word.txt

for ((i=10001; i>=2; i--)); do
    prev_zip_file="archive_${i}.zip"
    zip_file="archive_$((i-1)).zip"
    txt_file="empty.txt"
    
    zip "$zip_file" "$prev_zip_file" "$txt_file"
    rm "$prev_zip_file"
done
