class Put < ApplicationRecord
  belongs_to :user
  attribute :category, ActiveRecord::Type::Integer.new
  enum category:{
    "------":0,
    1番目: 1, 2番目: 2, 3番目: 3, 4番目: 4, 5番目: 5, 6番目: 6
  }
  
  mount_uploader :image, ImageUploader
end
