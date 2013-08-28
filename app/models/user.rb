class User < ActiveRecord::Base
  has_secure_password

  # has_many :user_connections_as_follower, :class_name => 'UserConnection', :foreign_key => :follower_id
  # has_many :user_connections_as_followee, :class_name => 'UserConnection', :foreign_key => :followee_id
  # has_many :followers, :through => :user_connections_as_followee, :source => :follower, :conditions => ['accepted_at IS NOT NULL']
  # has_many :following, :through => :user_connections_as_follower, :source => :followee, :conditions => ['accepted_at IS NOT NULL']

end
