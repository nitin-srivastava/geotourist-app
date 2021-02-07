class Api::V1::ViewsController < Api::V1::ApplicationController
  before_action :set_view, only: :update

  def create
    @view = View.new(view_params)
    if @view.save
      @view.update_analytics
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
    if @view.update(view_params)
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def set_view
    @view = View.find_by(id: params[:id])
    render nothing: true, status: :not_found unless @view.present?
  end

  def view_params
    params.require(:view).permit!
  end
end
