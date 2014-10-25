class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => '300x300>', :thumb => '100x100>'}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :favorites
  has_many :resorts, through: :favorites

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider     = auth["provider"]
      user.uid          = auth["uid"]
      user.name         = auth["info"]["name"]
      user.oauth_token  = auth["credentials"]["token"]
      user.oauth_secret = auth["credentials"]["secret"]
    end
  end

  def tweet(tweet)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["consumer_key"]
      config.consumer_secret     = ENV["consumer_secret"]
      config.access_token        = oauth_token
      config.access_token_secret = oauth_secret
    end

    client.update(tweet)
  end
end
