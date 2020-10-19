# frozen_string_literal: true

#  controller for attendance of specific users
class AttendanceController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attendances = Attendance.where(username: @user.username)
    @events = Event.all
  end
end
