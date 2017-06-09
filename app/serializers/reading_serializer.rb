class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :fahrenheit, :celcius, :humidity, :date, :time

  belongs_to :station
end
