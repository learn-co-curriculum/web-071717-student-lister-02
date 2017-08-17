require 'digest'
class User < ApplicationRecord

  has_secure_password
  
  # def authenticate(password)
  #   self.password_digest == Digest::SHA256.base64digest(password)
  # end
  #
  # def password=(password)
  #   hashed_pw = Digest::SHA256.base64digest(password)
  #
  #   self.password_digest = hashed_pw
  # end
end
