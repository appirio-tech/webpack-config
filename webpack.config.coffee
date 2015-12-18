module.exports = (__dirname) ->
  path              = require 'path'
  ExtractTextPlugin = require 'extract-text-webpack-plugin'

  config = {}
  config.context = __dirname

  config.entry =
    src    : path.join(__dirname, '/src/src.coffee')
    example: [
      "webpack-dev-server/client?http://localhost:8080"
      path.join(__dirname, '/example/example.coffee')
    ]

  config.output =
    path: path.join(__dirname, '/dist')
    filename: '[name].js'

  config.devServer =
    contentBase       : path.join(__dirname, '/example/')
    historyApiFallback: true
    noInfo            : false

  config.resolve =
    modulesDirectories: ['node_modules']
    extensions: ['', '.js', '.json', '.coffee', '.jade', '.scss']

  config.sassLoader =
    includePaths: [
      path.join __dirname, '/node_modules/bourbon/app/assets/stylesheets'
      path.join __dirname, '/node_modules/appirio-styles/styles'
    ]

  config.module =
    loaders: [
      test: /\.jade$/
      loader: 'jade-loader?self'
    ,
      test: /\.html$/
      loader: 'raw'
    ,
      test: /\.coffee$/
      loader: "coffee"
    ,
      test: /\.(coffee\.md|litcoffee)$/
      loader: "coffee?literate"
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
      test: /\.(png|jpg|jpeg|gif|svg|woff|woff2|ttf|eot)$/
      loader: 'file'
    ]

  config.plugins = [
    new ExtractTextPlugin '[name].css'
  ]

  config
