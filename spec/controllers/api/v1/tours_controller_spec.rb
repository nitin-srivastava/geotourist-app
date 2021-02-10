require 'rails_helper'

RSpec.describe Api::V1::ToursController, type: :controller do
  let(:tour) { create(:tour) }

  before do
    allow_any_instance_of(Tour).to receive(:update_analytics).and_return(true)
  end

  describe 'PATCH update' do
    let(:view) { create(:view) }
    before do
      patch :update, params: { id: tour_id,
                               tour: { name: 'India Tour', description: 'This is tour of India' } }, format: :json
    end

    context 'when tour is not found' do
      let(:tour_id) { 10 }
      it { expect(response.status).to eq(404) }
    end

    context 'when tour is present' do
      let(:tour_id) { tour.id }
      it { expect(response.status).to eq(200) }
      it { expect(assigns[:tour].name).to eq("India Tour") }
      it { expect(assigns[:tour].description).to eq("This is tour of India") }
    end
  end
end
