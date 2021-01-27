require 'rails_helper'

RSpec.describe Friendship, type: :model do
  describe 'associations' do
    it 'should have these models' do
      is_expected.to belong_to(:follower).class_name('User')
      is_expected.to belong_to(:followee).class_name('User')
    end
  end
end
