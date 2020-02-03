json.array! @puts do |put|
  json.name put.name
  json.image put.image
  json.bestby_date_y put.bestby_date_y
  json.bestby_date_m put.bestby_date_m
  json.bestby_date_d put.bestby_date_d
  json.category put.category
end