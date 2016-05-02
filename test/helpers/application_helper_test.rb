require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  include ApplicationHelper

  test 'should return valid URL' do
    assert_equal 'http://facebook.com/sharer/sharer.php', external_url('http://facebook.com/sharer/sharer.php')
  end

  test 'should return valid URL with options' do
    assert_equal 'http://facebook.com/sharer/sharer.php?foo=bar', external_url('http://facebook.com/sharer/sharer.php', foo: 'bar')
  end

  test 'should return valid URL with options and query parameters' do
    assert_equal 'http://facebook.com/sharer/sharer.php?foo=bar&baz=qux', external_url('http://facebook.com/sharer/sharer.php?foo=bar', baz: 'qux')
  end
  test 'should convert text to url params properly' do
    assert_equal '//twitter.com/intent/tweet?text=just+signed+up+for+early+access+to+%40therelishsports%2C+a+new+home+for+female+sports+fans.+Join+early+with+me%21+%23therelish+http%3A%2F%2Fexample.com', external_url(I18n.t('social.twitter.share_url'), text: I18n.t('social.twitter.share_message', u: 'http://example.com'))
  end
end
