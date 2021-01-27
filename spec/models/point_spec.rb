require 'rails_helper'

RSpec.describe Point, type: :model do
  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:tour).optional
      is_expected.to have_many(:views)
      is_expected.to have_many(:visits)
    end
  end
end
