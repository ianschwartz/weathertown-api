class Reading < ApplicationRecord
  belongs_to :station
  validates_presence_of :temp, :humidity

  def fahrenheit
    temp
  end

  def celcius
    ((temp - 32) * 5/9).round(2)
  end

  def date
    created_at.strftime("%a, %m/%d/%Y")
  end

  def time
    created_at.strftime("%H:%M")
  end
end
