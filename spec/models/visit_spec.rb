require 'rails_helper'

RSpec.describe Visit, type: :model do
  before do
    allow_any_instance_of(Visit).to receive(:update_analytics).and_return(true)
  end

  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:point)
    end
  end
end
