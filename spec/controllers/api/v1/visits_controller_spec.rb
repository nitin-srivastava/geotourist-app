require 'rails_helper'

RSpec.describe Api::V1::VisitsController, type: :controller do
  let(:point) { create(:point) }

  before do
    allow_any_instance_of(Visit).to receive(:update_analytics).and_return(true)
  end

  describe 'POST create' do
    before do
      allow_any_instance_of(Visit).to receive(:update_analytics).and_return(true)
      post :create, params: { visit: { point_id: point.id } }, format: :json
    end

    it { expect(response.status).to eq(200) }
    it { expect(Visit.count).to eq(1) }
    it { expect(Visit.last.point).to eq(point) }
  end
end
