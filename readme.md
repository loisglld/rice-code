# lol-code

## Pre-requisites

- alias `code` to open Visual Studio Code (or code binary in your PATH)
- go
- jp2a, imagemagick, jq

## Installation

```bash
git clone git@github.com:LOISGALLAUD/lol-code.git ~/.lol-code
go build ~/.lol-code/get_language.go
echo "alias code='~/.lol-code/lol-code.sh'" >> ~/.bashrc # or ~/.zshrc
```

## Examples

![python](images/image-4.png)
![bash](images/image-2.png)
![C](images/image-3.png)
![golang](images/image.png)
