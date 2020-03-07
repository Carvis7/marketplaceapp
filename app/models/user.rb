class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :plants
  has_many :conversations, :foreign_key => :sender_id


  def username
    email.split('@')[0].capitalize
  end
end
