# Theory of Automata slides

Github actions workflow to take uploaded images and generate a pdf from them. The pdf is then uploaded to our telegram group.

## How?

[This script](https://github.com/pranavgade20/toa-slides/blob/master/script.sh) converts the pngs in images/ to pdf(you just need imagemagik installed).
[This workflow](https://github.com/pranavgade20/toa-slides/blob/master/.github/workflows/action.yml) clones the repo and installs dependencies, runs the script, and uploads the generated pdf to the telegram group.
