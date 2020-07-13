# frozen_string_literal: true

require "faraday"

require "channeltalk/version"
require "channeltalk/core_ext/hash/keys"
require "channeltalk/configuration"
require "channeltalk/connection"
require "channeltalk/client"
require "channeltalk/error"
require "channeltalk/objectified_hash"

require "channeltalk/api/user"

module Channeltalk
  extend Configuration
end
