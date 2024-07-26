# rice-code

## Pre-requisites

- alias `code` to open Visual Studio Code (or code binary in your PATH)
- go
- jp2a, imagemagick, jq

## Installation

```bash
git clone git@github.com:LOISGALLAUD/rice-code.git ~/.rice-code
go build ~/.rice-code/get_language.go
echo "alias code='~/.rice-code/rice-code.sh'" >> ~/.bashrc # or ~/.zshrc
```

## Examples

![python](images/image-4.png)
![bash](images/image-2.png)
![C](images/image-3.png)
![golang](images/image.png)
