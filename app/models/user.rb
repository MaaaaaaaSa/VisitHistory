class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)\w{6,}\z/i }
  validates :name_kana, presence: true, format: { with: /\A[ァ-ヶ　ー]+\z/ }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area

  validates :area_id, numericality: { other_than: 1, message: "can't be blank"} 
end
