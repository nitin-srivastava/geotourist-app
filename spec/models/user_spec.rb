require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    allow_any_instance_of(User).to receive(:update_analytics).and_return(true)
  end

  describe 'associations' do
    it 'should have these models' do
      is_expected.to have_many(:tours)
      is_expected.to have_many(:views)
      is_expected.to have_many(:followers)
      is_expected.to have_many(:followees)
    end
  end

  describe '.update_random_user' do
    before do
      create(:user)
    end

    it 'should have return the true' do
      expect(User.update_random_user).to be_truthy
    end
  end
end