# frozen_string_literal: true

module Channeltalk # :nodoc:
  module Api
    # users
    class User < Client
      class << self
        # Create or patch a user by memberId
        def create_user(member_id, params:)
          parse(JSON.parse(connection.put("users/@#{member_id}", params.to_json).body))
          # connection.patch("users/#{user_id}", params.to_json)
        end

        # Delete a user by memberId
        def delete_user(member_id)
          connection.delete("users/@#{member_id}")
        end
      end
    end
  end
end
