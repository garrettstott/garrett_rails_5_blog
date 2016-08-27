class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  def user_name
    user = User.find(self.user_id)
    "#{user.first_name} #{user.last_name}"
  end
end
