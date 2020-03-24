# Selenium-Crystal

## What for

For using Selenium(ChromeDriver) with Crystal lang

## Attentions

- Use user **seluser** to use selenium
  - Don't forget add a permission of your directory by `sudo chown -R seluser:seluser YOUR_DIR_PATH`

## Config

### ARG

- CRYSTAL_VER (Default: 0.32.1)

### ENV
- CRYSTAL_CACHE_DIR (Default: $HOME/.cashe/crystal)

## Base Image

- selenium/standalone-chrome
