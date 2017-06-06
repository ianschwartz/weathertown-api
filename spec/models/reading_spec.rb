require 'rails_helper'

RSpec.describe Reading, type: :model do
  it { should belong_to(:station) }
  it { should validate_presence_of(:temp) }
  it { should validate_presence_of(:humidity) }
end
