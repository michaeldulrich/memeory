class User < ApplicationRecord

  has_secure_password

  has_many :memes
  has_many :images

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :first_name,  :presence => true
  validates :last_name,   :presence => true
  validates :username,    :presence => true,
                          :uniqueness => true
  validates :email,       :presence => true,
                          :uniqueness => true,
                          :format => EMAIL_REGEX

  scope :sorted, lambda {order("username ASC")}

  def name
    "#{first_name} #{last_name}"
  end

end
