#!/bin/bash
# Convert deepzoom JPEG tiles to AVIF using vips
# Originals are preserved; output goes to realny_tiles_avif_files/

VIPS="E:/dev_personal/vips-dev-8.18/bin/vips.exe"
SRC="E:/dev_personal/revilla.info/public/assets/realny_tiles_files"
DST="E:/dev_personal/revilla.info/public/assets/realny_tiles_avif_files"
QUALITY=70
PARALLEL=16

echo "=== AVIF tile conversion ==="
echo "Source:  $SRC"
echo "Output:  $DST"
echo "Quality: Q=$QUALITY (compression=av1)"
echo "Workers: $PARALLEL"
echo ""

# Create output directory structure
echo "Creating output directories..."
for level_dir in "$SRC"/*/; do
    level=$(basename "$level_dir")
    mkdir -p "$DST/$level"
done
cp "$SRC/vips-properties.xml" "$DST/vips-properties.xml"
echo "Directories ready."
echo ""

# Build list of all tiles and convert in parallel
echo "Converting tiles..."
START=$(date +%s)

find "$SRC" -name "*.jpeg" -print0 | xargs -0 -P "$PARALLEL" -I{} bash -c '
    VIPS="$1"
    SRC="$2"
    DST="$3"
    Q="$4"
    src="$5"
    rel="${src#$SRC/}"
    dst="$DST/${rel%.jpeg}.avif"
    "$VIPS" copy "$src" "${dst}[Q=${Q},compression=av1]" 2>/dev/null
' _ "$VIPS" "$SRC" "$DST" "$QUALITY" {}

END=$(date +%s)
ELAPSED=$((END - START))

echo ""
echo "=== Done in ${ELAPSED}s ==="
CONVERTED=$(find "$DST" -name "*.avif" | wc -l)
echo "Converted: $CONVERTED tiles"

# Size comparison
SRC_SIZE=$(du -sh "$SRC" 2>/dev/null | cut -f1)
DST_SIZE=$(du -sh "$DST" 2>/dev/null | cut -f1)
echo "Original size: $SRC_SIZE"
echo "AVIF size:     $DST_SIZE"
