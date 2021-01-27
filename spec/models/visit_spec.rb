require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:point)
    end
  end
end
