class Put < ApplicationRecord
  belongs_to :user
  attribute :category, ActiveRecord::Type::Integer.new
  enum category:{
    "------":0,
    肉類: 1, 野菜類: 2, 海鮮類: 3, 飲料水類: 4, 調味料類: 5, 惣菜類: 6,
    冷蔵庫に入れるその他: 7 ,冷凍食品類: 8 ,アイス類: 9 ,氷類: 10 ,冷凍庫に入れるその他: 11
  }
  
  mount_uploader :image, ImageUploader
end
