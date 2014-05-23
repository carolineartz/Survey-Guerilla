class User < ActiveRecord::Base
  has_many :surveys
  has_many :participations

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(eamil)
    if user.password == password
        return user
    else
        return nil
    end
  end

end
