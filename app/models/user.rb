class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :conference, optional: true
  has_many :participations
  has_many :slots, through: :participations
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  
  def email_required?
    false
  end
end
