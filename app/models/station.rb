class Station < ApplicationRecord
  has_many :readings, dependent: :destroy

  validates_presence_of :name, :zipcode
end
