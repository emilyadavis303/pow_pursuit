require 'rails_helper'

module OmniHelper
  def mock_auth_hash
    mock = OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      "provider" => "twitter",
      "uid"      => "12345",
      "credentials" => {
        "oauth_token"  => nil,
        "oauth_secret" => nil
        },
      "info" => {
        "name" => "Human"
        }
      })

    create_mock_user(mock)
  end

  def create_mock_user(mock)
    User.new do |user|
      user.provider     = mock.provider
      user.uid          = mock.uid
      user.name         = mock.info.name
      user.oauth_token  = mock.credentials.token
      user.oauth_secret = mock.credentials.secret
      user.save!
    end
  end
end
