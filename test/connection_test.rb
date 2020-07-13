# frozen_string_literal: true

require "test_helper"

class ConnectionTest < Minitest::Spec
  it "initilize connection" do
    connection = Channeltalk::Client.connection
    assert_equal "5f0c00d1a5a339312d6f", connection.instance_variable_get(:@api_key)
    assert_equal "39b09f76770ff3a229134bf2fbe0ba37", connection.instance_variable_get(:@api_secret)
    assert_equal "https://api.channel.io/open/v3/", connection.instance_variable_get(:@api_base_uri)
  end
end
