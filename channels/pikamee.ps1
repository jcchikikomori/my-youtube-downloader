# Enter the channel URL and output folder name
$channel_url = "https://www.youtube.com/channel/UCajhBT4nMrg3DLS-bLL2RCg"
$output_folder = ".\vods"

# Create the output folder if it does not exist
New-Item -ItemType Directory -Force -Path $output_folder | Out-Null

# Download the channel
youtube-dlc --write-info-json --write-description --write-thumbnail --playlist-end 99999 --output "$output_folder/%(uploader)s/%(title)s.%(ext)s" "$channel_url" --ignore-errors
