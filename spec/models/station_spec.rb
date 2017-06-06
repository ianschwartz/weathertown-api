require 'rails_helper'

RSpec.describe Station, type: :model do
  it { should have_many(:readings).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:zipcode) }
end
