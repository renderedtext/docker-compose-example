json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :capacity
  json.url inventory_url(inventory, format: :json)
end
