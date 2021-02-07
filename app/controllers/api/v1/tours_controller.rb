class Api::V1::ToursController < Api::V1::ApplicationController
  before_action :set_tour

  def update
    if @tour.update(tour_params)
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def set_tour
    @tour = Tour.find_by(id: params[:id])
    render nothing: true, status: :not_found unless @tour.present?
  end

  def tour_params
    params.require(:tour).permit!
  end
end