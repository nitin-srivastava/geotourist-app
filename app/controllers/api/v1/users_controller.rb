class Api::V1::UsersController < Api::V1::ApplicationController
  before_action :set_user

  def update
    if @user.update(user_params)
      @user.update_analytics
      render nothing: true, status: :ok
    else
      render nothing: true, status: :bad_request
    end
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
    render nothing: true, status: :not_found unless @user.present?
  end

  def user_params
    params.require(:user).permit!
  end
end