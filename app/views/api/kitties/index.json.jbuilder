json.array! @kitties.each do |kitty|
  json.name kitty["name"]
  json.description kitty["description"]
  json.url kitty["cfa_url"]
  json.temerament kitty["temperament"]
end