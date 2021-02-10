require 'rails_helper'

RSpec.describe View, type: :model do
  before do
    allow_any_instance_of(View).to receive(:update_analytics).and_return(true)
  end

  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:user).optional
      is_expected.to belong_to(:tour).optional
      is_expected.to belong_to(:point).optional
    end
  end

  describe '.add_random_views' do
    before do
      create(:point)
      View.add_random_views
    end

    it 'should have valid view' do
      expect(View.count).to eq(1)
    end
  end
end
