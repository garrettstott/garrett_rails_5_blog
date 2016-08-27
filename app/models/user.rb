class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :bio
  validates_uniqueness_of :email

  has_many :posts
  has_many :comments

  def user_name
    "#{self.first_name} #{self.last_name}"
  end
end
