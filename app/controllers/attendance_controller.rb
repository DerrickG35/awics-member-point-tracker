# frozen_string_literal: true

#  controller for attendance of specific users
class AttendanceController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attendances = @user.attendances
    @events = @user.events
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :position_id, :member_points, :username, :password)
  end
end
