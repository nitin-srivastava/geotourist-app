require 'rails_helper'

RSpec.describe Tour, type: :model do
  before do
    allow_any_instance_of(Tour).to receive(:update_analytics).and_return(true)
  end

  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:user).optional
      is_expected.to have_many(:views)
      is_expected.to have_many(:points)
    end
  end
end
