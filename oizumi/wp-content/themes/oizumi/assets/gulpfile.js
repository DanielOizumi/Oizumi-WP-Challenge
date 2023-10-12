/*
  Gulp Build Script
  -----------------
  This Gulp script automates the build process for a web project. It handles tasks
  such as processing assets, Sass compilation, JavaScript bundling with Webpack, and
  generating SVG sprites.

  Tasks:
  - `default`: Builds the project and watches for changes.
  - `build`: Builds the project without watching for changes.
  - `watch`: Watches for changes to project files.

  Configuration:
  - Configuration settings are defined in 'assets.config.js' and 'webpack.config.js'.
  - File destinations and sources are defined in 'assets.config.js'.
  - Webpack configuration is defined in 'webpack.config.js'.
*/

// Import required packages
const gulp = require("gulp");
const flatten = require("gulp-flatten");
const sourcemaps = require("gulp-sourcemaps");
const rename = require("gulp-rename");
const sass = require("gulp-dart-sass");
const webpack = require("webpack");
const webpackConfig = require("./webpack.config.js");
const svgSprite = require("gulp-svg-sprite");
const cfg = require("./assets.config.js");

// Assets
const assetsSrc = `${cfg.assets.src}/**/*`;
const assetsDest = `${cfg.assets.dest}`;

// Function to process assets
const processAssets = () => {
  return gulp.src([assetsSrc]).pipe(gulp.dest(assetsDest));
};

// Function to watch changes in assets
const watchAssets = () => {
  gulp.watch([assetsSrc], processAssets);
};

// SVGs
const svgSrc = `${cfg.svgs.src}/*.svg`;
const svgDest = `${cfg.svgs.dest}`;

// Function to process SVGs
const processSVGs = () => {
  return gulp
    .src([svgSrc])
    .pipe(
      svgSprite({
        mode: {
          stack: true,
        },
        svg: {
          xmlDeclaration: false,
          doctypeDeclaration: false,
        },
      })
    )
    .pipe(gulp.dest(svgDest));
};

// Function to watch changes in SVGs
const watchSVGs = () => {
  gulp.watch([svgSrc], processSVGs);
};

// CSS
// Function to process Sass
const processSass = () => {
  return gulp
    .src(`${cfg.css.src}/${cfg.css.entryFilename}`)
    .pipe(sourcemaps.init())
    .pipe(sass().on("error", sass.logError))
    .pipe(
      rename((path) => {
        const split = cfg.css.outputFilename.split(".");
        path.basename = split[0];
        path.extname = `.${split[1]}`;
      })
    )
    .pipe(sourcemaps.write("."))
    .pipe(gulp.dest(`${cfg.css.dest}`));
};

// Function to watch changes in Sass files
const watchSass = () => {
  gulp.watch(
    [`${cfg.css.src}/**/*.scss`, `${cfg.assets.src}/**/*.scss`],
    processSass
  );
};

// JavaScript
// Function to bundle scripts using Webpack
function webpackScripts() {
  webpackConfig.mode = "development";
  return new Promise((resolve) =>
    webpack(webpackConfig, (err, stats) => {
      if (err) console.log("Webpack", err);

      console.log(
        stats.toString({
          /* stats options */
        })
      );

      resolve();
    })
  );
}

// Function to process JavaScript files
const processJS = gulp.series(webpackScripts);

// Function to watch changes in JavaScript files
const watchJS = () => {
  gulp.watch(
    [
      `${cfg.js.src}/**/*.js`,
      `${cfg.assets.src}/**/*.js`,
      `${cfg.jsLibs.src}/**/*.js`,
    ],
    processJS
  );
};

// Watch
// Create a task to watch for changes in different parts of the project
const watchTask = gulp.parallel(watchSass, watchJS, watchAssets, watchSVGs);
watchTask.description = "watch for changes to all source";

// Process
// Create a task to process all assets
const processTask = gulp.parallel(
  processSass,
  processJS,
  processAssets,
  processSVGs
);

// Default task
// Define default, build, and watch tasks
const defaultTask = gulp.series(processTask, watchTask);
gulp.task("default", defaultTask);
gulp.task("build", processTask);
gulp.task("watch", watchTask);
