json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :c_mesa, :c_user, :n_user
  json.url mesa_url(mesa, format: :json)
end
