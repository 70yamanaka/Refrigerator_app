FactoryBot.define do
  factory :put do
    image {"hoge.jpeg"}
    bestby_date_y {"2020年"}
    bestby_date_m {"1月"}
    bestby_date_d {"1日"}
    category {"冷蔵庫の肉類"}
    count {"1"}
    name {"豚肉"}
    memo {"メモ"}
    user          {"test"}
    user_id       {"1"} 
  end
end