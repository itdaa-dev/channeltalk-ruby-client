# frozen_string_literal: true

require "test_helper"

class ConfigTest < Minitest::Test
  def test_must_configure_the_gem_with_your_api_key_and_api_secret
    assert_equal "5f0c00d1a5a339312d6f", Channeltalk.api_key
    assert_equal "39b09f76770ff3a229134bf2fbe0ba37", Channeltalk.api_secret
  end
end
