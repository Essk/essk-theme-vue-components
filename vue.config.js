module.exports = {
  configureWebpack: config => {
    config.entry = {

           main : "./src/apps/main.js",
    }
    config.output.filename='js/[name].build.js';
    config.output.chunkFilename='js/[name].js';
    
  }
}