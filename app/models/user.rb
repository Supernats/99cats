class User < ActiveRecord::Base
  attr_accessible :user_name, :password, :session_token

  before_validation :reset_session_token!
  validates :user_name, :password_digest, :session_token, :presence => true

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    reset_session_token
    self.save!
  end

  def password=(password)
    self.password_digest = BCrypt::Password(password).create!
  end
end