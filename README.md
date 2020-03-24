# Selenium-Crystal

## What for

For using Selenium(ChromeDriver) with Crystal lang

## Attentions

- Use user **seluser** to use selenium
  - Don't forget add a permission of your directory by `sudo chown -R seluser:seluser YOUR_DIR_PATH`

## Config

### ARGS

- CRYSTAL_VER (Default: 0.32.1)
- CRYSTAL_CACHE_DIR (Default: /home/seluser/.crystal)

### ENV
- CRYSTAL_CACHE_DIR (Default: /home/seluser/.crystal)

## Base Image

- selenium/standalone-chrome
