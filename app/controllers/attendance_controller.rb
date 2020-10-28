# frozen_string_literal: true

#  controller for attendance of specific users
class AttendanceController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attendances = Attendance.where(user_id: @user.id)
    @events = Event.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :position_id, :member_points, :username, :password)
  end
end
