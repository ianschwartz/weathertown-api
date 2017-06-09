class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :zipcode, :created_at

  has_many :readings
end
