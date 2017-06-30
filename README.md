mp3-rename
==========================

Renames mp3 based on it's id3 tags

Base renaming template:

`artist - title.mp3`

## Usage

`./mp3-rename.sh "my sound.mp3"`

To rename entire folder of mp3s, use:

`for f in ./folder-name/*; do ./mp3-rename.sh "$f"; done`

## Requirements

mp3info (http://ibiblio.org/mp3info/)

Can be installed by:

`sudo apt-get install mp3info`

or

`brew install mp3info`

