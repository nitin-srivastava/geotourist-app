require 'rails_helper'

RSpec.describe View, type: :model do
  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:user).optional
      is_expected.to belong_to(:tour).optional
      is_expected.to belong_to(:point).optional
    end
  end
end
