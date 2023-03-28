# Enter the channel URL and output folder name
$channel_url = "CHANNEL_URL_HERE"
$output_folder = "OUTPUT_FOLDER_NAME_HERE"

# Create the output folder if it does not exist
New-Item -ItemType Directory -Force -Path $output_folder | Out-Null

# Download the channel
yt-dlc --write-info-json --write-description --write-thumbnail --playlist-end 99999 --output "$output_folder/%(uploader)s/%(title)s.%(ext)s" "$channel_url"
