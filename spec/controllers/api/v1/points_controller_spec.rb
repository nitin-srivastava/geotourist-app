require 'rails_helper'

RSpec.describe Api::V1::PointsController, type: :controller do
  let(:point) { create(:point) }

  describe 'PATCH update' do
    before do
      patch :update, params: { id: point_id,
                               point: { name: 'Test point', description: 'This is point description' } }, format: :json
    end

    context 'when point is not found' do
      let(:point_id) { 10 }
      it { expect(response.status).to eq(404) }
    end

    context 'when point is present' do
      let(:point_id) { point.id }
      it { expect(response.status).to eq(200) }
      it { expect(assigns[:point].name).to eq('Test point') }
      it { expect(assigns[:point].description).to eq('This is point description') }
    end
  end
end
