require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'associations' do
    it 'should have these models' do
      is_expected.to have_many(:tours)
      is_expected.to have_many(:views)
      is_expected.to have_many(:followers)
      is_expected.to have_many(:followees)
    end
  end
end