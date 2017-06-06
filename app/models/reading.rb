class Reading < ApplicationRecord
  belongs_to :station
  validates_presence_of :temp, :humidity
end
