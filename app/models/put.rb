class Put < ApplicationRecord
  belongs_to :user
  attribute :category, ActiveRecord::Type::Integer.new
  enum category:{
    "------":0,
    冷蔵庫の肉類: 1, 冷蔵庫の野菜類: 2, 冷蔵庫の海鮮類: 3,
    冷蔵庫の果物類: 4,冷蔵庫のパン類: 5, 冷蔵庫の惣菜類: 6,
    冷蔵庫の乳製品類: 7, 冷蔵庫のデザート類: 8, 冷蔵庫の飲料類: 9,
    冷蔵庫の調味料類: 10, 冷蔵庫のその他: 11, 
    冷凍庫の肉類: 1, 冷凍庫の野菜類: 2, 冷凍庫の海鮮類: 3,
    冷凍庫の果物類: 4, 冷凍庫のパン類: 5, 冷凍庫の冷凍食品類: 6,
    冷凍庫の乳製品類: 7, 冷凍庫のデザート類: 8, 冷凍庫の飲料類: 9,
    冷凍庫の調味料類: 10, 冷凍庫のその他: 11
  }
  
  mount_uploader :image, ImageUploader
end
