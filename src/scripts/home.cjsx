ReactDOM     = require 'react-dom'
React        = require 'react'
HelloMessage = require './elements/hello.cjsx'

ReactDOM.render <HelloMessage name="Luke" />, $('.layout-main')[0]
