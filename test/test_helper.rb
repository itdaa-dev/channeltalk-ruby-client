# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "channeltalk"

require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "test/cassettes"
  c.hook_into :faraday
end

Channeltalk.configure do |config|
  config.api_key = "5f0c00d1a5a339312d6f"
  config.api_secret = "39b09f76770ff3a229134bf2fbe0ba37"
  config.timeout = 10
  config.debug = true
end
