# Copyright (c) 2023, azazelm3dj3d (https://github.com/azazelm3dj3d)
# License: MIT
# Authors: azazelm3dj3d (https://github.com/azazelm3dj3d)

# Generate a zip to upload through the Roku developer portal
# May eventually expand to upload to the Roku TV remotely as well instead of requiring a zip upload within the UI

# Example: ./generate.sh
function zip_file() {
    zip bin/app.zip -r * -x "*.DS_Store" "*.gitkeep" "generate.sh" "README.md" "bin/*" ".gitignore" "LICENSE"
}

zip_file
