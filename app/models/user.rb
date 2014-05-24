class User < ActiveRecord::Base
  attr_reader :entered_password

  has_many :surveys
  has_many :participations

  validates :username, uniqueness: true, presence: true
  validates :entered_password, :length => { :minimum => 6 }
  validates :email, :uniqueness => true, :format => /.+@.+\..+/ # imperfect, but okay

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(pass)
    @entered_password = pass
    @password = Password.create(pass)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return user if user && (user.password == password)
    nil # either invalid email or wrong password
  end

end
