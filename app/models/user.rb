class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true,
                    :format => { with: VALID_EMAIL_REGEX, message: "Email format invalid" }
end
