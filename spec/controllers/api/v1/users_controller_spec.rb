require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  let(:user) { create(:user) }

  before do
    allow_any_instance_of(User).to receive(:update_analytics).and_return(true)
  end

  describe 'PATCH update' do
    before do
      patch :update, params: { id: user_id,
                               user: { name: 'Gaurav Mittal', email: 'gaurav@geotourist.com' } }, format: :json
    end

    context 'when user is not found' do
      let(:user_id) { 10 }
      it { expect(response.status).to eq(404) }
    end

    context 'when user is present' do
      let(:user_id) { user.id }
      it { expect(response.status).to eq(200) }
      it { expect(assigns[:user].name).to eq('Gaurav Mittal') }
      it { expect(assigns[:user].email).to eq('gaurav@geotourist.com') }
    end
  end
end
