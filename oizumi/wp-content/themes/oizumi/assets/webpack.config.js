const path = require("path");
const cfg = require("./assets.config");
const TerserPlugin = require("terser-webpack-plugin");

module.exports = {
  // Entry point for the JavaScript application
  entry: `${cfg.js.src}/main.js`,

  // Configuration for the output bundle
  output: {
    filename: "./main.js",
    path: path.resolve(__dirname, `${cfg.js.dest}`),
  },

  // Specify the context for resolving entry points and loaders
  context: path.resolve(__dirname, "."),

  // Define module rules for processing different file types
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"],
          },
        },
      },
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"],
      },
    ],
  },

  // Configuration for optimization, including minimizing JavaScript
  optimization: {
    minimize: true,
    minimizer: [new TerserPlugin()],
  },
};
