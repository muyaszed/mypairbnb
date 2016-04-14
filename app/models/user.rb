class User < ActiveRecord::Base
  # attr_accessor :avatar
  include Clearance::User
   has_many :authentications, :dependent => :destroy
   has_many :lists, :dependent => :destroy
   has_many :reservations, :dependent => :destroy
   mount_uploader :avatar, AvatarUploader

  def self.create_with_auth_and_hash(authentication,auth_hash)
    create! do |u|
      u.firstname = auth_hash["info"]["name"]
      u.email = auth_hash["extra"]["raw_info"]["email"]
      u.authentications<<(authentication)
    end
  end

  def fb_token
    x = self.authentications.where(:provider => :facebook).first
    return x.token unless x.nil?
  end

  def password_optional?
    true
  end

  
end
