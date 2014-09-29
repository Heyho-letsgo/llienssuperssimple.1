json.array!(@sousgroupes) do |sousgroupe|
  json.extract! sousgroupe, :id, :name, :principalgroupe_id
  json.url sousgroupe_url(sousgroupe, format: :json)
end
