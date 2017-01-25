require 'test_helper'

class ApiWrapper::Auth::HttpBasicTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ApiWrapper::Auth::HttpBasic.VERSION
  end
end
