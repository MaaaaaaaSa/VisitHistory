class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '北海道' },
    { id: 3, name: '宮城' },
    { id: 4, name: '東京' },
    { id: 5, name: '愛知' },
    { id: 6, name: '大阪' },
    { id: 7, name: '広島' },
    { id: 8, name: '高知' },
    { id: 9, name: '福岡' },
  ]

  include ActiveHash::Associations
  has_many :users
  end