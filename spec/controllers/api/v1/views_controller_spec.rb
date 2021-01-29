require 'rails_helper'

RSpec.describe Api::V1::ViewsController, type: :controller do
  let(:tour) { create(:tour) }

  describe 'POST create' do
    before do
      post :create, params: {
          view: { full_address: 'Suite 273 823 Treutel Hills, Cherlynfort, PA 12002' }
      }, format: :json
    end

    it { expect(View.count).to eq(1) }
    it { expect(response.status).to eq(200) }
  end

  describe 'PATCH update' do
    let(:view) { create(:view) }
    before do
      patch :update, params: { id: view_id,
                               view: { full_address: 'Suite 273 823 Treutel Hills, Cherlynfort, PA 12002' }
      }, format: :json
    end

    context 'when view is not found' do
      let(:view_id) { 'abc20pqr' }
      it { expect(response.status).to eq(404) }
    end

    context 'when tour and view both present' do
      let(:view_id) { view.id }
      it { expect(response.status).to eq(200) }
      it { expect(assigns[:view].full_address).to eq("Suite 273 823 Treutel Hills, Cherlynfort, PA 12002") }
    end
  end
end
