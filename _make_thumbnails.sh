for file in images_new/*.{jpg,png}; do
    [ ! -f "tn/$file" ] && convert "$file"  -thumbnail 160x160 "tn/$file"
done