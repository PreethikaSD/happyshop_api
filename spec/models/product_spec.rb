require 'rails_helper'

RSpec.describe Product, type: :model do
  # Association test
  # ensure category model has a 1:m relationship with the product model
  it { should belong_to(:category) }
  # Validation tests
  it { should validate_presence_of(:name) }

  it { should validate_presence_of(:price) }

end


