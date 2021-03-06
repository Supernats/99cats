class User < ActiveRecord::Base
  attr_accessible :user_name, :password

  before_validation :ensure_session_token
  validates :user_name, :password_digest, :session_token, :presence => true
  validates :session_token, :user_name, :uniqueness => true

  def self.find_by_credentials(user_name, password)
    user = User.find_by_user_name(user_name)
    if user && user.is_password?(password)
      return user
    else
      nil
    end
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    reset_session_token
    self.save!
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  private

  def ensure_session_token
    self.session_token || self.reset_session_token
  end
end