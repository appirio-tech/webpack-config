module.exports = (options) ->
  path              = require 'path'
  ExtractTextPlugin = require 'extract-text-webpack-plugin'
  HtmlWebpackPlugin = require 'html-webpack-plugin'

  { dirname, entry, template } = options

  dirname = dirname || __dirname

  # Default flags for build
  BUILD = false
  TEST = false
  ENV = 'mock'

  # Pull flags from command line arguments
  process.argv.forEach (arg) ->
    TEST = true  if arg == '--test'
    BUILD = true if arg == '--build'

    ENV = 'dev'  if arg == '--dev'
    ENV = 'qa'   if arg == '--qa'
    ENV = 'prod' if arg == '--prod'

  # Set environment variables to be injected into the app by envify
  if ENV == 'dev'
    Object.assign process.env,
      API_URL                 : 'https://api-work.topcoder-dev.com'
      AUTH0_CLIENT_ID         : 'JFDo7HMkf0q2CkVFHojy3zHWafziprhT'
      AUTH0_DOMAIN            : 'topcoder-dev.auth0.com'
      NEWRELIC_APPLICATION_ID : '7374849'
      NEWRELIC_LICENSE_KEY    : '496af5ee90'
 
  if ENV == 'qa'
    Object.assign process.env,
      API_URL         : 'https://api-work.topcoder-qa.com'
      AUTH0_CLIENT_ID : 'EVOgWZlCtIFlbehkq02treuRRoJk12UR'
      AUTH0_DOMAIN    : 'topcoder-qa.auth0.com'

  if ENV == 'prod'
    Object.assign process.env,
      API_URL      : 'https://api-work.topcoder.com'
      AUTH0_DOMAIN : 'topcoder.auth0.com'

  # Config
  # Reference: http://webpack.github.io/docs/configuration.html
  # This is the object where all configuration gets set

  config = {}
  config.context = dirname

  # Entry
  # Reference: http://webpack.github.io/docs/configuration.html#entry
  # This is a convenience default. Override in local webpack config if needed
  # Should be an empty object if it's generating a test build
  # Karma will set this when it's a test build

  if entry
    config.entry = entry
  else
    config.entry =
      src    : path.join(__dirname, '/src/src.coffee')
      example: [
        'webpack-dev-server/client?http://localhost:8080'
        path.join(__dirname, '/example/example.coffee')
      ]

  # Output
  # Reference: http://webpack.github.io/docs/configuration.html#output
  # Should be an empty object if it's generating a test build
  # Karma will handle setting it up for you when it's a test build

  if TEST
    config.output = {}
  else
    config.output =
      path          : path.join(dirname, '/dist')
      filename      : '[name].[hash].js'
      chunkFilename : '[name].[hash].js'

  # Devtool
  # Reference: http://webpack.github.io/docs/configuration.html#devtool
  # Type of sourcemap to use per build type

  if TEST
    config.devtool = 'inline-source-map'
  else if BUILD
    config.devtool = 'source-map'
  else
    config.devtool = 'eval'

  # Loaders
  # Reference: http://webpack.github.io/docs/configuration.html#module-loaders
  # List: http://webpack.github.io/docs/list-of-loaders.html
  # This handles most of the magic responsible for converting modules

  config.module =
    preLoaders: []
    loaders: [
      # JS LOADER
      # Reference: https://github.com/babel/babel-loader
      # Transpile .js files using babel-loader
      # Compiles ES6 and ES7 into ES5 code
      test: /\.js$/
      loader: 'babel-loader'
      exclude: /node_modules\/(?!appirio-tech.*)/
      query:
        presets: [ 'es2015' ]
    ,
      test: /\.jade$/
      loader: 'jade-loader?self'
    ,
      test: /\.html$/
      loader: 'raw'
    ,
      test: /\.coffee$/
      loader: 'coffee'
    ,
      test: /\.cjsx$/
      loaders: ['coffee', 'cjsx']
    ,
      test: /\.(coffee\.md|litcoffee)$/
      loader: 'coffee?literate'
    ,
      test: /\.json$/
      loader: 'json'
    ,
      test: /\.scss$/
      loader: ExtractTextPlugin.extract 'style-loader', 'css-loader!sass-loader'
    ,
      test: /\.css$/
      loader: ExtractTextPlugin.extract 'style-loader', 'css-loader'
    ,
      # ASSET LOADER
      # Reference: https:#github.com/webpack/file-loader
      # Copy png, jpg, jpeg, gif, svg, woff, woff2, ttf, eot files to output
      # Rename the file using the asset hash
      # Pass along the updated reference to your code
      # You can add here any file extension you want to get copied to your output    
      test: /\.(png|jpg|jpeg|gif|svg|woff|woff2|ttf|eot)$/
      loader: 'file'
    ]
    postLoaders: [
      test: /\.js|\.coffee$/
      loader: 'transform?envify'
    ]

  config.resolve =
    modulesDirectories: ['node_modules']
    extensions: [
      ''
      '.js'
      '.json'
      '.coffee'
      '.jade'
      '.scss'
      '.svg'
      '.png'
      '.gif'
      '.jpg'
      '.cjsx'
    ]

  config.sassLoader =
    includePaths: [
      path.join dirname, '/node_modules/bourbon/app/assets/stylesheets'
      path.join dirname, '/node_modules/appirio-styles/styles'
    ]


  # Plugins
  # Reference: http://webpack.github.io/docs/configuration.html#plugins
  # List: http://webpack.github.io/docs/list-of-plugins.html

  config.plugins = []

  if !TEST
    config.plugins.push new ExtractTextPlugin '[name].css'

    config.plugins.push new HtmlWebpackPlugin
      template: template || './example/index.html'
      inject: 'body'

  if BUILD
    # Reference: http://webpack.github.io/docs/list-of-plugins.html#noerrorsplugin
    # Only emit files when there are no errors
    config.plugins.push new webpack.NoErrorsPlugin()

    # Reference: http://webpack.github.io/docs/list-of-plugins.html#dedupeplugin
    # Dedupe modules in the output
    config.plugins.push new webpack.optimize.DedupePlugin()

    # Reference: http://webpack.github.io/docs/list-of-plugins.html#uglifyjsplugin
    # Minify all javascript, switch loaders to minimizing mode
    config.plugins.push new webpack.optimize.UglifyJsPlugin()

  config
