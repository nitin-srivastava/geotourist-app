class Api::V1::PointsController < Api::ApplicationController
  before_action :set_point

  def update
    if @point.update(point_params)
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def set_point
    @point = Point.find_by(id: params[:id])
    render nothing: true, status: :not_found unless @point.present?
  end

  def point_params
    params.require(:point).permit!
  end
end