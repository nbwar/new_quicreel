class User < ActiveRecord::Base
  has_secure_password

  # has_many :user_connections_as_follower, :class_name => 'UserConnection', :foreign_key => :follower_id
  # has_many :user_connections_as_followee, :class_name => 'UserConnection', :foreign_key => :followee_id
  # has_many :followers, :through => :user_connections_as_followee, :source => :follower, :conditions => ['accepted_at IS NOT NULL']
  # has_many :following, :through => :user_connections_as_follower, :source => :followee, :conditions => ['accepted_at IS NOT NULL']

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
