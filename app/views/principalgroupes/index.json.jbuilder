json.array!(@principalgroupes) do |principalgroupe|
  json.extract! principalgroupe, :id, :nom
  json.url principalgroupe_url(principalgroupe, format: :json)
end
