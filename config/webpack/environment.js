const { environment } = require('@rails/webpacker')
<<<<<<< Updated upstream
const webpack = require("webpack")
environment.plugins.append("Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"]
  })
)
=======
<<<<<<< Updated upstream
>>>>>>> Stashed changes

=======
const webpack = require("webpack");
environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    Popper: ["popper.js", "default"],
  })
);
>>>>>>> Stashed changes
module.exports = environment
