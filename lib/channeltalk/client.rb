# frozen_string_literal: true

module Channeltalk # :nodoc:
  # Common functionality across Channeltalk API objects.
  class Client
    # The connection object being used to communicate with Channeltalk.
    # @return [Channeltalk::Connection] the connection
    def connection
      self.class.connection
    end

    # Converts the response body to an ObjectifiedHash.
    def self.parse(body)
      if body.is_a?(Hash)
        body = body.deep_underscore_keys
        ObjectifiedHash.new(body)
      elsif body.is_a?(Array)
        body = body.deep_underscore_keys
        body.collect! { |e| ObjectifiedHash.new(e) }
      elsif body
        true
      elsif !body
        false
      elsif body.nil?
        false
      else
        raise Channeltalk::Error.new("Couldn't parse a response body")
      end
    end

    class << self
      # The connection object being used to communicate with Channeltalk.
      # @return [Channeltalk::Connection] the connection
      def connection
        @@connection ||= Connection.new
      end

      # Assign a default connection object.
      # @param conn [Channeltalk::Connection] the connection
      # @return [Channeltalk::Connection] the connection
      def connection=(conn)
        @@connection = conn
      end
    end
  end
end
