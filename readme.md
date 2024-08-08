<p align="center"><a href="https://laravel.com" target="_blank"><img src="images/logo.png" alt="rice-code logo" width="200"></a></p>

<p align="center">
<!-- shields -->
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white" alt="Go">
<img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Shell Script">
<img src="https://img.shields.io/badge/VSCode-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white" alt="VSCode">
<img src="https://img.shields.io/badge/Build-Passing-brightgreen?style=for-the-badge" alt="Build Status">
<img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License">
<img src="https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge" alt="Version">
</p>

## Description

A ricing tool for Visual Studio Code in your terminal. It displays with ASCII art the predominant language of the files in the current directory / the extension of the file you are currently editing.

To use it, simply type `code` in your terminal.

_et voilà_ ! Give it a star if you like it 🌟

## Pre-requisites

- alias `code` to open Visual Studio Code (or code binary in your PATH)
- go
- jp2a, imagemagick, jq

## Installation

```bash
git clone git@github.com:LOISGALLAUD/rice-code.git ~/.rice-code
cd ~/.rice-code
go build ~/.rice-code/get_language.go
cd - > /dev/null
echo "alias code='~/.rice-code/rice-code.sh'" >> ~/.zshrc # or ~/.bashrc
```

## Examples

![python](images/image-4.png)
![bash](images/image-2.png)
![C](images/image-3.png)
![golang](images/image.png)
