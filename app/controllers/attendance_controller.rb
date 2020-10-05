class AttendanceController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attendances = Attendance.where(username: @user.username)
    @events = Event.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :position_id, :member_points, :username, :password)
  end
end
