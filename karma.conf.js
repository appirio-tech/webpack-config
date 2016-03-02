
var webpackConfig = require('./webpack.config.js')
var path          = require('path')

// Make jQuery globally available
webpackConfig.module.loaders.push({
  test: /jquery-1\.10\.2\.js$/,
  loader: 'expose?jQuery'
})

webpackConfig.externals = {
  'cheerio': 'window',
  'react/lib/ExecutionEnvironment': true,
  'react/lib/ReactContext': true
}

module.exports = function(config) {
  var dirname = __dirname
  if (config.dirname) {
    dirname = config.dirname
  }

  var testsrc = config.testsrc ? config.testsrc : 'src'
  var testFiles = testsrc + '/**/*.spec.js';
  console.log(testFiles);
  config.set({
    // Base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: './',

    frameworks: ['mocha'],

    // List of files / patterns to load in the browser
    files: [
      './node_modules/jquery/dist/jquery.js',
      testFiles
    ],

    exclude: ['package.js', 'index.js'],

    proxies: {
      '/': 'http://localhost:8888/'
    },

    // Preprocess matching files before serving them to the browser
    preprocessors: {
      './app/**/!(*.spec)+(.js)': ['webpack', 'coverage'],
      '**/*.spec.js' : ['babel', 'webpack']
    },

    babelPreprocessor: {
      options: {
        presets: ['es2015', 'react', 'stage-2'],
        sourceMap: 'inline'
      }
    },

    webpack: webpackConfig,

    webpackMiddleware: {
      stats: {
        colors: true,
        hash: false,
        version: true,
        timings: true,
        assets: false,
        chunks: false,
        source: true,
        errorDetails: true,
        chunkOrigins: true,
        children: false
      }
    },

    // Possible values: 'dots', 'progress', 'coverage'
    // Available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['junit', 'progress', 'coverage'],

    junitReporter: {
      outputDir: 'report/junit',
      outputFile: 'test-results.xml',
      useBrowserName: false
    },

    coverageReporter: {
      dir: './report/coverage',
      reporters: [
        {type: 'html', subdir: 'report-html'},
        {type: 'lcov', subdir: '.', file: 'lcov.info'},
        {type: 'text-summary'},
        {type: 'cobertura', subdir: 'cobertura', file: 'coverage.xml'}
      ]
    },

    // Web server port
    port: 9876,

    // Enable / disable colors in the output (reporters and logs)
    colors: true,

    // Level of logging
    // Possible values: config.LOG_DISABLE || config.LOG_ERROR ||
    // config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,

    // browsers: [ process.env.CONTINUOUS_INTEGRATION ? 'Firefox' : 'Chrome' ],
    browsers: [ 'PhantomJS' ],

    // Continuous Integration mode
    // If true, Karma captures browsers, runs the tests and exits
    singleRun: true
  })
}