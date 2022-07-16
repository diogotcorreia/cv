# Curriculum Vitae - Diogo Correia

Why HTML? Because it can be easily [shared on the web](https://cv.diogotc.com)

![CV Preview](.github/preview.png)

## Project Structure

The content itself can be found at `data/content.yaml`.
HTML template files are located inside the `layouts` directory.

## Running Locally

You must install [Hugo](https://gohugo.io/) and then run

```
hugo server -D
```

Additionally, to install formatting dependencies, run

```
npm install
npm run format # run formatter
```

## Building to Production

To build for production with minification, run

```
hugo -D --gc --minify
```
