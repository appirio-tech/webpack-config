var React = require('react')
var TestUtils = require('react/lib/ReactTestUtils')
var expect = require('expect')
import { shallow, mount, render } from 'enzyme'
var Hello = require('./hello.cjsx')

describe('hello', function () {
  it('renders without problems', function () {
    // var hello = TestUtils.renderIntoDocument(<Hello name="Luke"/>)
    // expect(hello).toExist()
    //using enzyme
    const wrapper = shallow(<Hello name="Luke" />)
    expect(wrapper.find('button').length).toEqual(1)
    expect(wrapper.find('h1').length).toEqual(1)
    wrapper.find('button').simulate('click');
  });
});