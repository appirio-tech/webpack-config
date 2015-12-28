React    = require 'react'
ReactDOM = require 'react-dom'

element =
  render: ->
    <h1>{this.props.name}, I am your daddy!</h1>

module.exports = React.createClass element

