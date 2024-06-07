class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :full_name, length: { maximum: 50 }
  validates :body, length: { maximum: 80 }
  validate :valid_username

  def valid_username
    return unless self.will_save_change_to_username?

    errors.add(:username, "is already taken") if username.changed? User.exists?(username: username)

    restricted_username_list = %w[admin root dashboard analytics appearance settings preferences calender users]

    errors.add(:username, "is restricted to use") if restricted_username_list.include?(username)
  end
end
