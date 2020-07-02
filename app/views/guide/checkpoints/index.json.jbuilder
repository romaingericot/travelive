json.array! @checkpoints do |checkpoint|
  json.extract! checkpoint, :id, :name, :progress, :latitude, :longitude, :description
end
