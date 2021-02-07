class Api::V1::VisitsController < Api::V1::ApplicationController

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:point_id)
  end
end
