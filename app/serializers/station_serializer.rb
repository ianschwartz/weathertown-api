class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :zipcode, :created_by, :created_at, :updated_at

  has_many :readings
end
