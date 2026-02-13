for file in images/*.jpg images/*.png; do
    # Skip if there are no matching files (e.g., if you only have jpgs and no pngs)
    [ -e "$file" ] || continue
    
    # Generate the thumbnail, grabbing only the first frame/layer
    [ ! -f "tn/$file" ] && convert "${file}[0]" -thumbnail 160x160 "tn/$file"
done