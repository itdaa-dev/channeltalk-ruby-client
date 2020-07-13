# frozen_string_literal: true

require "test_helper"

class Channeltalk::Api::UserTest < Minitest::Spec
  it "create user" do
    params = {
      profile: {
        "name": "itdaa tester",
        "mobileNumber": "+8201043241618",
        "email": "foo@bar.com"
      }
    }

    VCR.use_cassette("create_user") do
      response = Channeltalk::Api::User.create_user(56201, params: params)
      assert_equal "itdaa tester", response.user.name
    end
  end
end
