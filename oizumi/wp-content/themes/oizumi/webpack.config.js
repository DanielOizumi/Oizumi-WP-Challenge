const path = require("path");
const assetsConfig = require("./assets/assets.config");
const TerserPlugin = require("terser-webpack-plugin");

module.exports = {
  entry: `${assetsConfig.js.src}/main.js`,
  output: {
    filename: "./main.js",
    path: path.resolve(__dirname, `${assetsConfig.js.dest}`),
  },
  context: path.resolve(__dirname, "."),
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
  optimization: {
    minimize: true,
    minimizer: [new TerserPlugin()],
  },
};
