require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  include ApplicationHelper

  test 'should return valid URL' do
    assert_equal 'http://facebook.com/sharer/sharer.php',
                 external_url('http://facebook.com/sharer/sharer.php')
  end

  test 'should return valid URL with options' do
    assert_equal 'http://facebook.com/sharer/sharer.php?foo=bar',
                 external_url('http://facebook.com/sharer/sharer.php', foo: 'bar')
  end

  test 'should return valid URL with options and query parameters' do
    assert_equal 'http://facebook.com/sharer/sharer.php?foo=bar&baz=qux',
                 external_url('http://facebook.com/sharer/sharer.php?foo=bar', baz: 'qux')
  end
  test 'should convert text to url params properly' do
    assert_equal '//twitter.com/intent/tweet?text=just+signed+up',
                 external_url('//twitter.com/intent/tweet', text: 'just signed up')
  end
end
