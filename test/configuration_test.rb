# frozen_string_literal: true

require "test_helper"

class ConfigurationTest < Minitest::Spec
  it "user_agent" do
    assert_equal "Channeltalk Ruby Client Gem #{Channeltalk::VERSION}", Channeltalk::Configuration::DEFAULT_USER_AGENT
  end

  it "api_base_uri" do
    assert_equal "https://api.channel.io/open/v3/", Channeltalk::Configuration::DEFAULT_API_BASE_URI
  end

  it "must configure the gem with your api_key and api_secret" do
    assert_equal "5f0c00d1a5a339312d6f", Channeltalk.api_key
    assert_equal "39b09f76770ff3a229134bf2fbe0ba37", Channeltalk.api_secret
    assert_equal 10, Channeltalk.timeout
  end
end
